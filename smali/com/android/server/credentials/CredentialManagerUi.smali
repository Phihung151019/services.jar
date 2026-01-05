.class public final Lcom/android/server/credentials/CredentialManagerUi;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallbacks:Lcom/android/server/credentials/RequestSession;

.field public final mContext:Landroid/content/Context;

.field public final mEnabledProviders:Ljava/util/Set;

.field public final mResultReceiver:Lcom/android/server/credentials/CredentialManagerUi$1;

.field public mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/credentials/RequestSession;Ljava/util/Set;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/credentials/CredentialManagerUi$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/credentials/CredentialManagerUi$1;-><init>(Lcom/android/server/credentials/CredentialManagerUi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Lcom/android/server/credentials/CredentialManagerUi$1;

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    iput-object p3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    iput-object p4, p0, Lcom/android/server/credentials/CredentialManagerUi;->mEnabledProviders:Ljava/util/Set;

    sget-object p1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    return-void
.end method


# virtual methods
.method public final createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;
    .locals 11

    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mEnabledProviders:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    invoke-static {v0, v4, v3, v1, v2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getCredentialProviderServices(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v9, p0, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Lcom/android/server/credentials/CredentialManagerUi$1;

    iget v10, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2, p1, v4}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V

    invoke-virtual {p1}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p3, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    iget p1, p1, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mSessionIdCaller:I

    const-string/jumbo p2, "com.android.server.credentials.CredentialManagerUi.SESSION_ID_TRACK_ONE"

    invoke-virtual {v7, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "com.android.server.credentials.CredentialManagerUi.SESSION_ID_TRACK_TWO"

    iget p2, p3, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSessionIdTrackTwo:I

    invoke-virtual {v7, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    const/4 v6, 0x0

    const/high16 v8, 0x2000000

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
