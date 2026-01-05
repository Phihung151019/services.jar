.class public final Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;


# direct methods
.method public static nextScaleStep(FI)F
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3ff306fe00000000L    # 1.1892070770263672

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    int-to-long p0, p1

    add-long/2addr v0, p0

    long-to-double p0, v0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    sget p1, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    const/high16 p1, 0x3f800000    # 1.0f

    sget v0, Lcom/android/internal/accessibility/common/MagnificationConstants;->SCALE_MAX_VALUE:F

    invoke-static {p0, p1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public uptimeMillis()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
