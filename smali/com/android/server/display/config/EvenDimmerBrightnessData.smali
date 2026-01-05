.class public Lcom/android/server/display/config/EvenDimmerBrightnessData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final backlight:[F

.field public final backlightToBrightness:Landroid/util/Spline;

.field public final backlightToNits:Landroid/util/Spline;

.field public final brightness:[F

.field public final brightnessToBacklight:Landroid/util/Spline;

.field public final minLuxToNits:Landroid/util/Spline;

.field public final nits:[F

.field public final nitsToBacklight:Landroid/util/Spline;

.field public final transitionPoint:F


# direct methods
.method public constructor <init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->transitionPoint:F

    iput-object p2, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    iput-object p3, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlight:[F

    iput-object p4, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightness:[F

    iput-object p5, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    iput-object p6, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    iput-object p7, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightnessToBacklight:Landroid/util/Spline;

    iput-object p8, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    iput-object p9, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->minLuxToNits:Landroid/util/Spline;

    return-void
.end method

.method public static loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/EvenDimmerBrightnessData;
    .locals 14

    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerMode;->enabled:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerMode;->brightnessMapping:Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    :cond_4
    iget-object v1, v1, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    return-object v0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v6, v3, [F

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v7, v3, [F

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v8, v3, [F

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/config/BrightnessPoint;

    iget-object v5, v4, Lcom/android/server/display/config/BrightnessPoint;->nits:Ljava/math/BigDecimal;

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    aput v5, v6, v3

    iget-object v5, v4, Lcom/android/server/display/config/BrightnessPoint;->backlight:Ljava/math/BigDecimal;

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    aput v5, v7, v3

    iget-object v4, v4, Lcom/android/server/display/config/BrightnessPoint;->brightness:Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerMode;->transitionPoint:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerMode;->luxToMinimumNitsMap:Lcom/android/server/display/config/NitsMap;

    const-string v1, "EvenDimmerBrightnessData"

    if-nez p0, :cond_7

    const-string p0, "Invalid min lux to nits mapping"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    :cond_8
    iget-object p0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [F

    new-array v0, v0, [F

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v9, v2

    :goto_3
    if-ge v9, v4, :cond_b

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/display/config/Point;

    iget-object v11, v10, Lcom/android/server/display/config/Point;->value:Ljava/math/BigDecimal;

    invoke-virtual {v11}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    aput v11, v3, v2

    iget-object v10, v10, Lcom/android/server/display/config/Point;->nits:Ljava/math/BigDecimal;

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v10

    aput v10, v0, v2

    if-lez v2, :cond_a

    aget v10, v3, v2

    add-int/lit8 v11, v2, -0x1

    aget v12, v3, v11

    cmpg-float v10, v10, v12

    const-string v12, " < "

    if-gez v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "minLuxToNitsSpline must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v13, v3, v2

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v3, v11

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    aget v10, v0, v2

    aget v13, v0, v11

    cmpg-float v10, v10, v13

    if-gez v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "minLuxToNitsSpline must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v13, v0, v2

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    new-instance v4, Lcom/android/server/display/config/EvenDimmerBrightnessData;

    new-instance v9, Landroid/util/Spline$LinearSpline;

    invoke-direct {v9, v7, v6}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    new-instance v10, Landroid/util/Spline$LinearSpline;

    invoke-direct {v10, v6, v7}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    new-instance v11, Landroid/util/Spline$LinearSpline;

    invoke-direct {v11, v8, v7}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    new-instance v12, Landroid/util/Spline$LinearSpline;

    invoke-direct {v12, v7, v8}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    invoke-static {v3, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v13

    invoke-direct/range {v4 .. v13}, Lcom/android/server/display/config/EvenDimmerBrightnessData;-><init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V

    return-object v4
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EvenDimmerBrightnessData {transitionPoint: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->transitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", nits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backlight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlight:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightness:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backlightToNits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nitsToBacklight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", brightnessToBacklight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightnessToBacklight:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backlightToBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minLuxToNits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->minLuxToNits:Landroid/util/Spline;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "} "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
