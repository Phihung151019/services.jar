.class public final Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mBrightness:F

.field public final mBrightnessOffset:F

.field public final mLowerBoundary:F

.field public final mLux:F

.field public final mUpperBoundary:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLux:F

    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mBrightness:F

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mBrightnessOffset:F

    const/high16 p2, 0x40200000    # 2.5f

    div-float p3, p1, p2

    const/high16 v0, 0x41200000    # 10.0f

    sub-float v1, p1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLowerBoundary:F

    mul-float/2addr p2, p1

    add-float/2addr p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mUpperBoundary:F

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLux:F

    iget p1, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLux:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLux:F

    iget p1, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLux:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLux:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public final isInSameBoundary(F)Z
    .locals 1

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLowerBoundary:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mUpperBoundary:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mBrightness:F

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mBrightnessOffset:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mBrightness:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mBrightnessOffset:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLowerBoundary:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mLux:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;->mUpperBoundary:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%5.1f -> %5.1f (%+6.1f) @ %6.1f < %6.1f < %6.1f"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
