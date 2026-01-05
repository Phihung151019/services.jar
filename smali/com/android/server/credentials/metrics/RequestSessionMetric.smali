.class public final Lcom/android/server/credentials/metrics/RequestSessionMetric;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

.field public final mCandidateBrowsingPhaseMetric:Ljava/util/List;

.field public final mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

.field public final mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

.field public mSequenceCounter:I

.field public final mSessionIdTrackTwo:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    iput p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSessionIdTrackTwo:I

    new-instance v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-direct {v0, p1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    new-instance v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    invoke-direct {v0, p1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    new-instance v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-direct {v0, p1, p2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    return-void
.end method


# virtual methods
.method public final collectChosenClassType(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x14

    invoke-static {v0, p1}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    iput-object p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenClassType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Unexpected error collecting chosen class type metadata: "

    const-string/jumbo v0, "RequestSessionMetric"

    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final collectChosenMetricViaCandidateTransfer(Lcom/android/server/credentials/metrics/CandidatePhaseMetric;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    :try_start_0
    iget v0, p1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    iput v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenUid:I

    iget-wide v0, p1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    iput-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mServiceBeganTimeNanoseconds:J

    iget-wide v0, p1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    iput-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    iget-wide v0, p1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    iput-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    iget-object p1, p1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    iput-object p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Unexpected error during metric candidate to final transfer: "

    const-string/jumbo v0, "RequestSessionMetric"

    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final collectChosenProviderStatus(I)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Unexpected error setting chosen provider status metric: "

    const-string/jumbo v0, "RequestSessionMetric"

    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Unexpected error during final phase provider status metric logging: "

    const-string/jumbo p2, "RequestSessionMetric"

    invoke-static {p0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final collectFrameworkException(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Unexpected error during metric logging: "

    const-string/jumbo v0, "RequestSessionMetric"

    invoke-static {p0, p1, v0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V
    .locals 4

    const-string/jumbo v0, "RequestSessionMetric"

    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    :try_start_0
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/android/server/credentials/metrics/RequestSessionMetric$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected error during get request count map metric logging: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-object v1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string/jumbo p1, "Unexpected error collecting get flow initial metric: "

    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    :try_start_0
    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getOemUiPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUid:I

    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getFallbackUiPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFallbackUiUid:I

    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getOemUiUsageStatus()Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    move-result-object p1

    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus$1;->$SwitchMap$android$credentials$selection$IntentCreationResult$OemUiUsageStatus:[I

    invoke-virtual {p1}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->ordinal()I

    move-result p1

    aget p1, p2, p1

    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->UNKNOWN:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    const/4 p3, 0x1

    if-eq p1, p3, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_SPECIFIED_BUT_NOT_ENABLED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_SPECIFIED_BUT_NOT_FOUND:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_NOT_SPECIFIED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->SUCCESS:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    :cond_4
    :goto_0
    iput-object p2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Unexpected error during ui configuration result collection: "

    const-string/jumbo p2, "RequestSessionMetric"

    invoke-static {p0, p1, p2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final collectUiResponseData(J)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    iput-wide p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Unexpected error collecting ui response metric: "

    const-string/jumbo p2, "RequestSessionMetric"

    invoke-static {p0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateMetricsOnResponseReceived(Ljava/util/Map;Landroid/content/ComponentName;)V
    .locals 0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/credentials/ProviderSession;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object p1, p1, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectChosenMetricViaCandidateTransfer(Lcom/android/server/credentials/metrics/CandidatePhaseMetric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception upon candidate to chosen metric transfer: "

    const-string/jumbo p2, "RequestSessionMetric"

    invoke-static {p0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
