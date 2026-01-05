.class public final synthetic Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/credentials/CredentialManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/CredentialManagerService;

    iput-object p2, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget p0, p0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Landroid/credentials/CredentialProviderInfo;

    new-instance v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    iget-object v3, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {v2, v0, v3, p0}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "CredentialManagerServiceImpl constructed for: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CredentialManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
