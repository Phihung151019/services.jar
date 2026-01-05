.class final enum Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum linear_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum none:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v0, "none"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->none:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v0, "cgc_dither"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v3, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v0, "degamma"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v0, "gamma"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v6, "linear_matrix"

    const/4 v7, 0x4

    invoke-direct {v0, v6, v7}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->linear_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v6, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v7, "gamma_matrix"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v7, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v8, "hsc48_lcg_s"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v9, "hsc48_lcg_e"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v7, v5}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;ILcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;I)V

    sput-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v9, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v5, "hsc"

    const/16 v10, 0x8

    invoke-direct {v9, v5, v10}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v10, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v5, "scl"

    const/16 v11, 0x9

    invoke-direct {v10, v5, v11}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v11, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v5, "cgc17_enc_s"

    const/16 v12, 0xa

    invoke-direct {v11, v5, v12}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const/16 v5, 0x33

    const-string/jumbo v13, "cgc17_enc_e"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v11, v5}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;ILcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;I)V

    sput-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v5, "cgc17_dec"

    const/16 v14, 0xc

    invoke-direct {v13, v5, v14}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v5, "cgc17_con"

    const/16 v15, 0xd

    invoke-direct {v14, v5, v15}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v15, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v5, "de"

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v15, v5, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v5, "max"

    move-object/from16 v17, v1

    const/16 v1, 0xf

    invoke-direct {v0, v5, v1}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    move-object/from16 v5, v16

    move-object/from16 v1, v17

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    sget v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder$CalibCounter;->nid:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder$CalibCounter;->nid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;I)V
    .locals 0

    iget p3, p3, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id:I

    add-int/lit8 p4, p4, -0x1

    add-int/2addr p4, p3

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;
    .locals 1

    const-class v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    return-object p0
.end method

.method public static values()[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;
    .locals 1

    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v0}, [Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    return-object v0
.end method


# virtual methods
.method public final id()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id:I

    return p0
.end method
