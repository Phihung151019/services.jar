.class public abstract Lcom/android/server/credentials/RequestSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCancellationSignal:Landroid/os/CancellationSignal;

.field public final mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

.field public final mClientCallback:Ljava/lang/Object;

.field public final mClientRequest:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

.field public final mDeathRecipient:Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

.field public final mHybridService:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public final mProviders:Ljava/util/Map;

.field public final mRequestId:Landroid/os/IBinder;

.field public final mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

.field public mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

.field public final mSessionCallback:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    new-instance v0, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;-><init>(Lcom/android/server/credentials/RequestSession;)V

    iput-object v0, p0, Lcom/android/server/credentials/RequestSession;->mDeathRecipient:Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

    sget-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->IN_PROGRESS:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    iput-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/credentials/RequestSession;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mSessionCallback:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    iput p4, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    iput-object p6, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iput-object p11, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    const/4 p6, 0x1

    const/4 p7, 0x0

    invoke-direct {p2, p3, p7, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    new-instance p2, Lcom/android/server/credentials/CredentialManagerUi;

    invoke-direct {p2, p1, p4, p0, p10}, Lcom/android/server/credentials/CredentialManagerUi;-><init>(Landroid/content/Context;ILcom/android/server/credentials/RequestSession;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104032d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result p1

    new-instance p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;

    new-instance p3, Ljava/security/SecureRandom;

    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/android/server/credentials/metrics/RequestSessionMetric;-><init>(II)V

    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-static {p8}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCodeFromRequestInfo(Ljava/lang/String;)I

    move-result p1

    :try_start_0
    iget-object p2, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    iput-wide p12, p2, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceStartedTimeNanoseconds:J

    iput p5, p2, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCallerUid:I

    iput p1, p2, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo p2, "Unexpected error collecting initial phase metric start info: "

    const-string/jumbo p3, "RequestSessionMetric"

    invoke-static {p1, p2, p3}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance p2, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/RequestSession;)V

    invoke-virtual {p1, p2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    if-eqz p14, :cond_0

    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/os/IInterface;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->setUpClientCallbackListener(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final finishSession(IZ)V
    .locals 4

    const-string v0, "CredentialManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "finishing session with propagateCancellation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    new-instance v0, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    sget-object p2, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v1, v0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p2}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->collectAverages(Ljava/util/Map;)V

    iget p2, v0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/2addr p2, v2

    iput p2, v0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {v1, p2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledAggregateCandidate(Lcom/android/server/credentials/metrics/CandidateAggregateMetric;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string/jumbo v1, "Unexpected error during aggregate candidate logging "

    const-string/jumbo v3, "RequestSessionMetric"

    invoke-static {p2, v1, v3}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p2, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p2

    sget-object v1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    if-eq p1, p2, :cond_3

    sget-object p2, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p2

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/android/server/credentials/metrics/ApiStatus;->USER_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p2

    const/4 v3, 0x0

    if-ne p1, p2, :cond_2

    invoke-virtual {v0, v3, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p2

    if-ne p1, p2, :cond_4

    sget-object p2, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    invoke-virtual {v0, v3, p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v0, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    :try_start_1
    iget-object v1, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    iget v3, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/2addr v3, v2

    iput v3, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledFinalPhase(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V

    iget-object v1, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    iget v3, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/2addr v3, v2

    iput v3, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledNoUidFinal(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string/jumbo p2, "Unexpected error during final metric emit: "

    const-string/jumbo v0, "RequestSessionMetric"

    invoke-static {p1, p2, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mSessionCallback:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    iget v0, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object p2, p2, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v1, p2, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object p2, p2, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getProviderDataAndInitiateUi()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataForUi()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/RequestSession;->launchUiWithProviderData(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final getProviderDataForUi()Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "For ui, provider data size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v3, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    const/4 v4, 0x1

    :try_start_0
    iget v5, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {v1, v5, v3}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledCandidatePhase(Ljava/util/Map;ILcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    iget v5, v3, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    sget-object v6, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL:Lcom/android/server/credentials/metrics/ApiName;

    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result v6

    if-eq v5, v6, :cond_0

    iget v3, v3, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    sget-object v5, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_VIA_REGISTRY:Lcom/android/server/credentials/metrics/ApiName;

    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result v5

    if-ne v3, v5, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget v2, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {v2, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledCandidateGetMetric(ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string/jumbo v2, "Unexpected error during candidate metric emit: "

    const-string/jumbo v3, "RequestSessionMetric"

    invoke-static {v1, v2, v3}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    return-object v0

    :cond_2
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/credentials/ProviderSession;

    invoke-virtual {v1}, Lcom/android/server/credentials/ProviderSession;->prepareUiData()Landroid/credentials/selection/ProviderData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method public abstract initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
.end method

.method public abstract invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract invokeClientCallbackSuccess(Ljava/lang/Object;)V
.end method

.method public final isAnyProviderPending()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    iget-object v0, v0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isUiInvocationNeeded()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    iget-object v2, v0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-static {v2}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, v0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v2, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne v0, v2, :cond_0

    :cond_2
    return v1
.end method

.method public abstract launchUiWithProviderData(Ljava/util/ArrayList;)V
.end method

.method public onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onUiCancellation(Z)V
.end method

.method public abstract onUiSelectorInvocationFailure()V
.end method

.method public final respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v2, "CredentialManager"

    if-ne v0, v1, :cond_0

    const-string/jumbo p0, "Request has already been completed. This is strange."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Issue while responding to client with error : "

    invoke-static {v0, p2, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo p2, "TYPE_USER_CANCELED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->USER_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    :goto_1
    return-void
.end method

.method public final respondToClientWithResponseAndFinish(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v2, "CredentialManager"

    if-ne v0, v1, :cond_0

    const-string/jumbo p0, "Request has already been completed. This is strange."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->invokeClientCallbackSuccess(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "Issue while responding to client with a response : "

    invoke-static {v1, p1, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    return-void
.end method

.method public final setUpClientCallbackListener(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/os/IInterface;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/os/IInterface;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mDeathRecipient:Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CredentialManager"

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
