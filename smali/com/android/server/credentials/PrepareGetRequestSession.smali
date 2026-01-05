.class public final Lcom/android/server/credentials/PrepareGetRequestSession;
.super Lcom/android/server/credentials/GetRequestSession;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

.field public final mPrimaryProviders:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;JLandroid/credentials/IPrepareGetCredentialCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/server/credentials/GetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {p1, p7}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V

    iput-object p14, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    iput-object p10, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrimaryProviders:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Provider Status changed with status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", and source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CredentialManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string/jumbo v0, "Unexpected source"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v2, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne v1, v2, :cond_1

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/server/credentials/GetRequestSession;->handleEmptyAuthenticationSelection(Landroid/content/ComponentName;)V

    return-void

    :cond_1
    sget-object v2, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne v1, v2, :cond_c

    invoke-virtual {v0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v1, v0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {v2}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"

    invoke-static {v1, v2, v3}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    move-result v1

    const-string v2, "EXCEPTION while mPendingCallback.onResponse"

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/android/server/credentials/RequestSession;->getProviderDataForUi()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x0

    if-nez v6, :cond_4

    move-object v7, v3

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    move-object v7, v5

    :goto_0
    const/4 v5, 0x0

    if-nez v6, :cond_5

    move v8, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    :goto_1
    if-nez v6, :cond_6

    :goto_2
    move v9, v5

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v5, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    const/4 v9, 0x3

    invoke-direct {v5, v9}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v5, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;

    const/4 v9, 0x1

    invoke-direct {v5, v9}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    goto :goto_2

    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/credentials/ProviderSession;

    invoke-virtual {v10}, Lcom/android/server/credentials/ProviderSession;->prepareUiData()Landroid/credentials/selection/ProviderData;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrimaryProviders:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    iget-object v10, v0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Landroid/credentials/GetCredentialRequest;

    iget-object v3, v0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {v3}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {v5}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v13, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    invoke-static {v3, v5, v13}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroid/credentials/selection/RequestInfo;->newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZLjava/util/List;Z)Landroid/credentials/selection/RequestInfo;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v10, v0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    invoke-virtual {v10, v3, v1, v5}, Lcom/android/server/credentials/CredentialManagerUi;->createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;

    move-result-object v3

    :cond_a
    move-object v10, v3

    :try_start_0
    iget-object v0, v0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    new-instance v5, Landroid/credentials/PrepareGetCredentialResponseInternal;

    invoke-direct/range {v5 .. v10}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    invoke-interface {v0, v5}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_b
    :try_start_1
    iget-object v0, v0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    new-instance v5, Landroid/credentials/PrepareGetCredentialResponseInternal;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    invoke-interface {v0, v5}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_6
    return-void
.end method
