.class public final Lcom/android/server/credentials/ProviderCreateSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

.field public final mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/CreateRequestSession;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/CreateCredentialRequest;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    move v0, p4

    move-object p4, p2

    move-object p2, p6

    move-object p6, p5

    move p5, v0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    iput-object p7, p0, Lcom/android/server/credentials/ProviderCreateSession;->mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    new-instance p1, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-static {p8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;-><init>(Lcom/android/server/credentials/ProviderCreateSession;Landroid/content/ComponentName;)V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    return-void
.end method


# virtual methods
.method public final invokeSession()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->setCallback(Lcom/android/server/credentials/ProviderSession;)V

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/BeginCreateCredentialRequest;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;)V

    :cond_0
    return-void
.end method

.method public final onCreateEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "CredentialManager"

    const-string/jumbo v2, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    if-nez p1, :cond_0

    const-string/jumbo v3, "pendingIntentResponse is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/credentials/CreateCredentialException;

    invoke-direct {v3, v2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION"

    const-class v4, Landroid/credentials/CreateCredentialException;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/credentials/CreateCredentialException;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    const-string/jumbo v2, "Pending intent contains provider exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Landroid/credentials/CreateCredentialException;

    const-string/jumbo v2, "android.credentials.CreateCredentialException.TYPE_USER_CANCELED"

    invoke-direct {v3, v2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/credentials/CreateCredentialException;

    invoke-direct {v3, v2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Landroid/credentials/CreateCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_6

    move-object p1, v0

    goto :goto_2

    :cond_6
    const-string/jumbo v3, "android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE"

    const-class v4, Landroid/credentials/CreateCredentialResponse;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/CreateCredentialResponse;

    :goto_2
    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V

    return-void

    :cond_7
    const-string/jumbo p0, "onSaveEntrySelected - no response or error found in pending intent response"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    invoke-interface {v2, p0, v0}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    return-void
.end method

.method public final onProviderResponseFailure(Ljava/lang/Exception;)V
    .locals 2

    instance-of v0, p1, Landroid/credentials/CreateCredentialException;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/credentials/CreateCredentialException;

    invoke-virtual {p1}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

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
    .locals 8

    check-cast p1, Landroid/service/credentials/BeginCreateCredentialResponse;

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

    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getRemoteCreateEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;)V

    invoke-interface {v0, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    if-eqz v2, :cond_1

    iget-object v0, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

    iget-object v4, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    invoke-virtual {v4, v0}, Lcom/android/server/credentials/ProviderSession;->enforceRemoteEntryRestrictions(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Remote entry being dropped as it does not meet the restrictionchecks."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/credentials/selection/Entry;

    invoke-virtual {v2}, Landroid/service/credentials/RemoteEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "android.service.credentials.extra.CREATE_CREDENTIAL_REQUEST"

    iget-object v4, v4, Lcom/android/server/credentials/ProviderCreateSession;->mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "remote_entry_key"

    invoke-direct {v1, v4, v0, v5, v6}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    new-instance v4, Landroid/util/Pair;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    iget-object v2, v2, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getRemoteCreateEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {v4, p1, v3, v0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void

    :cond_3
    iget-object v0, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {v4, p1, v3, v0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

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
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    const-string v4, "CredentialManager"

    const-string/jumbo v5, "save_entry_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "remote_entry_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "Unsupported entry type selected"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v0, v2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/service/credentials/RemoteEntry;

    goto :goto_1

    :cond_2
    :goto_0
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_3

    const-string/jumbo p0, "Unexpected remote entry key"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v0, v2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderCreateSession;->onCreateEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void

    :cond_4
    iget-object p1, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    move-object p1, v2

    goto :goto_2

    :cond_5
    iget-object p1, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/service/credentials/CreateEntry;

    :goto_2
    if-nez p1, :cond_6

    const-string/jumbo p0, "Unexpected save entry key"

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v0, v2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderCreateSession;->onCreateEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-void
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

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;

    iget-object v2, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    iget-object v2, v2, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/credentials/selection/Entry;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->setSaveEntries(Ljava/util/List;)Landroid/credentials/selection/CreateCredentialProviderData$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    if-eqz p0, :cond_4

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/credentials/selection/Entry;

    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/CreateCredentialProviderData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->build()Landroid/credentials/selection/CreateCredentialProviderData;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object v1
.end method
