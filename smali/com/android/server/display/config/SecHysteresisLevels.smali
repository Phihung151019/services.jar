.class public final Lcom/android/server/display/config/SecHysteresisLevels;
.super Lcom/android/server/display/config/HysteresisLevels;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F


# instance fields
.field public final mHysteresisBrightSpline:Landroid/util/Spline;

.field public final mHysteresisDarkSpline:Landroid/util/Spline;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    new-array v1, v0, [F

    const/high16 v2, 0x43480000    # 200.0f

    aput v2, v1, v3

    sput-object v1, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v3

    sput-object v0, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    return-void
.end method

.method public constructor <init>([I[I[I[I)V
    .locals 7

    sget-object v1, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    sget-object v2, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    sget-object v3, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/config/HysteresisLevels;-><init>([F[F[F[FFF)V

    array-length p0, p1

    array-length v1, p2

    if-ne p0, v1, :cond_0

    array-length p0, p3

    array-length v1, p4

    if-ne p0, v1, :cond_0

    invoke-static {p1}, Lcom/android/server/display/config/SecHysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/display/config/SecHysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object p1

    invoke-static {p3}, Lcom/android/server/display/config/SecHysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object p2

    invoke-static {p4}, Lcom/android/server/display/config/SecHysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object p3

    invoke-static {p0, p1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    invoke-static {p2, p3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Mismatch between hysteresis array lengths."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertArrayFromIntToFloat([I)[F
    .locals 3

    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static loadAmbientBrightnessConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SecHysteresisLevels;
    .locals 4

    if-eqz p0, :cond_0

    const v0, 0x1070074

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const v1, 0x1070075

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const v2, 0x1070076

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const v3, 0x1070077

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    new-instance v3, Lcom/android/server/display/config/SecHysteresisLevels;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/server/display/config/SecHysteresisLevels;-><init>([I[I[I[I)V

    return-object v3

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getBrighteningThreshold(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final getDarkeningThreshold(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SecHysteresisLevels {\n    mHysteresisBrightSpline="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n    mHysteresisDarkSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
