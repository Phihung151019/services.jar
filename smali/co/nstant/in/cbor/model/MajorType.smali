.class public final enum Lco/nstant/in/cbor/model/MajorType;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lco/nstant/in/cbor/model/MajorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lco/nstant/in/cbor/model/MajorType;

.field public static final enum ARRAY:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum INVALID:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum MAP:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum SPECIAL:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum TAG:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

.field public static final enum UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lco/nstant/in/cbor/model/MajorType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lco/nstant/in/cbor/model/MajorType;->INVALID:Lco/nstant/in/cbor/model/MajorType;

    new-instance v1, Lco/nstant/in/cbor/model/MajorType;

    const-string/jumbo v3, "UNSIGNED_INTEGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lco/nstant/in/cbor/model/MajorType;->UNSIGNED_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    new-instance v2, Lco/nstant/in/cbor/model/MajorType;

    const-string/jumbo v3, "NEGATIVE_INTEGER"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    new-instance v3, Lco/nstant/in/cbor/model/MajorType;

    const-string v4, "BYTE_STRING"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    new-instance v4, Lco/nstant/in/cbor/model/MajorType;

    const-string/jumbo v5, "UNICODE_STRING"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lco/nstant/in/cbor/model/MajorType;->UNICODE_STRING:Lco/nstant/in/cbor/model/MajorType;

    new-instance v5, Lco/nstant/in/cbor/model/MajorType;

    const-string v6, "ARRAY"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    new-instance v6, Lco/nstant/in/cbor/model/MajorType;

    const-string/jumbo v7, "MAP"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lco/nstant/in/cbor/model/MajorType;->MAP:Lco/nstant/in/cbor/model/MajorType;

    new-instance v7, Lco/nstant/in/cbor/model/MajorType;

    const-string/jumbo v8, "TAG"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    new-instance v8, Lco/nstant/in/cbor/model/MajorType;

    const-string/jumbo v9, "SPECIAL"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lco/nstant/in/cbor/model/MajorType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lco/nstant/in/cbor/model/MajorType;->SPECIAL:Lco/nstant/in/cbor/model/MajorType;

    filled-new-array/range {v0 .. v8}, [Lco/nstant/in/cbor/model/MajorType;

    move-result-object v0

    sput-object v0, Lco/nstant/in/cbor/model/MajorType;->$VALUES:[Lco/nstant/in/cbor/model/MajorType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lco/nstant/in/cbor/model/MajorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/nstant/in/cbor/model/MajorType;
    .locals 1

    const-class v0, Lco/nstant/in/cbor/model/MajorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/MajorType;

    return-object p0
.end method

.method public static values()[Lco/nstant/in/cbor/model/MajorType;
    .locals 1

    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->$VALUES:[Lco/nstant/in/cbor/model/MajorType;

    invoke-virtual {v0}, [Lco/nstant/in/cbor/model/MajorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/nstant/in/cbor/model/MajorType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lco/nstant/in/cbor/model/MajorType;->value:I

    return p0
.end method
