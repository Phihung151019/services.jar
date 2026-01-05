.class public final Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBuffer:Lcom/android/server/display/utils/RollingBuffer;

.field public final mHorizon:I

.field public final mIntercept:F

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p3, :cond_1

    iput-object p1, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mTag:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mHorizon:I

    new-instance p1, Lcom/android/server/display/utils/RollingBuffer;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/16 p3, 0x32

    iput p3, p1, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    new-array v0, p3, [J

    iput-object v0, p1, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    new-array p3, p3, [F

    iput-object p3, p1, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    const/4 p3, 0x0

    iput p3, p1, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iput p3, p1, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iput p3, p1, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    iput-object p1, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_0

    iput p2, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "intercept must be a non-negative number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "horizon must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addValue(JF)V
    .locals 7

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->truncateOldValues(J)V

    iget-object p0, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    if-lt v0, v1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [J

    new-array v3, v1, [F

    iget-object v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    sub-int/2addr v0, v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    sub-int/2addr v4, v5

    invoke-static {v0, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v5, v4

    invoke-static {v0, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    iget v4, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget v5, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    sub-int/2addr v4, v5

    invoke-static {v0, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    iput v6, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    iput-object v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iput-object v3, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    iget v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    aput-wide p1, v0, v1

    iget-object p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mSize:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/display/utils/RollingBuffer;->mEnd:I

    iget p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    return-void
.end method

.method public final getEstimate(J)F
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->truncateOldValues(J)V

    iget-object v1, v0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    iget v2, v1, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-nez v2, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_0
    new-array v3, v2, [F

    iget-object v4, v1, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v6

    aget-wide v6, v4, v6

    const/4 v4, 0x1

    const/4 v8, 0x0

    move v9, v4

    move v10, v8

    :goto_0
    iget v11, v0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x447a0000    # 1000.0f

    if-ge v9, v2, :cond_1

    iget-object v14, v1, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    invoke-virtual {v1, v9}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v15

    aget-wide v14, v14, v15

    sub-long/2addr v14, v6

    long-to-float v14, v14

    div-float/2addr v14, v13

    mul-float v13, v14, v12

    mul-float/2addr v13, v14

    mul-float v15, v11, v14

    add-float/2addr v15, v13

    mul-float/2addr v12, v10

    mul-float/2addr v12, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v12

    sub-float/2addr v15, v11

    add-int/lit8 v10, v9, -0x1

    aput v15, v3, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v14

    goto :goto_0

    :cond_1
    const-wide/16 v14, 0x64

    add-long v14, p1, v14

    sub-long/2addr v14, v6

    long-to-float v0, v14

    div-float/2addr v0, v13

    mul-float v6, v0, v12

    mul-float/2addr v6, v0

    mul-float/2addr v0, v11

    add-float/2addr v0, v6

    mul-float/2addr v12, v10

    mul-float/2addr v12, v10

    mul-float/2addr v11, v10

    add-float/2addr v11, v12

    sub-float/2addr v0, v11

    add-int/lit8 v6, v2, -0x1

    aput v0, v3, v6

    move v0, v8

    move v6, v0

    :goto_1
    if-ge v5, v2, :cond_2

    iget-object v7, v1, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    invoke-virtual {v1, v5}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v9

    aget v7, v7, v9

    aget v9, v3, v5

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    add-float/2addr v0, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    cmpl-float v2, v0, v8

    if-nez v2, :cond_3

    iget v0, v1, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v0, v4

    iget-object v2, v1, Lcom/android/server/display/utils/RollingBuffer;->mValues:[F

    invoke-virtual {v1, v0}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v0

    aget v0, v2, v0

    return v0

    :cond_3
    div-float/2addr v6, v0

    return v6
.end method

.method public final truncateOldValues(J)V
    .locals 4

    iget v0, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mHorizon:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    iget-object p0, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    iget v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v1

    aget-wide v0, v0, v1

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    invoke-virtual {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v3

    aget-wide v2, v2, v3

    cmp-long v2, v2, p1

    if-lez v2, :cond_2

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, -0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/display/utils/RollingBuffer;->offsetOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/utils/RollingBuffer;->mStart:I

    iget v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/display/utils/RollingBuffer;->mCount:I

    iget-object p0, p0, Lcom/android/server/display/utils/RollingBuffer;->mTimes:[J

    aput-wide p1, p0, v0

    return-void
.end method
