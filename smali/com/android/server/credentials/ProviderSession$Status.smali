.class final enum Lcom/android/server/credentials/ProviderSession$Status;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/credentials/ProviderSession$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum COMPLETE:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum NOT_STARTED:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum PENDING:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

.field public static final enum SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/server/credentials/ProviderSession$Status;

    const-string/jumbo v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/credentials/ProviderSession$Status;->NOT_STARTED:Lcom/android/server/credentials/ProviderSession$Status;

    new-instance v1, Lcom/android/server/credentials/ProviderSession$Status;

    const-string/jumbo v2, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    new-instance v2, Lcom/android/server/credentials/ProviderSession$Status;

    const-string v3, "CREDENTIALS_RECEIVED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    new-instance v3, Lcom/android/server/credentials/ProviderSession$Status;

    const-string/jumbo v4, "SERVICE_DEAD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    new-instance v4, Lcom/android/server/credentials/ProviderSession$Status;

    const-string/jumbo v5, "SAVE_ENTRIES_RECEIVED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/credentials/ProviderSession$Status;->SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    new-instance v5, Lcom/android/server/credentials/ProviderSession$Status;

    const-string v6, "CANCELED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    new-instance v6, Lcom/android/server/credentials/ProviderSession$Status;

    const-string v7, "EMPTY_RESPONSE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    new-instance v7, Lcom/android/server/credentials/ProviderSession$Status;

    const-string/jumbo v8, "NO_CREDENTIALS_FROM_AUTH_ENTRY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    new-instance v8, Lcom/android/server/credentials/ProviderSession$Status;

    const-string v9, "COMPLETE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/server/credentials/ProviderSession$Status;->COMPLETE:Lcom/android/server/credentials/ProviderSession$Status;

    filled-new-array/range {v0 .. v8}, [Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/ProviderSession$Status;->$VALUES:[Lcom/android/server/credentials/ProviderSession$Status;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/ProviderSession$Status;
    .locals 1

    const-class v0, Lcom/android/server/credentials/ProviderSession$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/ProviderSession$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/ProviderSession$Status;
    .locals 1

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->$VALUES:[Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {v0}, [Lcom/android/server/credentials/ProviderSession$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/credentials/ProviderSession$Status;

    return-object v0
.end method
