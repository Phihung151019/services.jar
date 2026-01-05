.class public Lcom/android/server/display/config/HysteresisLevels;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

.field public static final DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

.field public static final DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

.field public static final DEFAULT_SCREEN_THRESHOLD_LEVELS:[F


# instance fields
.field public final mBrighteningThresholdLevels:[F

.field public final mBrighteningThresholdsPercentages:[F

.field public final mDarkeningThresholdLevels:[F

.field public final mDarkeningThresholdsPercentages:[F

.field public final mMinBrightening:F

.field public final mMinDarkening:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    sput-object v2, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    const/high16 v2, 0x43480000    # 200.0f

    new-array v4, v1, [F

    aput v2, v4, v3

    sput-object v4, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    const/4 v4, 0x0

    new-array v5, v1, [F

    aput v4, v5, v3

    sput-object v5, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    new-array v5, v1, [F

    aput v4, v5, v3

    sput-object v5, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

    new-array v4, v1, [F

    aput v0, v4, v3

    sput-object v4, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

    new-array v0, v1, [F

    aput v2, v0, v3

    sput-object v0, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

    const-string v0, "HysteresisLevels"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>([F[F[F[FFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0, p1}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat(F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdsPercentages:[F

    invoke-static {v0, p2}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat(F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdsPercentages:[F

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p3}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat(F[F)[F

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdLevels:[F

    invoke-static {p1, p4}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat(F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdLevels:[F

    iput p5, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinDarkening:F

    iput p6, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinBrightening:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Mismatch between hysteresis array lengths."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FZ)Lcom/android/server/display/config/HysteresisLevels;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/config/Thresholds;->brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    move-object v2, v1

    :goto_0
    if-nez p0, :cond_1

    :goto_1
    move v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p7

    move-object p0, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/config/Thresholds;->darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    goto :goto_1

    :goto_2
    invoke-static/range {v2 .. v7}, Lcom/android/server/display/config/HysteresisLevels;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;

    move-result-object p7

    move p2, p3

    move-object p4, p6

    move p1, v3

    move-object p3, v5

    move p5, v7

    invoke-static/range {p0 .. p5}, Lcom/android/server/display/config/HysteresisLevels;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz v2, :cond_2

    iget-object p3, v2, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/math/BigDecimal;->floatValue()F

    move-result p3

    move v6, p3

    goto :goto_3

    :cond_2
    move v6, p2

    :goto_3
    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p2

    :cond_3
    move v5, p2

    new-instance v0, Lcom/android/server/display/config/HysteresisLevels;

    iget-object p0, p7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, [F

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, [F

    iget-object p0, p7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, [F

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, [F

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/config/HysteresisLevels;-><init>([F[F[F[FFF)V

    return-object v0
.end method

.method public static getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;
    .locals 2

    if-eqz p0, :cond_3

    iget-object p1, p0, Lcom/android/server/display/config/BrightnessThresholds;->brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

    if-eqz p1, :cond_3

    iget-object p2, p1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    :cond_0
    iget-object p1, p1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/display/config/BrightnessThresholds;->brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

    iget-object p1, p0, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p2, p1, [F

    new-array p1, p1, [F

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_2

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p5, p5, 0x1

    check-cast v0, Lcom/android/server/display/config/ThresholdPoint;

    iget-object v1, v0, Lcom/android/server/display/config/ThresholdPoint;->threshold:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    aput v1, p2, p4

    iget-object v0, v0, Lcom/android/server/display/config/ThresholdPoint;->percentage:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    aput v0, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static setArrayFormat(F[F)[F
    .locals 4

    array-length v0, p1

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-le v0, v2, :cond_0

    aget v3, p1, v2

    div-float/2addr v3, p0

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBrighteningThreshold(F)F
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getBrighteningThresholdLevels()[F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdLevels:[F

    return-object p0
.end method

.method public getBrighteningThresholdsPercentages()[F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdsPercentages:[F

    return-object p0
.end method

.method public getDarkeningThreshold(F)F
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getDarkeningThresholdLevels()[F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdLevels:[F

    return-object p0
.end method

.method public getDarkeningThresholdsPercentages()[F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdsPercentages:[F

    return-object p0
.end method

.method public getMinBrightening()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinBrightening:F

    return p0
.end method

.method public getMinDarkening()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinDarkening:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HysteresisLevels {\n    mBrighteningThresholdLevels="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdLevels:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mBrighteningThresholdsPercentages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdsPercentages:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mMinBrightening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinBrightening:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mDarkeningThresholdLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdLevels:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mDarkeningThresholdsPercentages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdsPercentages:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mMinDarkening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinDarkening:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
