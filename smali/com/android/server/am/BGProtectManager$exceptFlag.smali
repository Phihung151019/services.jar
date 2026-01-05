.class final enum Lcom/android/server/am/BGProtectManager$exceptFlag;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/BGProtectManager$exceptFlag;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string/jumbo v1, "NORMALANDKNOXPWHL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    new-instance v1, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string/jumbo v2, "NORMALONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string/jumbo v3, "NORMALANDKNOX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    new-instance v3, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v4, "KNOXONLY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    new-instance v4, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string/jumbo v5, "SANDBOX"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    new-instance v5, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v6, "CAMERAGUARD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    new-instance v6, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v7, "BROWSERMAIN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    new-instance v7, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v8, "HOMEHUB"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    new-instance v8, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v9, "CAMERAMEDIA"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    filled-new-array/range {v0 .. v8}, [Lcom/android/server/am/BGProtectManager$exceptFlag;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->$VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/BGProtectManager$exceptFlag;
    .locals 1

    const-class v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/BGProtectManager$exceptFlag;
    .locals 1

    sget-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->$VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v0}, [Lcom/android/server/am/BGProtectManager$exceptFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/BGProtectManager$exceptFlag;

    return-object v0
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    return p0
.end method
