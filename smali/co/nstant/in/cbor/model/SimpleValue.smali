.class public final Lco/nstant/in/cbor/model/SimpleValue;
.super Lco/nstant/in/cbor/model/Special;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final FALSE:Lco/nstant/in/cbor/model/SimpleValue;

.field public static final NULL:Lco/nstant/in/cbor/model/SimpleValue;

.field public static final TRUE:Lco/nstant/in/cbor/model/SimpleValue;

.field public static final UNDEFINED:Lco/nstant/in/cbor/model/SimpleValue;


# instance fields
.field public final simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(Lco/nstant/in/cbor/model/SimpleValueType;)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValue;->FALSE:Lco/nstant/in/cbor/model/SimpleValue;

    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(Lco/nstant/in/cbor/model/SimpleValueType;)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValue;->TRUE:Lco/nstant/in/cbor/model/SimpleValue;

    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(Lco/nstant/in/cbor/model/SimpleValueType;)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    new-instance v0, Lco/nstant/in/cbor/model/SimpleValue;

    sget-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/SimpleValue;-><init>(Lco/nstant/in/cbor/model/SimpleValueType;)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValue;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValue;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    goto :goto_0

    :cond_0
    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE_NEXT_BYTE:Lco/nstant/in/cbor/model/SpecialType;

    :goto_0
    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    iput p1, p0, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    and-int/lit8 p1, p1, 0x1f

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_1

    :pswitch_0
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_1

    :pswitch_1
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_1

    :pswitch_2
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_1

    :pswitch_3
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    goto :goto_1

    :pswitch_4
    sget-object p1, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    :goto_1
    iput-object p1, p0, Lco/nstant/in/cbor/model/SimpleValue;->simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lco/nstant/in/cbor/model/SimpleValueType;)V
    .locals 1

    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->SIMPLE_VALUE:Lco/nstant/in/cbor/model/SpecialType;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/SimpleValueType;->getValue()I

    move-result v0

    iput v0, p0, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    iput-object p1, p0, Lco/nstant/in/cbor/model/SimpleValue;->simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lco/nstant/in/cbor/model/SimpleValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/SimpleValue;

    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    iget p1, v0, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Lco/nstant/in/cbor/model/Special;->hashCode()I

    move-result v0

    iget p0, p0, Lco/nstant/in/cbor/model/SimpleValue;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lco/nstant/in/cbor/model/SimpleValue;->simpleValueType:Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
