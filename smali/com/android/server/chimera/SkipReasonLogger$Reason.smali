.class final enum Lcom/android/server/chimera/SkipReasonLogger$Reason;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/chimera/SkipReasonLogger$Reason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "LRU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v2, "CACHED_EMPTY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v2, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string/jumbo v3, "PERSISTENT_OR_PROTECTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v3, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string/jumbo v4, "PICKED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v5, "CACC"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v5, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v6, "INTERVAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string/jumbo v7, "VISIBLE_SCREEN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string/jumbo v8, "WAKELOCK"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string/jumbo v9, "SERVICE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v9, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string/jumbo v10, "UID"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v10, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v11, "ADJ_OR_PROC_STATE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    new-instance v11, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v12, "KILL_ONLY_ONE_SVC_AT_A_TIME"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v13, "HAS_CONNECTION_PROVIDER"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v12}, [Lcom/android/server/chimera/SkipReasonLogger$Reason;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->$VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/SkipReasonLogger$Reason;
    .locals 1

    const-class v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;
    .locals 1

    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->$VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v0}, [Lcom/android/server/chimera/SkipReasonLogger$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/SkipReasonLogger$Reason;

    return-object v0
.end method
