.class public final synthetic Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/content/Context;

    sget-object p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda0;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "connectivity_metrics_buffer_size"

    const/16 v0, 0x7d0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x4e20

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
