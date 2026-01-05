.class public final Lco/nstant/in/cbor/model/UnicodeString;
.super Lco/nstant/in/cbor/model/ChunkableDataItem;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/ChunkableDataItem;-><init>(Lco/nstant/in/cbor/model/MajorType;)V

    iput-object p1, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lco/nstant/in/cbor/model/UnicodeString;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/ChunkableDataItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    iget-object p0, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    if-nez p0, :cond_1

    iget-object p0, p1, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    iget-object p1, p1, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lco/nstant/in/cbor/model/ChunkableDataItem;->hashCode()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/nstant/in/cbor/model/UnicodeString;->string:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    :cond_0
    return-object p0
.end method
