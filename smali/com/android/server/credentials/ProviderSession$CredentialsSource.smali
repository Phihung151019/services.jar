.class final enum Lcom/android/server/credentials/ProviderSession$CredentialsSource;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/credentials/ProviderSession$CredentialsSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/ProviderSession$CredentialsSource;

.field public static final enum AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

.field public static final enum REGISTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

.field public static final enum REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    const-string/jumbo v1, "REMOTE_PROVIDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    new-instance v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    const-string/jumbo v2, "REGISTRY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REGISTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    new-instance v2, Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    const-string v3, "AUTH_ENTRY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->$VALUES:[Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/ProviderSession$CredentialsSource;
    .locals 1

    const-class v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/ProviderSession$CredentialsSource;
    .locals 1

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->$VALUES:[Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {v0}, [Lcom/android/server/credentials/ProviderSession$CredentialsSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    return-object v0
.end method
