.class public final Lcom/android/server/credentials/ProviderRegistryGetSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final CREDENTIAL_ENTRY_KEY:Ljava/lang/String; = "credential_key"


# instance fields
.field public final mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

.field public final mCredentialDescriptionRegistry:Lcom/android/server/credentials/CredentialDescriptionRegistry;

.field mCredentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final mCredentialProviderPackageName:Ljava/lang/String;

.field public final mElementKeys:Ljava/util/Set;

.field public final mUiCredentialEntries:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/credentials/GetRequestSession;Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/credentials/CredentialOption;)V
    .locals 7

    new-instance v4, Landroid/content/ComponentName;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move-object v3, p3

    move-object v2, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mUiCredentialEntries:Ljava/util/Map;

    invoke-static {v5}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialDescriptionRegistry:Lcom/android/server/credentials/CredentialDescriptionRegistry;

    iput-object p4, v0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    iput-object p5, v0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialProviderPackageName:Ljava/lang/String;

    new-instance p0, Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p0, v0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mElementKeys:Ljava/util/Set;

    sget-object p0, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    iput-object p0, v0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    return-void
.end method


# virtual methods
.method public final invokeSession()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    iget-object v0, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mElementKeys:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialDescriptionRegistry:Lcom/android/server/credentials/CredentialDescriptionRegistry;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialProviderPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/credentials/CredentialDescription;

    invoke-virtual {v3}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    invoke-virtual {v3}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v3}, Landroid/credentials/CredentialDescription;->getCredentialEntries()Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v4, v6, v3}, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialEntries:Ljava/util/List;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REGISTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    iget-object v0, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialEntries:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v4, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/credentials/metrics/ProviderSessionMetric$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lcom/android/server/credentials/metrics/ProviderSessionMetric$$ExternalSyntheticLambda0;-><init>(ILjava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-direct {v0, v3, v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    iput-object v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    return-void
.end method

.method public final onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    return-void
.end method

.method public final onProviderResponseFailure(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic onProviderResponseSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Set;

    return-void
.end method

.method public final onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
    .locals 0

    return-void
.end method

.method public final onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CredentialManager"

    const-string/jumbo v1, "credential_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "Unsupported entry type selected"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mUiCredentialEntries:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/credentials/CredentialEntry;

    if-nez p1, :cond_1

    const-string/jumbo p0, "Unexpected credential entry key"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    move-result p1

    const/4 p2, -0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_4

    invoke-virtual {p3}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    const-class v2, Landroid/credentials/GetCredentialException;

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Landroid/credentials/GetCredentialException;

    :goto_0
    if-eqz p1, :cond_3

    const-string/jumbo p2, "Pending intent contains provider exception"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object p1, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Landroid/credentials/GetCredentialException;

    const-string/jumbo p2, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    invoke-direct {p1, p2}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance p1, Landroid/credentials/GetCredentialException;

    const-string/jumbo p2, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-direct {p1, p2}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p3}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const-string/jumbo p3, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    const-class v1, Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/credentials/GetCredentialResponse;

    :goto_2
    if-eqz v1, :cond_8

    check-cast p2, Lcom/android/server/credentials/GetRequestSession;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p0, v1}, Lcom/android/server/credentials/GetRequestSession;->onFinalResponseReceived(Landroid/content/ComponentName;Landroid/credentials/GetCredentialResponse;)V

    return-void

    :cond_8
    const-string p0, "CredentialEntry does not have a credential or a pending intent result"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final prepareUiData()Landroid/credentials/selection/ProviderData;
    .locals 10

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CredentialManager"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No date for UI coming from: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string/jumbo p0, "response is null when preparing ui data. This is strange."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Landroid/credentials/selection/GetCredentialProviderData$Builder;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/credentials/selection/GetCredentialProviderData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setActionChips(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/credentials/CredentialEntry;

    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mUiCredentialEntries:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/credentials/selection/Entry;

    invoke-virtual {v3}, Landroid/service/credentials/CredentialEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v3

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/service/credentials/GetCredentialRequest;

    iget-object v8, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v9, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    check-cast v9, Landroid/credentials/CredentialOption;

    invoke-static {v9}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/service/credentials/GetCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V

    const-string/jumbo v8, "android.service.credentials.extra.GET_CREDENTIAL_REQUEST"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v7, "credential_key"

    invoke-direct {v5, v7, v4, v3, v6}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setCredentialEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->build()Landroid/credentials/selection/GetCredentialProviderData;

    move-result-object p0

    return-object p0
.end method
