.class public final enum Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/storage/Column$DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v1, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string/jumbo v2, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v2, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string/jumbo v3, "NUMERIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v3, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v4, "BLOB"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v4, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string/jumbo v5, "REAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->$VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->$VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0
.end method
