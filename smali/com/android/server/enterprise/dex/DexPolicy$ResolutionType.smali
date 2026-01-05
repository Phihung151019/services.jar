.class final enum Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

.field public static final enum FHD:Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;


# instance fields
.field private height:I

.field private keyValue:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    const/4 v1, 0x0

    const-string/jumbo v5, "UHD"

    const-string/jumbo v4, "UHD"

    const/16 v2, 0xf00

    const/16 v3, 0x870

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    const/4 v2, 0x1

    const-string/jumbo v6, "UWQHD"

    const-string/jumbo v5, "UWQHD"

    const/16 v3, 0xd70

    const/16 v4, 0x5a0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    const/4 v3, 0x2

    const-string/jumbo v7, "WQXGA"

    const-string/jumbo v6, "WQXGA"

    const/16 v4, 0xa00

    const/16 v5, 0x640

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    const/4 v4, 0x3

    const-string/jumbo v8, "WQHD"

    const-string/jumbo v7, "WQHD"

    const/16 v5, 0xa00

    const/16 v6, 0x5a0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    const/4 v5, 0x4

    const-string/jumbo v9, "UWFHD"

    const-string/jumbo v8, "UWFHD"

    const/16 v6, 0xa00

    const/16 v7, 0x438

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    const/4 v6, 0x5

    const-string/jumbo v10, "WUXGA"

    const-string/jumbo v9, "WUXGA"

    const/16 v7, 0x780

    const/16 v8, 0x4b0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    const/4 v7, 0x6

    const-string v11, "FHD"

    const-string v10, "FHD"

    const/16 v8, 0x780

    const/16 v9, 0x438

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->FHD:Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    new-instance v7, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    const/4 v8, 0x7

    const-string v12, "HD"

    const-string v11, "HD"

    const/16 v9, 0x640

    const/16 v10, 0x384

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    filled-new-array/range {v0 .. v7}, [Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->$VALUES:[Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p5, p0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->keyValue:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->width:I

    iput p3, p0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->height:I

    return-void
.end method

.method public static checkResolutionKey(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->values()[Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->keyValue:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "checkResolutionKey() : Resolution key string("

    const-string v1, ") mismatch"

    const-string v3, "DexPolicyService"

    invoke-static {v0, p0, v1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static getResolutionKeyValue(IILjava/lang/String;)Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->values()[Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    iget v3, v2, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->width:I

    if-lt p0, v3, :cond_1

    iget v2, v2, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->height:I

    if-lt p1, v2, :cond_1

    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->keyValue:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object p0, v0, v2

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->FHD:Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->$VALUES:[Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;

    return-object v0
.end method


# virtual methods
.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->height:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$ResolutionType;->width:I

    return p0
.end method
