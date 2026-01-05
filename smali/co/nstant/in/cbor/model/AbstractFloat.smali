.class public abstract Lco/nstant/in/cbor/model/AbstractFloat;
.super Lco/nstant/in/cbor/model/Special;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final value:F


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/SpecialType;F)V
    .locals 0

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    iput p2, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lco/nstant/in/cbor/model/AbstractFloat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/AbstractFloat;

    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    iget p1, v0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Lco/nstant/in/cbor/model/Special;->hashCode()I

    move-result v0

    iget p0, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
