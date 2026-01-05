.class public final Lcom/android/server/credentials/CredentialManagerUi$1;
.super Landroid/os/ResultReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/CredentialManagerUi;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/CredentialManagerUi;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi$1;->this$0:Lcom/android/server/credentials/CredentialManagerUi;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 8

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerUi$1;->this$0:Lcom/android/server/credentials/CredentialManagerUi;

    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    sget-object v3, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    iput-object v3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    invoke-virtual {v1}, Lcom/android/server/credentials/RequestSession;->onUiSelectorInvocationFailure()V

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    invoke-virtual {v1}, Lcom/android/server/credentials/RequestSession;->onUiSelectorInvocationFailure()V

    return-void

    :cond_1
    iput-object v3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    invoke-static {p2}, Landroid/credentials/selection/UserSelectionDialogResult;->fromResultData(Landroid/os/Bundle;)Landroid/credentials/selection/UserSelectionDialogResult;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string/jumbo p1, "RequestSessionMetric"

    iget-object p2, v1, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v3, "CredentialManager"

    if-ne p2, v0, :cond_2

    const-string/jumbo p0, "Request has already been completed. This is strange."

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p2, v1, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p0, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result p0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getProviderId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v1, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/credentials/ProviderSession;

    if-nez p2, :cond_4

    const-string/jumbo p0, "providerSession not found in onUiSelection. This is strange."

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p2, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v3, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    iget-object v1, v1, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    :try_start_0
    new-instance v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sget-object v7, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v7}, Lcom/android/server/credentials/metrics/EntryEnum;->getMetricCode()I

    move-result v7

    iput v7, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    iput v5, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntryKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/credentials/metrics/EntryEnum;->getMetricCodeFromString(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    iget v4, v4, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    iput v4, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    iget-object v4, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v6, "Unexpected error collecting browsing metric: "

    invoke-static {v4, v6, p1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntryKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntrySubkey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getPendingIntentProviderResponse()Landroid/credentials/selection/ProviderPendingIntentResponse;

    move-result-object p0

    invoke-virtual {p2, v4, v6, p0}, Lcom/android/server/credentials/ProviderSession;->onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    iget-object p0, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int p2, p0, v3

    if-ne p2, v2, :cond_6

    iget-object p2, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    sub-int/2addr p0, v2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    :try_start_1
    iget p2, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    if-ne p2, v5, :cond_5

    const-string p0, "An authentication entry was not clicked"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_5
    iget p2, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/2addr p2, v2

    iput p2, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {p0, p2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledAuthenticationMetric(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    const-string/jumbo p2, "Unexpected error during auth entry metric emit: "

    invoke-static {p0, p2, p1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/android/server/credentials/RequestSession;->onUiCancellation(Z)V

    return-void

    :cond_8
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    invoke-virtual {v1, v2}, Lcom/android/server/credentials/RequestSession;->onUiCancellation(Z)V

    return-void
.end method
