.class public abstract Lcom/android/server/display/brightness/BrightnessUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sScreenExtendedBrightnessRangeMaximum:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    const v2, 0x10e0069

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    return-void
.end method

.method public static clampAbsoluteBrightness(F)F
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public static constructDisplayBrightnessState(IFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    new-instance p0, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iput-object p2, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    new-instance p1, Lcom/android/server/display/DisplayBrightnessState;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-object p1
.end method

.method public static getBrightnessDynamicRampRatePair(FFFFF)Landroid/util/Pair;
    .locals 9

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const v2, 0x3b83126f    # 0.004f

    if-gtz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, p0

    :goto_0
    cmpg-float p0, p1, v0

    if-gtz p0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, p1

    :goto_1
    cmpg-float p0, p2, v0

    const p1, 0x3f666666    # 0.9f

    if-gtz p0, :cond_2

    move v6, p1

    goto :goto_2

    :cond_2
    move v6, p2

    :goto_2
    cmpg-float p0, p3, v0

    if-gtz p0, :cond_3

    move v5, p1

    goto :goto_3

    :cond_3
    move v5, p3

    :goto_3
    const-string/jumbo p0, "sys.display.transition.weight"

    const/16 p1, 0xb4

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo p0, "sys.display.transition.weight.hbm"

    const/16 p1, 0xf

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    cmpg-float p1, v3, v4

    const/high16 p2, 0x7fc00000    # Float.NaN

    if-gez p1, :cond_5

    const v8, 0xea60

    invoke-static/range {v3 .. v8}, Lcom/android/server/display/brightness/BrightnessUtils;->getDynamicRampRate(FFFFII)F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p3, v4, p3

    if-lez p3, :cond_4

    const/16 v8, 0x7530

    move v7, p0

    invoke-static/range {v3 .. v8}, Lcom/android/server/display/brightness/BrightnessUtils;->getDynamicRampRate(FFFFII)F

    move-result p2

    :cond_4
    move p0, p2

    move p2, p1

    goto :goto_4

    :cond_5
    move p0, p2

    :goto_4
    mul-float/2addr p2, p4

    mul-float/2addr p0, p4

    new-instance p1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getDynamicRampRate(FFFFII)F
    .locals 2

    int-to-double v0, p4

    div-float/2addr p1, p0

    div-float/2addr p2, p3

    mul-float/2addr p2, p1

    float-to-double p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    const-wide p0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p0

    int-to-double p0, p5

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmpl-double p2, p0, p2

    if-lez p2, :cond_0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    div-double/2addr p2, p0

    double-to-float p0, p2

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    return p0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method public static isValidBrightnessValue(F)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    sget v0, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
