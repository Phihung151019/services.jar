.class public final enum Lco/nstant/in/cbor/model/AdditionalInformation;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/nstant/in/cbor/model/AdditionalInformation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum DIRECT:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum RESERVED:Lco/nstant/in/cbor/model/AdditionalInformation;

.field public static final enum TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lco/nstant/in/cbor/model/AdditionalInformation;

    const-string v1, "DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->DIRECT:Lco/nstant/in/cbor/model/AdditionalInformation;

    new-instance v1, Lco/nstant/in/cbor/model/AdditionalInformation;

    const/16 v2, 0x18

    const-string/jumbo v3, "ONE_BYTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lco/nstant/in/cbor/model/AdditionalInformation;->ONE_BYTE:Lco/nstant/in/cbor/model/AdditionalInformation;

    new-instance v2, Lco/nstant/in/cbor/model/AdditionalInformation;

    const/16 v3, 0x19

    const-string/jumbo v4, "TWO_BYTES"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lco/nstant/in/cbor/model/AdditionalInformation;->TWO_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    new-instance v3, Lco/nstant/in/cbor/model/AdditionalInformation;

    const/16 v4, 0x1a

    const-string v5, "FOUR_BYTES"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lco/nstant/in/cbor/model/AdditionalInformation;->FOUR_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    new-instance v4, Lco/nstant/in/cbor/model/AdditionalInformation;

    const/16 v5, 0x1b

    const-string v6, "EIGHT_BYTES"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lco/nstant/in/cbor/model/AdditionalInformation;->EIGHT_BYTES:Lco/nstant/in/cbor/model/AdditionalInformation;

    new-instance v5, Lco/nstant/in/cbor/model/AdditionalInformation;

    const/16 v6, 0x1c

    const-string/jumbo v7, "RESERVED"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lco/nstant/in/cbor/model/AdditionalInformation;->RESERVED:Lco/nstant/in/cbor/model/AdditionalInformation;

    new-instance v6, Lco/nstant/in/cbor/model/AdditionalInformation;

    const/16 v7, 0x1f

    const-string v8, "INDEFINITE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lco/nstant/in/cbor/model/AdditionalInformation;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lco/nstant/in/cbor/model/AdditionalInformation;->INDEFINITE:Lco/nstant/in/cbor/model/AdditionalInformation;

    filled-new-array/range {v0 .. v6}, [Lco/nstant/in/cbor/model/AdditionalInformation;

    move-result-object v0

    sput-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->$VALUES:[Lco/nstant/in/cbor/model/AdditionalInformation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lco/nstant/in/cbor/model/AdditionalInformation;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/nstant/in/cbor/model/AdditionalInformation;
    .locals 1

    const-class v0, Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/AdditionalInformation;

    return-object p0
.end method

.method public static values()[Lco/nstant/in/cbor/model/AdditionalInformation;
    .locals 1

    sget-object v0, Lco/nstant/in/cbor/model/AdditionalInformation;->$VALUES:[Lco/nstant/in/cbor/model/AdditionalInformation;

    invoke-virtual {v0}, [Lco/nstant/in/cbor/model/AdditionalInformation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/nstant/in/cbor/model/AdditionalInformation;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lco/nstant/in/cbor/model/AdditionalInformation;->value:I

    return p0
.end method
