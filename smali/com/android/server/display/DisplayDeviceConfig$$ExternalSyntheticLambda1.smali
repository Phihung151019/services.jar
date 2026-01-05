.class public final synthetic Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/util/Pair;

    sget-boolean p0, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    new-instance p0, Ljava/math/BigDecimal;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    return-object p0
.end method
