.class public final Lcom/android/server/accessibility/gestures/MultiFingerSwipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBase:[Landroid/graphics/PointF;

.field public mCurrentFingerCount:I

.field public final mDirection:I

.field public final mMinPixelsBetweenSamplesX:F

.field public final mMinPixelsBetweenSamplesY:F

.field public final mPointerIds:[I

.field public final mPreviousGesturePoint:[Landroid/graphics/PointF;

.field public final mStrokeBuffers:[Ljava/util/ArrayList;

.field public final mTargetFingerCount:I

.field public mTargetFingerCountReached:Z

.field public final mTouchSlop:I


# direct methods
.method public constructor <init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p3, v0, p5}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    new-array p3, p1, [I

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    new-array p3, p1, [Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    new-array p3, p1, [Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    new-array p1, p1, [Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    const p3, 0x40228f5c    # 2.54f

    div-float/2addr p2, p3

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p1, p3

    const/high16 p3, 0x3e800000    # 0.25f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    invoke-static {p4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTouchSlop:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->clear()V

    return-void
.end method

.method public static directionToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "Unknown Direction"

    return-object p0

    :cond_0
    const-string/jumbo p0, "down"

    return-object p0

    :cond_1
    const-string/jumbo p0, "up"

    return-object p0

    :cond_2
    const-string/jumbo p0, "right"

    return-object p0

    :cond_3
    const-string/jumbo p0, "left"

    return-object p0
.end method

.method public static toDirection(FF)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    cmpg-float p0, p1, v1

    if-gez p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public final clear()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    :goto_0
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v3, v1, v0

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v1, v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v2, v1, v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method public final getGestureName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-finger Swipe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->directionToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    const/4 v1, 0x3

    if-lez v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    invoke-static {p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-gez v3, :cond_1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v5, v0, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_2
    aput v3, v0, v4

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v5, v0, v3

    if-ltz v5, :cond_4

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object p1, p1, v4

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object p0, p0, v4

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iput v2, p0, Landroid/graphics/PointF;->y:F

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_5
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v5, 0x0

    :goto_0
    iget v6, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v5, v6, :cond_e

    iget-object v7, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v8, v7, v5

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    :cond_0
    :goto_1
    move/from16 v16, v5

    goto/16 :goto_3

    :cond_1
    sget-boolean v8, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Processing move on finger "

    invoke-static {v5, v10, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    aget v7, v7, v5

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    if-gez v7, :cond_3

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Finger "

    const-string v8, " not found in this event. skipping."

    invoke-static {v5, v7, v8, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    const/4 v10, 0x0

    cmpg-float v11, v9, v10

    const/4 v12, 0x3

    if-ltz v11, :cond_d

    cmpg-float v10, v7, v10

    if-gez v10, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v10, v10, v5

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v11, v11, v5

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget-object v13, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v13, v13, v5

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float v13, v9, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    iget-object v15, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v15, v15, v5

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float v15, v7, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v5

    float-to-double v4, v15

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "moveDelta:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v8, v0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    iget v13, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    const/4 v14, 0x1

    if-nez v8, :cond_9

    iget v8, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTouchSlop:I

    mul-int/2addr v8, v6

    int-to-double v10, v8

    cmpg-double v4, v4, v10

    if-gez v4, :cond_6

    goto :goto_3

    :cond_6
    iget v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    if-eq v4, v6, :cond_7

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_7
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v4, v4, v16

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    invoke-static {v9, v7}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v4

    if-eq v4, v13, :cond_8

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_8
    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_c

    iget-object v5, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    new-instance v7, Landroid/graphics/PointF;

    iget-object v8, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v8, v8, v4

    invoke-direct {v7, v8}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    if-ne v8, v14, :cond_c

    iget-object v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v4, v4, v16

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float v5, v9, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v7, v4

    invoke-static {v5, v4}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v4

    if-eq v4, v13, :cond_a

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_a
    iget v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v4, v10, v4

    if-gez v4, :cond_b

    iget v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v4, v11, v4

    if-ltz v4, :cond_c

    :cond_b
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v4, v4, v16

    iput v9, v4, Landroid/graphics/PointF;->x:F

    iput v7, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v4, v4, v16

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    add-int/lit8 v5, v16, 0x1

    goto/16 :goto_0

    :cond_d
    :goto_4
    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_e
    return-void
.end method

.method public final onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    const/4 v2, 0x3

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v0, v4, :cond_1

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    if-ne v0, v1, :cond_2

    iput-boolean v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    :cond_2
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-gez v1, :cond_3

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_3
    iget v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    sub-int/2addr v4, v3

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v5, v3, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_4
    aput v1, v3, v4

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v5, v1, v3

    if-ltz v5, :cond_6

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object p1, p1, v4

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object p0, p0, v4

    iput v1, p0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void

    :cond_6
    :goto_0
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_7
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-ltz v5, :cond_6

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object p1, p1, v2

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float p1, v3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object p2, p2, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float p2, v0, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float p1, p1, p3

    if-gez p1, :cond_5

    iget p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_4

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object p0, p0, v2

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 10

    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-gez v4, :cond_1

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-ltz v7, :cond_d

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v6, v6, v8

    if-gez v6, :cond_3

    iget v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v6, v7, v6

    if-ltz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v4, v6, v4

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v3, v0

    :goto_0
    iget v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    const/4 v5, 0x2

    if-ge v3, v4, :cond_c

    sget-boolean v4, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Recognizing finger: "

    invoke-static {v3, v7, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Too few points."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_6
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v5, v5, v3

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "path="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move v4, v0

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v4, v6, :cond_a

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v6

    invoke-static {v8, v7}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v6

    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    if-eq v6, v7, :cond_8

    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found direction "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->directionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " when expecting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->directionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_a
    sget-boolean v4, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Completed."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_d
    :goto_1
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-string v1, ", mBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMinPixelsBetweenSamplesX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinPixelsBetweenSamplesY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
