.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final maxPhysicalXDpi:F

.field public final physicalSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayInfo;->physicalSize:Landroid/graphics/Point;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayInfo;->maxPhysicalXDpi:F

    return-void
.end method
