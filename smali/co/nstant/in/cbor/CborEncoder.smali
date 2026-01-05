.class public final Lco/nstant/in/cbor/CborEncoder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

.field public final byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

.field public final mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

.field public final negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

.field public final specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

.field public final tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

.field public final unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

.field public final unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/ArrayEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/MapEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/TagEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

    new-instance v0, Lco/nstant/in/cbor/encoder/SpecialEncoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/encoder/SpecialEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborEncoder;->specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

    return-void
.end method


# virtual methods
.method public final encode(Lco/nstant/in/cbor/model/DataItem;)V
    .locals 8

    if-nez p1, :cond_0

    sget-object p1, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    :cond_0
    iget-object v0, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    iget-object v5, p0, Lco/nstant/in/cbor/CborEncoder;->tagEncoder:Lco/nstant/in/cbor/encoder/TagEncoder;

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v0, Lco/nstant/in/cbor/model/Tag;->value:J

    invoke-virtual {v5, v4, v6, v7}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    :cond_2
    iget-object v0, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string/jumbo p1, "Unknown major type"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Lco/nstant/in/cbor/model/Special;

    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->specialEncoder:Lco/nstant/in/cbor/encoder/SpecialEncoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lco/nstant/in/cbor/model/Special;->specialType:Lco/nstant/in/cbor/model/SpecialType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xff

    const-string/jumbo v3, "Wrong data item type"

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_1
    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :pswitch_2
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string/jumbo p1, "Unallocated special type"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    instance-of v0, p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    if-eqz v0, :cond_3

    check-cast p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->doublePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/DoublePrecisionFloatEncoder;

    const/16 v0, 0xfb

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    iget-wide v0, p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/16 p1, 0x38

    shr-long v2, v0, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x30

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x28

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x20

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x18

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x10

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    const/16 p1, 0x8

    shr-long v2, v0, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-long/2addr v0, v4

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_3
    new-instance p0, Lco/nstant/in/cbor/CborException;

    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    instance-of v0, p1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    if-eqz v0, :cond_4

    check-cast p1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->singlePrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/SinglePrecisionFloatEncoder;

    const/16 v0, 0xfa

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    iget p1, p1, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    shr-int/lit8 v0, p1, 0x18

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_4
    new-instance p0, Lco/nstant/in/cbor/CborException;

    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    instance-of v0, p1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    if-eqz v0, :cond_a

    check-cast p1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    iget-object p0, p0, Lco/nstant/in/cbor/encoder/SpecialEncoder;->halfPrecisionFloatEncoder:Lco/nstant/in/cbor/encoder/HalfPrecisionFloatEncoder;

    const/16 v0, 0xf9

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    iget p1, p1, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    ushr-int/lit8 v0, p1, 0x10

    const v2, 0x8000

    and-int/2addr v0, v2

    add-int/lit16 v2, p1, 0x1000

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    const v4, 0x7fffff

    const/high16 v5, 0x47800000    # 65536.0f

    if-lt v2, v5, :cond_7

    and-int/2addr v3, p1

    if-lt v3, v5, :cond_6

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v2, v3, :cond_5

    or-int/lit16 v0, v0, 0x7c00

    goto :goto_2

    :cond_5
    or-int/lit16 v0, v0, 0x7c00

    and-int/2addr p1, v4

    ushr-int/lit8 p1, p1, 0xd

    :goto_1
    or-int/2addr v0, p1

    goto :goto_2

    :cond_6
    or-int/lit16 v0, v0, 0x7bff

    goto :goto_2

    :cond_7
    const/high16 v5, 0x38800000

    if-lt v2, v5, :cond_8

    const/high16 p1, 0x38000000

    sub-int/2addr v2, p1

    ushr-int/lit8 p1, v2, 0xd

    goto :goto_1

    :cond_8
    const/high16 v5, 0x33000000

    if-ge v2, v5, :cond_9

    goto :goto_2

    :cond_9
    and-int v2, p1, v3

    ushr-int/lit8 v2, v2, 0x17

    and-int/2addr p1, v4

    const/high16 v3, 0x800000

    or-int/2addr p1, v3

    add-int/lit8 v4, v2, -0x66

    ushr-int/2addr v3, v4

    add-int/2addr p1, v3

    rsub-int/lit8 v2, v2, 0x7e

    ushr-int/2addr p1, v2

    goto :goto_1

    :goto_2
    shr-int/lit8 p1, v0, 0x8

    and-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_a
    new-instance p0, Lco/nstant/in/cbor/CborException;

    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    instance-of v0, p1, Lco/nstant/in/cbor/model/SimpleValue;

    if-eqz v0, :cond_b

    check-cast p1, Lco/nstant/in/cbor/model/SimpleValue;

    const/16 v0, 0xf8

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    iget p1, p1, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_b
    new-instance p0, Lco/nstant/in/cbor/CborException;

    invoke-direct {p0, v3}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    check-cast p1, Lco/nstant/in/cbor/model/SimpleValue;

    iget-object v0, p1, Lco/nstant/in/cbor/model/SimpleValue;->simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_d

    if-eq v1, v2, :cond_d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    const/4 v0, 0x5

    if-eq v1, v0, :cond_c

    goto/16 :goto_9

    :cond_c
    iget p1, p1, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    or-int/lit16 p1, p1, 0xe0

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :cond_d
    invoke-virtual {v0}, Lco/nstant/in/cbor/model/SimpleValueType;->getValue()I

    move-result p1

    or-int/lit16 p1, p1, 0xe0

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write(I)V

    return-void

    :pswitch_8
    check-cast p1, Lco/nstant/in/cbor/model/Tag;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p0, p1, Lco/nstant/in/cbor/model/Tag;->value:J

    invoke-virtual {v5, v4, p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    return-void

    :pswitch_9
    check-cast p1, Lco/nstant/in/cbor/model/Map;

    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->mapEncoder:Lco/nstant/in/cbor/encoder/MapEncoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    iget-boolean v1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    if-eqz v1, :cond_e

    invoke-virtual {p0, v2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    goto :goto_3

    :cond_e
    move-object v1, v0

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_9

    :cond_f
    iget-boolean v1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    iget-object v3, p1, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    goto :goto_4

    :cond_10
    sget-object p0, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v2, p0}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    return-void

    :cond_11
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lco/nstant/in/cbor/encoder/MapEncoder$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lco/nstant/in/cbor/CborEncoder;

    invoke-direct {v3, v2}, Lco/nstant/in/cbor/CborEncoder;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v6, p1, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/nstant/in/cbor/model/DataItem;

    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {v1, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_12
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write([B)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write([B)V

    goto :goto_6

    :pswitch_a
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->arrayEncoder:Lco/nstant/in/cbor/encoder/ArrayEncoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    iget-boolean p1, p1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    sget-object v2, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    if-eqz p1, :cond_13

    invoke-virtual {p0, v2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    goto :goto_7

    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p0, v2, v3, v4}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_8
    if-ge v1, p1, :cond_14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lco/nstant/in/cbor/model/DataItem;

    iget-object v3, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    invoke-virtual {v3, v2}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    goto :goto_8

    :cond_14
    :goto_9
    return-void

    :pswitch_b
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->unicodeStringEncoder:Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/UnicodeStringEncoder;->encode(Lco/nstant/in/cbor/model/UnicodeString;)V

    return-void

    :pswitch_c
    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->byteStringEncoder:Lco/nstant/in/cbor/encoder/ByteStringEncoder;

    check-cast p1, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/ByteStringEncoder;->encode(Lco/nstant/in/cbor/model/ByteString;)V

    return-void

    :pswitch_d
    check-cast p1, Lco/nstant/in/cbor/model/NegativeInteger;

    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->negativeIntegerEncoder:Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    sget-object v1, Lco/nstant/in/cbor/encoder/NegativeIntegerEncoder;->MINUS_ONE:Ljava/math/BigInteger;

    iget-object p1, p1, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    return-void

    :pswitch_e
    check-cast p1, Lco/nstant/in/cbor/model/UnsignedInteger;

    iget-object p0, p0, Lco/nstant/in/cbor/CborEncoder;->unsignedIntegerEncoder:Lco/nstant/in/cbor/encoder/UnsignedIntegerEncoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    iget-object p1, p1, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    invoke-virtual {p0, v0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
