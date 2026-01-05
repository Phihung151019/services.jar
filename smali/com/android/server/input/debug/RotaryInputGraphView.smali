.class public final Lcom/android/server/input/debug/RotaryInputGraphView;
.super Landroid/view/View;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final MAX_GESTURE_TIME:J

.field public static final MAX_SHOWN_TIME_INTERVAL:J


# instance fields
.field public final mDefaultLocale:Ljava/util/Locale;

.field public final mDm:Landroid/util/DisplayMetrics;

.field public mFrameCenterPosition:F

.field public final mFrameCenterToBorderDistance:F

.field public final mFramePaint:Landroid/graphics/Paint;

.field public final mFrameTextPaint:Landroid/graphics/Paint;

.field public final mGraphLinePaint:Landroid/graphics/Paint;

.field public final mGraphPointPaint:Landroid/graphics/Paint;

.field public final mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

.field public final mScaledVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_GESTURE_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    new-instance v4, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-direct {v4}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;-><init>()V

    iput-object v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iput v5, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result p1

    iput p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mScaledVerticalScrollFactor:F

    const p0, -0x408be4b9

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x2

    invoke-static {p0, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p0, -0xff01

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0xa

    invoke-static {p1, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    invoke-static {p1, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x4

    invoke-static {p0, v4}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public static applyDimensionSp(ILandroid/util/DisplayMetrics;)I
    .locals 1

    const/4 v0, 0x2

    int-to-float p0, p0

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/16 v1, 0xa

    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v8, v1, v7

    add-int v1, v7, v8

    const/4 v9, 0x2

    div-int/lit8 v10, v1, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v7

    int-to-float v4, v1

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move v5, v3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v3, v10

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v11, v3

    int-to-float v3, v8

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v4

    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    invoke-static {v9, v2}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    iget v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    iget v5, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sub-int v4, v7, v2

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v9, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    iget v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sub-int v4, v10, v2

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v9, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    iget v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    iget v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sub-int/2addr v8, v2

    int-to-float v2, v8

    iget-object v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v9, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    iget v3, v2, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, v2, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    iget v4, v2, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    aget-object v3, v3, v4

    iget-wide v13, v3, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    iput v4, v2, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorIndex:I

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    iget-object v8, v2, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mReverseIterator:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;

    move v2, v9

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {v8}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v8}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    move/from16 v16, v9

    move v15, v10

    iget-wide v9, v5, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    sub-long v9, v13, v9

    long-to-int v9, v9

    iget v5, v5, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    move v6, v2

    move v10, v3

    sget-wide v2, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    move/from16 v17, v4

    move/from16 v18, v5

    int-to-long v4, v9

    sub-long v4, v2, v4

    long-to-float v4, v4

    long-to-float v2, v2

    div-float/2addr v4, v2

    mul-float/2addr v4, v12

    add-float v4, v4, v16

    iget v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    sub-float v5, v18, v2

    iget v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    div-float/2addr v5, v2

    sub-int v2, v15, v7

    int-to-float v2, v2

    mul-float/2addr v5, v2

    sub-float v5, v11, v5

    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    if-eqz v9, :cond_1

    int-to-float v2, v9

    sub-float/2addr v2, v6

    move v3, v2

    sget-wide v1, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_GESTURE_TIME:J

    long-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    int-to-float v2, v9

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v10, v15

    move/from16 v9, v16

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
