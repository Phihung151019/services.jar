.class public final Lcom/android/server/credentials/ProviderGetSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBeginGetOptionToCredentialOptionMap:Ljava/util/Map;

.field public final mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

.field public final mCompleteRequest:Landroid/credentials/GetCredentialRequest;

.field public final mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    move v0, p4

    move-object p4, p2

    move-object p2, p6

    move-object p6, p5

    move p5, v0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    iput-object p7, p0, Lcom/android/server/credentials/ProviderGetSession;->mCompleteRequest:Landroid/credentials/GetCredentialRequest;

    iput-object p8, p0, Lcom/android/server/credentials/ProviderGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mBeginGetOptionToCredentialOptionMap:Ljava/util/Map;

    new-instance p1, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-static {p10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;-><init>(Lcom/android/server/credentials/ProviderGetSession;Landroid/content/ComponentName;)V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    return-void
.end method

.method public static filterOptions(Ljava/util/List;Landroid/credentials/GetCredentialRequest;Landroid/credentials/CredentialProviderInfo;Ljava/lang/String;)Landroid/credentials/GetCredentialRequest;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Filtering request options for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string/jumbo p0, "Skipping filtering of options for hybrid service"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    const-string p3, "Could not parse hybrid service while filtering options"

    invoke-static {v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/CredentialOption;

    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v2, "Provider allow list specified but does not contain this provider"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v3

    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->isSystemProviderRequired()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    const-string/jumbo v2, "System provider required, but this service is not a system provider"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Option of type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " meets all filteringconditions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Landroid/credentials/GetCredentialRequest$Builder;

    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/credentials/GetCredentialRequest$Builder;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p3}, Landroid/credentials/GetCredentialRequest$Builder;->setCredentialOptions(Ljava/util/List;)Landroid/credentials/GetCredentialRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/credentials/GetCredentialRequest$Builder;->build()Landroid/credentials/GetCredentialRequest;

    move-result-object p0

    return-object p0

    :cond_6
    const-string/jumbo p0, "No options filtered"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    const-class v2, Landroid/credentials/GetCredentialException;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Landroid/credentials/GetCredentialException;

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {p0}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Landroid/credentials/GetCredentialException;

    const-string/jumbo v0, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    invoke-direct {p0, v0}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p0, Landroid/credentials/GetCredentialException;

    const-string/jumbo v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-direct {p0, v0}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final addToInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;Z)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getCredentialEntries()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getAuthenticationActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getRemoteCredentialEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    invoke-virtual {v0, p2}, Lcom/android/server/credentials/ProviderSession;->enforceRemoteEntryRestrictions(Landroid/content/ComponentName;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "CredentialManager"

    const-string/jumbo p1, "Remote entry being dropped as it does not meet the restriction checks."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    return-void

    :cond_4
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Landroid/credentials/selection/Entry;

    invoke-virtual {p1}, Landroid/service/credentials/RemoteEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/service/credentials/GetCredentialRequest;

    iget-object v5, v0, Lcom/android/server/credentials/ProviderGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v0, v0, Lcom/android/server/credentials/ProviderGetSession;->mCompleteRequest:Landroid/credentials/GetCredentialRequest;

    invoke-virtual {v0}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Landroid/service/credentials/GetCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V

    const-string/jumbo v0, "android.service.credentials.extra.GET_CREDENTIAL_REQUEST"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "remote_entry_key"

    invoke-direct {v1, v3, p2, v2, v0}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    new-instance v0, Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    return-void
.end method

.method public final invokeCallbackOnInternalInvalidState$1()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    const-string/jumbo v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final invokeSession()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->setCallback(Lcom/android/server/credentials/ProviderSession;)V

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/BeginGetCredentialRequest;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;)V

    :cond_0
    return-void
.end method

.method public final onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/credentials/ProviderGetSession;->maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    const-class v2, Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/GetCredentialResponse;

    :goto_0
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p1, "CredentialManager"

    const-string/jumbo v0, "Pending intent response contains no credential, or error for a credential entry"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    return-void
.end method

.method public final onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    return-void
.end method

.method public final onProviderResponseFailure(Ljava/lang/Exception;)V
    .locals 2

    instance-of v0, p1, Landroid/credentials/GetCredentialException;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/credentials/GetCredentialException;

    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateFrameworkException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateExceptionStatus()V

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method

.method public final onProviderResponseSuccess(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Landroid/service/credentials/BeginGetCredentialResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Remote provider responded with a valid response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderGetSession;->addToInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;Z)V

    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-static {v0, p1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;Landroid/service/credentials/BeginGetCredentialResponse;)Z

    move-result v0

    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    if-eqz v0, :cond_0

    invoke-virtual {v4, p1, v3, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void

    :cond_0
    invoke-virtual {v4, p1, v3, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method

.method public final onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/credentials/RemoteCredentialService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void

    :cond_0
    const-string p0, "CredentialManager"

    const-string p1, "Component names different in onProviderServiceDied - this should not happen"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onUiEntrySelected with entryType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", and entryKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CredentialManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v6, "action_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "credential_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "authentication_action_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "remote_entry_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_0
    packed-switch v5, :pswitch_data_0

    const-string/jumbo p1, "Unsupported entry type selected"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    return-void

    :pswitch_0
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/service/credentials/Action;

    :goto_1
    if-nez v2, :cond_5

    const-string/jumbo p1, "Unexpected action entry key"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    return-void

    :cond_5
    const-string/jumbo p1, "onActionEntrySelected"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderGetSession;->onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void

    :pswitch_1
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/service/credentials/CredentialEntry;

    :goto_2
    if-nez v2, :cond_7

    const-string/jumbo p1, "Unexpected credential entry key"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    return-void

    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderGetSession;->onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void

    :pswitch_2
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    move-object p1, v2

    goto :goto_3

    :cond_8
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/service/credentials/Action;

    :goto_3
    new-instance v5, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    iget-object v6, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v7, v6, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    iget v7, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mSessionIdProvider:I

    invoke-direct {v5, v7}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;-><init>(I)V

    iget-object v7, v6, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_9

    const-string/jumbo p1, "Unexpected authenticationEntry key"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    return-void

    :cond_9
    sget-object p1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    if-nez p3, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {p3}, Lcom/android/server/credentials/ProviderGetSession;->maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;

    move-result-object v5

    if-eqz v5, :cond_b

    :try_start_0
    iget-object p3, v6, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    move-object v1, p3

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    iput-boolean v0, p3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mHasException:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p3, v0

    const-string v0, "Error while setting authentication metric exception "

    const-string/jumbo v1, "ProviderSessionMetric"

    invoke-static {p3, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v5}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    invoke-interface {v1, p3, v0}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p3}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p3

    if-nez p3, :cond_c

    move-object p3, v2

    goto :goto_5

    :cond_c
    const-string/jumbo v5, "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE"

    const-class v7, Landroid/service/credentials/BeginGetCredentialResponse;

    invoke-virtual {p3, v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/credentials/BeginGetCredentialResponse;

    :goto_5
    invoke-virtual {v6, p3, v0, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    if-eqz p3, :cond_e

    invoke-static {v4, p3}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;Landroid/service/credentials/BeginGetCredentialResponse;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p3, v1}, Lcom/android/server/credentials/ProviderGetSession;->addToInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;Z)V

    :goto_6
    const-string p3, "Additional content received - removing authentication entry"

    invoke-static {v3, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Z

    move-result p2

    if-nez p2, :cond_d

    sget-object p2, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    :cond_d
    return-void

    :cond_e
    :goto_7
    const-string p3, "Additional content not received from authentication entry"

    invoke-static {v3, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_f

    invoke-virtual {v4}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updatePreviousMostRecentAuthEntry()V

    goto :goto_8

    :cond_f
    invoke-virtual {v4}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updatePreviousMostRecentAuthEntry()V

    iget-object p3, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Landroid/credentials/selection/AuthenticationEntry;

    iget-object v0, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/service/credentials/Action;

    iget-object v1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/credentials/selection/AuthenticationEntry;

    invoke-virtual {p3}, Landroid/credentials/selection/AuthenticationEntry;->getSubkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/credentials/selection/AuthenticationEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v6

    invoke-virtual {p3}, Landroid/credentials/selection/AuthenticationEntry;->getFrameworkExtrasIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v4, "authentication_action_key"

    const/4 v7, 0x2

    invoke-direct/range {v3 .. v8}, Landroid/credentials/selection/AuthenticationEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;ILandroid/content/Intent;)V

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    sget-object p2, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void

    :pswitch_3
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_10

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/service/credentials/RemoteEntry;

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderGetSession;->onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void

    :cond_11
    const-string/jumbo p1, "Unexpected remote entry key"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x42312059 -> :sswitch_3
        0x4680f8fd -> :sswitch_2
        0x4806b277 -> :sswitch_1
        0x6e6640d6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final prepareUiData()Landroid/credentials/selection/ProviderData;
    .locals 6

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No data for UI from: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CredentialManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-static {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/credentials/selection/GetCredentialProviderData$Builder;

    iget-object v2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    iget-object v2, v2, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/credentials/selection/GetCredentialProviderData$Builder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/credentials/selection/Entry;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setActionChips(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/credentials/selection/Entry;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setCredentialEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/credentials/selection/AuthenticationEntry;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    if-eqz p0, :cond_5

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/credentials/selection/Entry;

    :cond_5
    :goto_3
    invoke-virtual {v0, v1}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->build()Landroid/credentials/selection/GetCredentialProviderData;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1
.end method
