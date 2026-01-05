.class public final Lco/nstant/in/cbor/CborDecoder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

.field public final byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

.field public final inputStream:Ljava/io/InputStream;

.field public final mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

.field public final negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

.field public final specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

.field public final tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

.field public final unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

.field public final unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/nstant/in/cbor/CborDecoder;->inputStream:Ljava/io/InputStream;

    new-instance v0, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    new-instance v0, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    new-instance v0, Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    new-instance v0, Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    new-instance v0, Lco/nstant/in/cbor/decoder/ArrayDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

    new-instance v0, Lco/nstant/in/cbor/decoder/MapDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

    new-instance v0, Lco/nstant/in/cbor/decoder/TagDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

    new-instance v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/SpecialDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

    return-void
.end method


# virtual methods
.method public final decodeNext()Lco/nstant/in/cbor/model/DataItem;
    .locals 17

    move-object/from16 v0, p0

    :try_start_0
    iget-object v1, v0, Lco/nstant/in/cbor/CborDecoder;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-object v2

    :cond_0
    shr-int/lit8 v4, v1, 0x5

    sget-object v5, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    sget-object v6, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    sget-object v7, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->INVALID:Lco/nstant/in/cbor/model/MajorType;

    goto :goto_0

    :pswitch_0
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->SPECIAL:Lco/nstant/in/cbor/model/MajorType;

    goto :goto_0

    :pswitch_1
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    goto :goto_0

    :pswitch_2
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    goto :goto_0

    :pswitch_3
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    goto :goto_0

    :pswitch_4
    move-object v4, v7

    goto :goto_0

    :pswitch_5
    move-object v4, v6

    goto :goto_0

    :pswitch_6
    move-object v4, v5

    goto :goto_0

    :pswitch_7
    sget-object v4, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-string/jumbo v8, "Unexpected major type "

    const/4 v9, 0x2

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x0

    const-string/jumbo v14, "Unexpected end of stream"

    const-wide/16 v15, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v4, :pswitch_data_1

    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string/jumbo v2, "Not implemented major type "

    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    sget-object v4, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_HALF_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    sget-object v5, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_SINGLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    packed-switch v1, :pswitch_data_2

    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    goto :goto_1

    :pswitch_9
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->BREAK:Lco/nstant/in/cbor/model/SpecialType;

    goto :goto_1

    :pswitch_a
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->UNALLOCATED:Lco/nstant/in/cbor/model/SpecialType;

    goto :goto_1

    :pswitch_b
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    goto :goto_1

    :pswitch_c
    move-object v6, v5

    goto :goto_1

    :pswitch_d
    move-object v6, v4

    goto :goto_1

    :pswitch_e
    sget-object v6, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE_NEXT_BYTE:Lco/nstant/in/cbor/model/SpecialType;

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const-string/jumbo v7, "Not implemented"

    const/4 v8, 0x3

    if-eqz v6, :cond_c

    if-eq v6, v3, :cond_b

    const/16 v1, 0x8

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_3

    const/4 v2, 0x4

    if-eq v6, v2, :cond_2

    const/4 v0, 0x6

    if-ne v6, v0, :cond_1

    sget-object v0, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    return-object v0

    :cond_1
    new-instance v0, Lco/nstant/in/cbor/CborException;

    invoke-direct {v0, v7}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->doublePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/DoublePrecisionFloatDecoder;

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v1

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    shl-long/2addr v2, v1

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    shl-long/2addr v2, v1

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    shl-long/2addr v2, v1

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    shl-long/2addr v2, v1

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    shl-long/2addr v2, v1

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    shl-long v1, v2, v1

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    or-long v0, v1, v3

    new-instance v2, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lco/nstant/in/cbor/model/DoublePrecisionFloat;-><init>(D)V

    return-object v2

    :cond_3
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->singlePrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v1

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/2addr v2, v1

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v1, v2, 0x8

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-instance v1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-direct {v1, v5, v0}, Lco/nstant/in/cbor/model/AbstractFloat;-><init>(Lco/nstant/in/cbor/model/SpecialType;F)V

    return-object v1

    :cond_4
    iget-object v0, v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;->halfPrecisionFloatDecoder:Lco/nstant/in/cbor/decoder/HalfPrecisionFloatDecoder;

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v5

    shl-int/lit8 v1, v5, 0x8

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    or-int/2addr v0, v1

    new-instance v1, Lco/nstant/in/cbor/model/HalfPrecisionFloat;

    const v5, 0x8000

    and-int/2addr v5, v0

    shr-int/lit8 v5, v5, 0xf

    and-int/lit16 v6, v0, 0x7c00

    shr-int/lit8 v6, v6, 0xa

    and-int/lit16 v0, v0, 0x3ff

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-nez v6, :cond_6

    if-eqz v5, :cond_5

    const/4 v3, -0x1

    :cond_5
    int-to-double v2, v3

    const-wide/high16 v5, -0x3fd4000000000000L    # -14.0

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v2

    int-to-double v2, v0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v2, v7

    :goto_2
    mul-double/2addr v2, v5

    double-to-float v0, v2

    goto :goto_3

    :cond_6
    if-ne v6, v2, :cond_9

    if-eqz v0, :cond_7

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_8

    const/4 v3, -0x1

    :cond_8
    int-to-float v0, v3

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    mul-float/2addr v0, v2

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_a

    const/4 v3, -0x1

    :cond_a
    int-to-double v2, v3

    add-int/lit8 v6, v6, -0xf

    int-to-double v5, v6

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v2

    int-to-double v2, v0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v2, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v7

    goto :goto_2

    :goto_3
    invoke-direct {v1, v4, v0}, Lco/nstant/in/cbor/model/AbstractFloat;-><init>(Lco/nstant/in/cbor/model/SpecialType;F)V

    return-object v1

    :cond_b
    new-instance v1, Lco/nstant/in/cbor/model/SimpleValue;

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    invoke-direct {v1, v0}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(I)V

    return-object v1

    :cond_c
    packed-switch v1, :pswitch_data_3

    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_4

    :pswitch_f
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_4

    :pswitch_10
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_4

    :pswitch_11
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_4

    :pswitch_12
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_4

    :pswitch_13
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_11

    if-eq v0, v3, :cond_10

    if-eq v0, v9, :cond_f

    if-eq v0, v8, :cond_e

    const/4 v2, 0x5

    if-ne v0, v2, :cond_d

    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(I)V

    return-object v0

    :cond_d
    new-instance v0, Lco/nstant/in/cbor/CborException;

    invoke-direct {v0, v7}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValue;

    return-object v0

    :cond_f
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    return-object v0

    :cond_10
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->TRUE:Lco/nstant/in/cbor/model/SimpleValue;

    return-object v0

    :cond_11
    sget-object v0, Lco/nstant/in/cbor/model/SimpleValue;->FALSE:Lco/nstant/in/cbor/model/SimpleValue;

    return-object v0

    :pswitch_14
    new-instance v4, Lco/nstant/in/cbor/model/Tag;

    iget-object v5, v0, Lco/nstant/in/cbor/CborDecoder;->tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

    invoke-virtual {v5, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v0

    if-eqz v0, :cond_20

    const-wide/16 v7, 0x1e

    cmp-long v1, v5, v7

    if-nez v1, :cond_19

    instance-of v1, v0, Lco/nstant/in/cbor/model/Array;

    if-eqz v1, :cond_18

    check-cast v0, Lco/nstant/in/cbor/model/Array;

    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v9, :cond_17

    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    instance-of v2, v1, Lco/nstant/in/cbor/model/Number;

    if-eqz v2, :cond_16

    iget-object v0, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    instance-of v2, v0, Lco/nstant/in/cbor/model/Number;

    if-eqz v2, :cond_15

    check-cast v1, Lco/nstant/in/cbor/model/Number;

    check-cast v0, Lco/nstant/in/cbor/model/Number;

    new-instance v2, Lco/nstant/in/cbor/model/RationalNumber;

    invoke-direct {v2}, Lco/nstant/in/cbor/model/Array;-><init>()V

    new-instance v3, Lco/nstant/in/cbor/model/Tag;

    const/16 v4, 0x1e

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    iput-object v3, v2, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    if-eqz v1, :cond_14

    if-eqz v0, :cond_13

    iget-object v3, v0, Lco/nstant/in/cbor/model/Number;->value:Ljava/math/BigInteger;

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    invoke-virtual {v2, v0}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    return-object v2

    :cond_12
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Denominator is zero"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Denominator is null"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string/jumbo v1, "Numerator is null"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Error decoding RationalNumber: second data item is not a number"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Error decoding RationalNumber: first data item is not a number"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Error decoding RationalNumber: array size is not 2"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Error decoding RationalNumber: not an array"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const-wide/16 v7, 0x26

    cmp-long v1, v5, v7

    if-nez v1, :cond_1e

    instance-of v1, v0, Lco/nstant/in/cbor/model/Array;

    if-eqz v1, :cond_1d

    check-cast v0, Lco/nstant/in/cbor/model/Array;

    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v9, :cond_1c

    iget-object v1, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/nstant/in/cbor/model/DataItem;

    instance-of v2, v1, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v2, :cond_1b

    iget-object v0, v0, Lco/nstant/in/cbor/model/Array;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/nstant/in/cbor/model/DataItem;

    instance-of v2, v0, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v2, :cond_1a

    check-cast v1, Lco/nstant/in/cbor/model/UnicodeString;

    check-cast v0, Lco/nstant/in/cbor/model/UnicodeString;

    new-instance v2, Lco/nstant/in/cbor/model/LanguageTaggedString;

    invoke-direct {v2}, Lco/nstant/in/cbor/model/Array;-><init>()V

    new-instance v3, Lco/nstant/in/cbor/model/Tag;

    const/16 v4, 0x26

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    iput-object v3, v2, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    return-object v2

    :cond_1a
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Error decoding LanguageTaggedString: second data item is not an UnicodeString"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Error decoding LanguageTaggedString: first data item is not an UnicodeString"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Error decoding LanguageTaggedString: array size is not 2"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string v1, "Error decoding LanguageTaggedString: not an array"

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move-object v1, v0

    :goto_5
    iget-object v2, v1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    if-eqz v2, :cond_1f

    move-object v1, v2

    goto :goto_5

    :cond_1f
    iput-object v4, v1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-object v0

    :cond_20
    new-instance v0, Lco/nstant/in/cbor/CborException;

    const-string/jumbo v1, "Unexpected end of stream: tag without following data item."

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    move-result-wide v1

    cmp-long v4, v1, v15

    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    if-nez v4, :cond_24

    new-instance v1, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v1}, Lco/nstant/in/cbor/model/Map;-><init>()V

    iput-boolean v3, v1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_21
    :goto_6
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    sget-object v3, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v3, v2}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    return-object v1

    :cond_22
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    if-eqz v2, :cond_23

    if-eqz v3, :cond_23

    iget-object v4, v1, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    iget-object v3, v1, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_23
    new-instance v0, Lco/nstant/in/cbor/CborException;

    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v3, Lco/nstant/in/cbor/model/Map;

    long-to-int v4, v1

    invoke-direct {v3, v4}, Lco/nstant/in/cbor/model/Map;-><init>(I)V

    :goto_7
    cmp-long v4, v12, v1

    if-gez v4, :cond_27

    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v5

    if-eqz v4, :cond_26

    if-eqz v5, :cond_26

    iget-object v6, v3, Lco/nstant/in/cbor/model/Map;->map:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_25

    iget-object v5, v3, Lco/nstant/in/cbor/model/Map;->keys:Ljava/util/List;

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_25
    add-long/2addr v12, v10

    goto :goto_7

    :cond_26
    new-instance v0, Lco/nstant/in/cbor/CborException;

    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-object v3

    :pswitch_16
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    move-result-wide v1

    cmp-long v4, v1, v15

    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    if-nez v4, :cond_2a

    new-instance v1, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v1}, Lco/nstant/in/cbor/model/Array;-><init>()V

    iput-boolean v3, v1, Lco/nstant/in/cbor/model/ChunkableDataItem;->chunked:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_8
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    if-eqz v2, :cond_29

    sget-object v3, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v3, v2}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v1, v3}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    return-object v1

    :cond_28
    invoke-virtual {v1, v2}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    goto :goto_8

    :cond_29
    new-instance v0, Lco/nstant/in/cbor/CborException;

    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v3, Lco/nstant/in/cbor/model/Array;

    invoke-direct {v3}, Lco/nstant/in/cbor/model/Array;-><init>()V

    :goto_9
    cmp-long v4, v12, v1

    if-gez v4, :cond_2c

    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual {v3, v4}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)V

    add-long/2addr v12, v10

    goto :goto_9

    :cond_2b
    new-instance v0, Lco/nstant/in/cbor/CborException;

    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    return-object v3

    :pswitch_17
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    move-result-wide v3

    cmp-long v1, v3, v15

    if-nez v1, :cond_30

    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_a
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    if-eqz v3, :cond_2f

    sget-object v4, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v4, v3}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2d
    iget-object v4, v3, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    if-ne v4, v7, :cond_2e

    check-cast v3, Lco/nstant/in/cbor/model/UnicodeString;

    invoke-virtual {v3}, Lco/nstant/in/cbor/model/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    :cond_2e
    new-instance v0, Lco/nstant/in/cbor/CborException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Lco/nstant/in/cbor/CborException;

    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    long-to-int v2, v3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_b
    cmp-long v2, v12, v3

    if-gez v2, :cond_31

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-long/2addr v12, v10

    goto :goto_b

    :cond_31
    new-instance v0, Lco/nstant/in/cbor/model/UnicodeString;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Lco/nstant/in/cbor/model/UnicodeString;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_18
    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    move-result-wide v3

    cmp-long v1, v3, v15

    if-nez v1, :cond_37

    iget-object v0, v0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_32
    :goto_c
    invoke-virtual {v0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    if-eqz v3, :cond_36

    sget-object v4, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v4, v3}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    new-instance v0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    return-object v0

    :cond_33
    iget-object v4, v3, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    if-ne v4, v6, :cond_35

    check-cast v3, Lco/nstant/in/cbor/model/ByteString;

    iget-object v3, v3, Lco/nstant/in/cbor/model/ByteString;->bytes:[B

    if-nez v3, :cond_34

    const/4 v3, 0x0

    :cond_34
    if-eqz v3, :cond_32

    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_c

    :cond_35
    new-instance v0, Lco/nstant/in/cbor/CborException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Lco/nstant/in/cbor/CborException;

    invoke-direct {v0, v14}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    long-to-int v2, v3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_d
    cmp-long v2, v12, v3

    if-gez v2, :cond_38

    invoke-virtual {v0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-long/2addr v12, v10

    goto :goto_d

    :cond_38
    new-instance v0, Lco/nstant/in/cbor/model/ByteString;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    return-object v0

    :pswitch_19
    new-instance v2, Lco/nstant/in/cbor/model/NegativeInteger;

    sget-object v3, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;->MINUS_ONE:Ljava/math/BigInteger;

    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLengthAsBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lco/nstant/in/cbor/model/Number;-><init>(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    return-object v2

    :pswitch_1a
    new-instance v2, Lco/nstant/in/cbor/model/UnsignedInteger;

    iget-object v0, v0, Lco/nstant/in/cbor/CborDecoder;->unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLengthAsBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v0}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(Ljava/math/BigInteger;)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lco/nstant/in/cbor/CborException;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
