.class public abstract Lcom/android/server/display/utils/AmbientFilterFactory;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static createBrightnessFilter(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;
    .locals 4

    const v0, 0x10e009c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    const v3, 0x10500f7

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget p0, v1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;-><init>(Ljava/lang/String;FI)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "missing configurations: expected config_displayWhiteBalanceBrightnessFilterIntercept"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
