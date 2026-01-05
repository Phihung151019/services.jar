.class public final Lco/nstant/in/cbor/encoder/MapEncoder$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, [B

    check-cast p2, [B

    array-length p0, p1

    array-length v0, p2

    if-ge p0, v0, :cond_0

    goto :goto_1

    :cond_0
    array-length p0, p1

    array-length v0, p2

    if-le p0, v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-ge v1, v2, :cond_2

    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_2
    if-le v1, v2, :cond_3

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return p0
.end method
