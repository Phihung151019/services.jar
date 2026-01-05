.class public final Lcom/android/server/credentials/GetCandidateRequestSession;
.super Lcom/android/server/credentials/RequestSession;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;


# instance fields
.field public final mAutofillCallback:Landroid/os/ResultReceiver;

.field public final mAutofillRequestId:I

.field public final mAutofillSessionId:I

.field public final mClientBinder:Landroid/os/IBinder;

.field public mPrimaryProviderComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCandidateCredentialsCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;Landroid/os/IBinder;)V
    .locals 16

    move-object/from16 v15, p11

    const/4 v14, 0x0

    const-string/jumbo v8, "android.credentials.selection.TYPE_GET"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v6, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v14}, Lcom/android/server/credentials/RequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/credentials/GetCandidateRequestSession;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    iput-object v15, v0, Lcom/android/server/credentials/GetCandidateRequestSession;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual/range {p7 .. p7}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "autofill_session_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillSessionId:I

    invoke-virtual/range {p7 .. p7}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "autofill_request_id"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillRequestId:I

    invoke-virtual/range {p7 .. p7}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.credentials.AUTOFILL_RESULT_RECEIVER"

    const-class v3, Landroid/os/ResultReceiver;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, v0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    if-eqz v15, :cond_0

    invoke-virtual {v0, v15}, Lcom/android/server/credentials/RequestSession;->setUpClientCallbackListener(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
    .locals 12

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getCapabilities()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v2, Landroid/credentials/GetCredentialRequest;

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    invoke-static {v0, v2, p1, v3}, Lcom/android/server/credentials/ProviderGetSession;->filterOptions(Ljava/util/List;Landroid/credentials/GetCredentialRequest;Landroid/credentials/CredentialProviderInfo;Ljava/lang/String;)Landroid/credentials/GetCredentialRequest;

    move-result-object v7

    const-string v11, "CredentialManager"

    if-eqz v7, :cond_1

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/android/server/credentials/ProviderGetSession;

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {v2}, Landroid/credentials/GetCredentialRequest;->alwaysSendAppInfoToProvider()Z

    move-result v2

    new-instance v4, Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    invoke-direct {v4}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;-><init>()V

    invoke-virtual {v7}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v9}, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;-><init>(Landroid/service/credentials/BeginGetCredentialRequest$Builder;Ljava/util/Map;)V

    invoke-interface {v5, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    if-eqz v2, :cond_0

    invoke-virtual {v4, v3}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->setCallingAppInfo(Landroid/service/credentials/CallingAppInfo;)Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    :cond_0
    invoke-virtual {v4}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->build()Landroid/service/credentials/BeginGetCredentialRequest;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v10, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    move-object v3, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/credentials/ProviderGetSession;-><init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, p0

    move-object v2, p1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Unable to create provider session for: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "In startProviderSession - provider session created and being added for: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object p0, v3, Lcom/android/server/credentials/GetCandidateRequestSession;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    :cond_2
    iget-object p1, v3, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public final invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/IGetCandidateCredentialsCallback;

    invoke-interface {p0, p1, p2}, Landroid/credentials/IGetCandidateCredentialsCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final invokeClientCallbackSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/credentials/GetCandidateCredentialsResponse;

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/IGetCandidateCredentialsCallback;

    invoke-interface {p0, p1}, Landroid/credentials/IGetCandidateCredentialsCallback;->onResponse(Landroid/credentials/GetCandidateCredentialsResponse;)V

    return-void
.end method

.method public final launchUiWithProviderData(Ljava/util/ArrayList;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    const-string/jumbo v0, "No credentials found"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v1, Landroid/credentials/GetCredentialRequest;

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {v2}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {v4}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    invoke-static {v3, v4, v5}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/credentials/selection/RequestInfo;->newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZZ)Landroid/credentials/selection/RequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Lcom/android/server/credentials/CredentialManagerUi$1;

    iget v5, v1, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    invoke-static {v2, v0, v3, v4, v5}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForAutofill(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {v2, v1, v0, v5}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V

    invoke-virtual {v0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/credentials/selection/ProviderData;

    check-cast v4, Landroid/credentials/selection/GetCredentialProviderData;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance p1, Landroid/credentials/GetCandidateCredentialsResponse;

    iget-object v2, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    invoke-direct {p1, v1, v0, v2}, Landroid/credentials/GetCandidateCredentialsResponse;-><init>(Ljava/util/List;Landroid/content/Intent;Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/IGetCandidateCredentialsCallback;

    invoke-interface {p0, p1}, Landroid/credentials/IGetCandidateCredentialsCallback;->onResponse(Landroid/credentials/GetCandidateCredentialsResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Issue while responding to client with error : "

    const-string v0, "CredentialManager"

    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-void
.end method

.method public final onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "CredentialManager"

    const-string/jumbo v1, "onFinalErrorReceived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "User canceled but session is not being terminated"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v2, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    if-ne v1, v2, :cond_1

    const-string/jumbo p0, "Request has already been completed. This is strange."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "onUiCancellation called but mAutofillCallback not found"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    return-void
.end method

.method public final onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Landroid/credentials/GetCredentialResponse;

    const-string/jumbo p1, "onFinalResponseReceived"

    const-string v0, "CredentialManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string/jumbo v2, "Request has already been completed. This is strange."

    if-ne p1, v1, :cond_0

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo p1, "onFinalResponseReceived sending through final receiver"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p2, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    invoke-virtual {p2, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    return-void

    :cond_2
    const-string/jumbo p1, "onFinalResponseReceived result receiver not found for pinned entry"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    return-void
.end method

.method public final onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "in onStatusChanged with status: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", and source: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CredentialManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "in onProviderStatusChanged - isUiInvocationNeeded"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    return-void

    :cond_0
    const-string/jumbo p1, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    const-string/jumbo p2, "No credentials available"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onUiCancellation(Z)V
    .locals 0

    const-string p0, "CredentialManager"

    const-string/jumbo p1, "User canceled but session is not being terminated"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onUiSelectorInvocationFailure()V
    .locals 1

    const-string/jumbo v0, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    return-void
.end method
