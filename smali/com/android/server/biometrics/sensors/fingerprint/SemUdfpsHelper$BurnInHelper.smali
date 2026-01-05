.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIconArray:[I

.field public mIconLocationIndex:I

.field public final mMaxMovingSize:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setMaxMovingSize() returned: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    const-string v2, "FingerprintService"

    invoke-static {p1, v0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    mul-int/2addr p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    mul-int v2, v0, v0

    if-ge p1, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    mul-int/2addr v0, v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    add-int/lit8 p1, v0, 0x1

    int-to-double v3, p1

    mul-double/2addr v1, v3

    double-to-int p1, v1

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    aget v2, v1, p1

    aget v3, v1, v0

    aput v3, v1, p1

    aput v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    mul-int/2addr p1, p1

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconLocationIndex:I

    return-void
.end method
