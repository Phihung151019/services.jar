.class public abstract Lco/nstant/in/cbor/encoder/AbstractEncoder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final encoder:Lco/nstant/in/cbor/CborEncoder;

.field public final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    iput-object p2, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->outputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V
    .locals 8

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/MajorType;->getValue()I

    move-result p1

    shl-int/lit8 p1, p1, 0x5

    const-wide/16 v0, 0x17

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    int-to-long v0, p1

    or-long p1, v0, p2

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_0
    const-wide/16 v0, 0xff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_1
    const-wide/32 v2, 0xffff

    cmp-long v2, p2, v2

    const/16 v3, 0x8

    if-gtz v2, :cond_2

    sget-object v2, Lco/nstant/in/cbor/model/AdditionalInformation;->TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v2

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v2, p2, v3

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long p1, p2, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_2
    const-wide v4, 0xffffffffL

    cmp-long v2, p2, v4

    const/16 v4, 0x10

    const/16 v5, 0x18

    if-gtz v2, :cond_3

    sget-object v2, Lco/nstant/in/cbor/model/AdditionalInformation;->FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v2

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v5, p2, v5

    and-long/2addr v5, v0

    long-to-int p1, v5

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v4, p2, v4

    and-long/2addr v4, v0

    long-to-int p1, v4

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v2, p2, v3

    and-long/2addr v2, v0

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long p1, p2, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_3
    sget-object v2, Lco/nstant/in/cbor/model/AdditionalInformation;->EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v2}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v2

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x38

    shr-long v6, p2, p1

    and-long/2addr v6, v0

    long-to-int p1, v6

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x30

    shr-long v6, p2, p1

    and-long/2addr v6, v0

    long-to-int p1, v6

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x28

    shr-long v6, p2, p1

    and-long/2addr v6, v0

    long-to-int p1, v6

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x20

    shr-long v6, p2, p1

    and-long/2addr v6, v0

    long-to-int p1, v6

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v5, p2, v5

    and-long/2addr v5, v0

    long-to-int p1, v5

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v4, p2, v4

    and-long/2addr v4, v0

    long-to-int p1, v4

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v2, p2, v3

    and-long/2addr v2, v0

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long p1, p2, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void
.end method

.method public final encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V
    .locals 9

    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/MajorType;->getValue()I

    move-result p1

    shl-int/lit8 p1, p1, 0x5

    const-wide/16 v1, 0x18

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_1
    const-wide/16 v3, 0x100

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ne v1, v2, :cond_2

    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_2
    const-wide/32 v3, 0x10000

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/16 v3, 0x8

    const-wide/16 v4, 0xff

    if-ne v1, v2, :cond_3

    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    shr-long v0, p1, v3

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long/2addr p1, v4

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_3
    const-wide v6, 0x100000000L

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/16 v6, 0x10

    const/16 v7, 0x18

    if-ne v1, v2, :cond_4

    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    shr-long v0, p1, v7

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v0, p1, v6

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-long v0, p1, v3

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long/2addr p1, v4

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_4
    new-instance v1, Ljava/math/BigInteger;

    const-string v8, "18446744073709551616"

    invoke-direct {v1, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ne v1, v2, :cond_5

    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    const/16 v0, 0x38

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    invoke-virtual {p2, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    invoke-virtual {p2, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_5
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    if-eqz v0, :cond_6

    new-instance p1, Lco/nstant/in/cbor/model/Tag;

    const-wide/16 v0, 0x3

    invoke-direct {p1, v0, v1}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    goto :goto_1

    :cond_6
    new-instance p1, Lco/nstant/in/cbor/model/Tag;

    const-wide/16 v0, 0x2

    invoke-direct {p1, v0, v1}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    :goto_1
    new-instance p1, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    return-void
.end method

.method public final encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V
    .locals 1

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/MajorType;->getValue()I

    move-result p1

    shl-int/lit8 p1, p1, 0x5

    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/AdditionalInformation;->getValue()I

    move-result v0

    or-int/2addr p1, v0

    :try_start_0
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lco/nstant/in/cbor/CborException;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final write(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lco/nstant/in/cbor/CborException;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final write([B)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lco/nstant/in/cbor/CborException;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
