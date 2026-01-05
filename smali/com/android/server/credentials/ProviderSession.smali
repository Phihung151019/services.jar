.class public abstract Lcom/android/server/credentials/ProviderSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;


# instance fields
.field public final mCallbacks:Lcom/android/server/credentials/RequestSession;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mProviderCancellationSignal:Landroid/os/ICancellationSignal;

.field public final mProviderRequest:Ljava/lang/Object;

.field public mProviderResponse:Ljava/lang/Object;

.field public mProviderResponseSet:Ljava/lang/Boolean;

.field public final mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

.field public final mProviderSessionUid:I

.field public final mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

.field public mStatus:Lcom/android/server/credentials/ProviderSession$Status;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->NOT_STARTED:Lcom/android/server/credentials/ProviderSession$Status;

    iput-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponseSet:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    move-object p2, p3

    check-cast p2, Lcom/android/server/credentials/RequestSession;

    iput-object p2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    iput-object p4, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    if-nez p4, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p5}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionUid:I

    new-instance p1, Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    check-cast p3, Lcom/android/server/credentials/RequestSession;

    iget-object p2, p3, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget p2, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSessionIdTrackTwo:I

    invoke-direct {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    return-void
.end method

.method public static generateUniqueId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z
    .locals 1

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final enforceRemoteEntryRestrictions(Landroid/content/ComponentName;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "CredentialManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p0, "Remote entry being dropped as it is not from the service configured by the OEM."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x100000

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.PROVIDE_REMOTE_CREDENTIALS"

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    return v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting info for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public abstract invokeSession()V
.end method

.method public abstract onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
.end method

.method public abstract prepareUiData()Landroid/credentials/selection/ProviderData;
.end method

.method public final startCandidateMetrics()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    iget-object v0, v0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v0, v0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    iget-wide v0, v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceStartedTimeNanoseconds:J

    iput-wide v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "Unexpected error during candidate setup metric logging: "

    const-string/jumbo v1, "ProviderSessionMetric"

    invoke-static {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 10

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    sget-object v3, Lcom/android/server/credentials/ProviderSession$Status;->COMPLETE:Lcom/android/server/credentials/ProviderSession$Status;

    if-eq p1, v3, :cond_6

    sget-object v3, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p1, v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p1}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v3, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v3, v2

    :goto_5
    sget-object v4, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    if-ne p2, v4, :cond_7

    move v4, v2

    goto :goto_6

    :cond_7
    move v4, v1

    :goto_6
    iget-object v5, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v6, v5, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    sget-object v7, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    sget-object v8, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    iget v9, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionUid:I

    if-eqz v4, :cond_9

    :try_start_0
    iget-object v4, v5, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    iput v9, v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    if-eqz v0, :cond_8

    iput-boolean v1, v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    invoke-virtual {v8}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result v0

    iput v0, v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderStatus:I

    goto :goto_8

    :cond_8
    if-eqz v3, :cond_b

    iput-boolean v2, v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    invoke-virtual {v7}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result v0

    iput v0, v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderStatus:I

    goto :goto_8

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v9, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    if-eqz v0, :cond_a

    iput-boolean v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    invoke-virtual {v8}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result v0

    iput v0, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_a
    if-eqz v3, :cond_b

    iput-boolean v2, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    invoke-virtual {v7}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result v0

    iput v0, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    const-string/jumbo v1, "Unexpected error during candidate update metric logging: "

    const-string/jumbo v2, "ProviderSessionMetric"

    invoke-static {v0, v1, v2}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, p1, p0, p2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method
