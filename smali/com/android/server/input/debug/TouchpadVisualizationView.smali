.class public final Lcom/android/server/input/debug/TouchpadVisualizationView;
.super Landroid/view/View;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCenterPointPaint:Landroid/graphics/Paint;

.field public final mHardwareStateHistory:Ljava/util/ArrayDeque;

.field public final mOvalFillPaint:Landroid/graphics/Paint;

.field public final mOvalStrokePaint:Landroid/graphics/Paint;

.field public final mPressureTextPaint:Landroid/graphics/Paint;

.field public mScaleFactor:F

.field public final mTempFingerStatesByTrackingId:Ljava/util/Map;

.field public final mTempOvalRect:Landroid/graphics/RectF;

.field public final mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

.field public final mTracePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/TouchpadHardwareProperties;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempFingerStatesByTrackingId:Ljava/util/Map;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTracePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v2, 0xff

    invoke-virtual {p1, v2, v1, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mCenterPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static translateRange(FFFF)F
    .locals 0

    sub-float/2addr p3, p0

    sub-float/2addr p1, p0

    div-float/2addr p3, p1

    const/4 p0, 0x0

    sub-float/2addr p2, p0

    mul-float/2addr p2, p3

    add-float/2addr p2, p0

    return p2
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateX(F)F

    move-result v7

    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateY(F)F

    move-result v8

    iget-object v9, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v9}, Lcom/android/server/input/TouchpadHardwareProperties;->getOrientationMaximum()F

    move-result v9

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getOrientation()F

    move-result v11

    invoke-static {v3, v9, v10, v11}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFF)F

    move-result v9

    iget-object v10, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v10}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v10

    cmpl-float v10, v10, v3

    if-nez v10, :cond_2

    const/high16 v10, 0x423c0000    # 47.0f

    goto :goto_2

    :cond_2
    iget-object v10, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v10}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v10

    :goto_2
    iget-object v11, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v11}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v11

    cmpl-float v11, v11, v3

    if-nez v11, :cond_3

    const/high16 v11, 0x42340000    # 45.0f

    goto :goto_3

    :cond_3
    iget-object v11, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v11}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v11

    :goto_3
    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getTouchMajor()F

    move-result v12

    iget v13, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    mul-float/2addr v12, v13

    div-float/2addr v12, v11

    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getTouchMinor()F

    move-result v11

    iget v13, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    mul-float/2addr v11, v13

    div-float/2addr v11, v10

    const/high16 v10, 0x437f0000    # 255.0f

    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v13

    invoke-static {v3, v6, v10, v13}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFF)F

    move-result v10

    iget-object v13, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    float-to-int v10, v10

    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, v9, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v9, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v11, v10

    sub-float v13, v7, v11

    iput v13, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v7

    iput v11, v9, Landroid/graphics/RectF;->right:F

    div-float/2addr v12, v10

    sub-float v11, v8, v12

    iput v11, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v12

    iput v8, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v9, "Ps: %.2f"

    invoke-static {v8, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v11, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempFingerStatesByTrackingId:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_4
    if-ge v3, v2, :cond_5

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempFingerStatesByTrackingId:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getTrackingId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/input/TouchpadFingerState;

    if-nez v6, :cond_6

    move-object v8, p1

    goto :goto_5

    :cond_6
    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateX(F)F

    move-result v11

    invoke-virtual {v5}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateY(F)F

    move-result v12

    invoke-virtual {v6}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateX(F)F

    move-result v9

    invoke-virtual {v6}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateY(F)F

    move-result v10

    iget-object v13, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTracePaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mCenterPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v12, p1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object p1, v8

    goto :goto_4

    :cond_7
    :goto_6
    return-void
.end method

.method public final translateX(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getRight()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFF)F

    move-result p0

    return p0
.end method

.method public final translateY(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getBottom()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFF)F

    move-result p0

    return p0
.end method
