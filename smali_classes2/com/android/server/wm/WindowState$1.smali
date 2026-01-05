.class public final Lcom/android/server/wm/WindowState$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Lcom/android/server/wm/WindowState;

    iget p0, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    iget p1, p2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-lt p0, p1, :cond_1

    if-ne p0, p1, :cond_0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
