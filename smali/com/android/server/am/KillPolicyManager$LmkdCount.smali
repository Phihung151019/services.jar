.class public final enum Lcom/android/server/am/KillPolicyManager$LmkdCount;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/KillPolicyManager$LmkdCount;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;


# instance fields
.field private mADJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v0, "CACHED_APP_MAX_ADJ"

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v3, 0x384

    const-string v4, "CACHED_APP_MIN_ADJ"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v4, 0x35c

    const-string/jumbo v5, "SEEDBED_ADJ"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v5, 0x352

    const-string/jumbo v6, "PICKED_ADJ"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v6, 0x33e

    const-string v7, "ARCHIVED_ADJ"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v7, 0x320

    const-string/jumbo v8, "SERVICE_B_ADJ"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v8, 0x2bc

    const-string/jumbo v9, "PREVIOUS_APP_ADJ"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v9, 0x258

    const-string v10, "HOME_APP_ADJ"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v10, 0x1f4

    const-string/jumbo v11, "SERVICE_ADJ"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v11, 0x190

    const-string v12, "HEAVY_WEIGHT_APP_ADJ"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v12, 0x15e

    const-string v13, "BORA_APP_ADJ"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v13, 0x12c

    const-string v14, "BACKUP_APP_ADJ"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v13}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v14, 0xfa

    const-string/jumbo v15, "PERCEPTIBLE_LOW_APP_ADJ"

    const/16 v2, 0xc

    invoke-direct {v13, v15, v2, v14}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v2, 0xe1

    const-string/jumbo v15, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v0, 0xc8

    const-string/jumbo v2, "PERCEPTIBLE_APP_ADJ"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v15, v2, v1, v0}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v1, 0x64

    const-string/jumbo v2, "VISIBLE_APP_ADJ"

    move-object/from16 v19, v3

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v2, "FOREGROUND_APP_ADJ"

    const/16 v3, 0x10

    move-object/from16 v20, v0

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v1

    move-object/from16 v1, v18

    filled-new-array/range {v1 .. v17}, [Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->mADJ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$LmkdCount;
    .locals 1

    const-class v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;
    .locals 1

    sget-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$LmkdCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$LmkdCount;

    return-object v0
.end method


# virtual methods
.method public final getADJ()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->mADJ:I

    return p0
.end method
