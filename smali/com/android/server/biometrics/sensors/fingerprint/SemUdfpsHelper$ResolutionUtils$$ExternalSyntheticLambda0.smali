.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$ResolutionUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Landroid/graphics/Point;

    iget p0, p1, Landroid/graphics/Point;->x:I

    int-to-long v0, p0

    iget p0, p1, Landroid/graphics/Point;->y:I

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0
.end method
