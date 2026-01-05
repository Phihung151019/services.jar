.class public abstract Lco/nstant/in/cbor/model/ChunkableDataItem;
.super Lco/nstant/in/cbor/model/DataItem;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public chunked:Z


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/MajorType;)V
    .locals 0

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/DataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/ChunkableDataItem;

    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/DataItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    iget-boolean p1, v0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lco/nstant/in/cbor/model/DataItem;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
