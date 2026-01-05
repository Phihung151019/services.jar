.class public final Lcom/android/server/accessibility/gestures/Swipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBaseTime:J

.field public mBaseX:F

.field public mBaseY:F

.field public final mDirections:[I

.field public final mGestureDetectionThresholdPixels:F

.field public final mMinPixelsBetweenSamplesX:F

.field public final mMinPixelsBetweenSamplesY:F

.field public mPreviousGestureX:F

.field public mPreviousGestureY:F

.field public final mStrokeBuffer:Ljava/util/ArrayList;

.field public final mTouchSlop:I


# direct methods
.method public constructor <init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V
    .locals 0

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-direct {p0, p4, p1, p3, p5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureManifold;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureManifold;)V
    .locals 0

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureManifold;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureManifold;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0x64

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/16 p3, 0xa

    int-to-float p3, p3

    const/4 p4, 0x5

    invoke-static {p4, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p3, p4

    iput p3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    iget p3, p2, Landroid/util/DisplayMetrics;->xdpi:F

    const p4, 0x40228f5c    # 2.54f

    div-float/2addr p3, p4

    iget p2, p2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p2, p4

    const/high16 p4, 0x3e800000    # 0.25f

    mul-float/2addr p3, p4

    iput p3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    mul-float/2addr p2, p4

    iput p2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mTouchSlop:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/Swipe;->clear()V

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


# virtual methods
.method public final clear()V
    .locals 3

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method public final getGestureName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Swipe "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    aget v1, p0, v1

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    :cond_0
    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    iget v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    sub-float v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    iget-wide v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    sub-long v12, v6, v12

    sget-boolean v14, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    iget v15, v0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    if-eqz v14, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/Swipe;->getGestureName()Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move/from16 v17, v9

    const-string/jumbo v9, "moveDelta:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mGestureDetectionThreshold: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v16, v8

    move/from16 v17, v9

    :goto_0
    iget v8, v0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    const/4 v14, 0x3

    if-nez v8, :cond_6

    iget v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mTouchSlop:I

    move-wide/from16 v18, v10

    int-to-double v9, v8

    cmpg-double v8, v18, v9

    if-gez v8, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_7

    iget v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    sub-float v8, v4, v8

    iget v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    sub-float v9, v5, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpl-float v10, v10, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    if-lez v10, :cond_3

    cmpg-float v8, v8, v21

    if-gez v8, :cond_2

    move/from16 v8, v20

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    cmpg-float v8, v9, v21

    if-gez v8, :cond_4

    const/4 v8, 0x2

    goto :goto_1

    :cond_4
    move v8, v14

    :goto_1
    iget-object v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    aget v9, v9, v20

    if-eq v8, v9, :cond_5

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_5
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/PointF;

    iget v10, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    iget v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-wide/from16 v18, v10

    :cond_7
    :goto_2
    float-to-double v8, v15

    cmpl-double v8, v18, v8

    if-lez v8, :cond_8

    iput v4, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    iput v5, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    iput-wide v6, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    const/4 v11, 0x1

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_3

    :cond_8
    iget v6, v0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    if-nez v6, :cond_9

    const-wide/16 v6, 0x96

    cmp-long v6, v12, v6

    if-lez v6, :cond_a

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_9
    const/4 v11, 0x1

    if-ne v6, v11, :cond_a

    const-wide/16 v6, 0x15e

    cmp-long v6, v12, v6

    if-lez v6, :cond_a

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_a
    :goto_3
    iget v1, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v1, v16, v1

    if-gez v1, :cond_c

    iget v1, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v1, v17, v1

    if-ltz v1, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    return-void

    :cond_c
    :goto_5
    iput v4, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    iput v5, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

.method public final onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget v4, v0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v8, v8, v10

    if-gez v8, :cond_1

    iget v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v8, v9, v8

    if-ltz v8, :cond_2

    :cond_1
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v4, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x2

    if-ge v4, v7, :cond_3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    move v12, v6

    move/from16 v17, v12

    move v13, v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    iget-object v6, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v12, v6, :cond_6

    iget-object v6, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/graphics/PointF;

    if-lez v13, :cond_4

    int-to-float v6, v13

    div-float v18, v14, v6

    div-float v6, v15, v6

    new-instance v9, Landroid/graphics/PointF;

    mul-float v19, v16, v18

    const/16 v20, 0x0

    iget v10, v8, Landroid/graphics/PointF;->x:F

    add-float v10, v19, v10

    mul-float v16, v16, v6

    iget v7, v8, Landroid/graphics/PointF;->y:F

    add-float v7, v16, v7

    invoke-direct {v9, v10, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iget v7, v11, Landroid/graphics/PointF;->x:F

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v10

    iget v10, v11, Landroid/graphics/PointF;->y:F

    iget v5, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v5

    mul-float v5, v7, v7

    mul-float v21, v10, v10

    add-float v5, v21, v5

    move/from16 v21, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    div-float/2addr v7, v5

    div-float/2addr v10, v5

    mul-float v18, v18, v7

    mul-float v6, v21, v10

    add-float v6, v6, v18

    cmpg-float v5, v6, v20

    if-gez v5, :cond_5

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v9

    move/from16 v14, v20

    move v15, v14

    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    const/16 v20, 0x0

    :cond_5
    :goto_1
    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v6, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget v6, v11, Landroid/graphics/PointF;->y:F

    iget v7, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    mul-float v7, v5, v5

    mul-float v9, v6, v6

    add-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v7, v9

    add-int/lit8 v13, v13, 0x1

    div-float/2addr v5, v7

    add-float/2addr v14, v5

    div-float/2addr v6, v7

    add-float/2addr v15, v6

    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v7

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    const/16 v20, 0x0

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/Swipe;->getGestureName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "path="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    array-length v7, v6

    add-int/lit8 v7, v7, 0x1

    if-eq v5, v7, :cond_8

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_8
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_e

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v7, v7, v11

    if-lez v7, :cond_a

    cmpg-float v7, v10, v20

    if-gez v7, :cond_9

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    move/from16 v7, v17

    goto :goto_3

    :cond_a
    cmpg-float v7, v9, v20

    if-gez v7, :cond_b

    const/4 v7, 0x2

    goto :goto_3

    :cond_b
    const/4 v7, 0x3

    :goto_3
    aget v9, v6, v5

    if-eq v7, v9, :cond_d

    sget-boolean v4, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/Swipe;->getGestureName()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Found direction "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " when expecting "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v6, v5

    invoke-static {v5}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_d
    move v5, v8

    goto :goto_2

    :cond_e
    sget-boolean v4, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/Swipe;->getGestureName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Completed."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

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

    const-string v1, ", mBaseX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mGestureDetectionThreshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinPixelsBetweenSamplesX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinPixelsBetweenSamplesY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
