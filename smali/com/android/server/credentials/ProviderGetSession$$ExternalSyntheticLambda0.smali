.class public final synthetic Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/credentials/BeginGetCredentialRequest$Builder;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/service/credentials/BeginGetCredentialRequest$Builder;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;->f$0:Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    iput-object p2, p0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;->f$0:Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    check-cast p1, Landroid/credentials/CredentialOption;

    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/service/credentials/BeginGetCredentialOption;

    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/service/credentials/BeginGetCredentialOption;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->addBeginGetCredentialOption(Landroid/service/credentials/BeginGetCredentialOption;)Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
