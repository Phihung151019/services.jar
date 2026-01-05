.class public final Lco/nstant/in/cbor/encoder/ByteStringEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final encode(Lco/nstant/in/cbor/model/ByteString;)V
    .locals 4

    iget-object v0, p1, Lco/nstant/in/cbor/model/ByteString;->bytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean p1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    sget-object v1, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    if-eqz v0, :cond_1

    new-instance p1, Lco/nstant/in/cbor/model/ByteString;

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/ByteStringEncoder;->encode(Lco/nstant/in/cbor/model/ByteString;)V

    :cond_1
    return-void

    :cond_2
    if-nez v0, :cond_3

    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    sget-object p1, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    return-void

    :cond_3
    array-length p1, v0

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write([B)V

    return-void
.end method
