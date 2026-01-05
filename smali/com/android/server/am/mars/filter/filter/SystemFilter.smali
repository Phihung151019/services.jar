.class public final Lcom/android/server/am/mars/filter/filter/SystemFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# virtual methods
.method public final deInit()V
    .locals 0

    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    :goto_0
    const/16 p0, 0x3e8

    const/16 p1, 0xe

    if-ne p2, p0, :cond_1

    return p1

    :cond_1
    const/16 p0, 0x10

    if-ne p3, p0, :cond_2

    if-ltz p2, :cond_2

    const/16 p0, 0x2710

    if-ge p2, p0, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
