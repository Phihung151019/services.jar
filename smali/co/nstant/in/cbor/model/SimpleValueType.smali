.class public final enum Lco/nstant/in/cbor/model/SimpleValueType;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/nstant/in/cbor/model/SimpleValueType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum NULL:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

.field public static final enum UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lco/nstant/in/cbor/model/SimpleValueType;

    const-string v1, "FALSE"

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->FALSE:Lco/nstant/in/cbor/model/SimpleValueType;

    new-instance v1, Lco/nstant/in/cbor/model/SimpleValueType;

    const/16 v3, 0x15

    const-string/jumbo v4, "TRUE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lco/nstant/in/cbor/model/SimpleValueType;->TRUE:Lco/nstant/in/cbor/model/SimpleValueType;

    move v3, v2

    new-instance v2, Lco/nstant/in/cbor/model/SimpleValueType;

    const/16 v4, 0x16

    const-string/jumbo v5, "NULL"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lco/nstant/in/cbor/model/SimpleValueType;->NULL:Lco/nstant/in/cbor/model/SimpleValueType;

    move v4, v3

    new-instance v3, Lco/nstant/in/cbor/model/SimpleValueType;

    const/16 v5, 0x17

    const-string/jumbo v6, "UNDEFINED"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v5}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lco/nstant/in/cbor/model/SimpleValueType;->UNDEFINED:Lco/nstant/in/cbor/model/SimpleValueType;

    move v5, v4

    new-instance v4, Lco/nstant/in/cbor/model/SimpleValueType;

    const-string/jumbo v6, "RESERVED"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lco/nstant/in/cbor/model/SimpleValueType;->RESERVED:Lco/nstant/in/cbor/model/SimpleValueType;

    move v6, v5

    new-instance v5, Lco/nstant/in/cbor/model/SimpleValueType;

    const-string/jumbo v7, "UNALLOCATED"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lco/nstant/in/cbor/model/SimpleValueType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lco/nstant/in/cbor/model/SimpleValueType;->UNALLOCATED:Lco/nstant/in/cbor/model/SimpleValueType;

    filled-new-array/range {v0 .. v5}, [Lco/nstant/in/cbor/model/SimpleValueType;

    move-result-object v0

    sput-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->$VALUES:[Lco/nstant/in/cbor/model/SimpleValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lco/nstant/in/cbor/model/SimpleValueType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/nstant/in/cbor/model/SimpleValueType;
    .locals 1

    const-class v0, Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/SimpleValueType;

    return-object p0
.end method

.method public static values()[Lco/nstant/in/cbor/model/SimpleValueType;
    .locals 1

    sget-object v0, Lco/nstant/in/cbor/model/SimpleValueType;->$VALUES:[Lco/nstant/in/cbor/model/SimpleValueType;

    invoke-virtual {v0}, [Lco/nstant/in/cbor/model/SimpleValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/nstant/in/cbor/model/SimpleValueType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lco/nstant/in/cbor/model/SimpleValueType;->value:I

    return p0
.end method
