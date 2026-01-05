.class public Lco/nstant/in/cbor/model/Special;
.super Lco/nstant/in/cbor/model/DataItem;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BREAK:Lco/nstant/in/cbor/model/Special;


# instance fields
.field public final specialType:Lco/nstant/in/cbor/model/SpecialType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/nstant/in/cbor/model/Special;

    sget-object v1, Lco/nstant/in/cbor/model/SpecialType;->BREAK:Lco/nstant/in/cbor/model/SpecialType;

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    sput-object v0, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    return-void
.end method

.method public constructor <init>(Lco/nstant/in/cbor/model/SpecialType;)V
    .locals 1

    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->SPECIAL:Lco/nstant/in/cbor/model/MajorType;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    iput-object p1, p0, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lco/nstant/in/cbor/model/Special;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/Special;

    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    iget-object p1, v0, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lco/nstant/in/cbor/model/DataItem;->hashCode()I

    move-result v0

    iget-object p0, p0, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
