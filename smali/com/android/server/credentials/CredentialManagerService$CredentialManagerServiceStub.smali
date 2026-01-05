.class public final Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;
.super Landroid/credentials/ICredentialManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/CredentialManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-direct {p0}, Landroid/credentials/ICredentialManager$Stub;-><init>()V

    return-void
.end method

.method public static finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {v0, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledInitialPhase(Lcom/android/server/credentials/metrics/InitialPhaseMetric;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "CredentialManager"

    const-string/jumbo v1, "Unexpected error during metric logging: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/credentials/IClearCredentialStateCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "starting clearCredentialState with callingPackage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CredentialManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v1, v6}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v16

    new-instance v2, Lcom/android/server/credentials/ClearRequestSession;

    iget-object v4, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    move-object v8, v2

    move-object v2, v4

    iget-object v4, v7, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7, v1, v5, v9}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object v10

    invoke-virtual {v0, v5}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v11

    invoke-static/range {v16 .. v16}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    const-string/jumbo v9, "android.credentials.selection.TYPE_UNDEFINED"

    const/4 v15, 0x1

    iget-object v1, v7, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    move-object/from16 v7, p1

    move-object/from16 v17, v3

    move-object v3, v1

    move-object v1, v8

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v15}, Lcom/android/server/credentials/RequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v5, v1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "UNKNOWN"

    const-string/jumbo v3, "No credentials available on this device"

    move-object/from16 v8, p2

    invoke-interface {v8, v0, v3}, Landroid/credentials/IClearCredentialStateCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Issue invoking onError on IClearCredentialStateCallback callback: "

    move-object/from16 v4, v17

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v16
.end method

.method public final executeCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "starting executeCreateCredential with callingPackage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "CredentialManager"

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/credentials/CreateCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v2, v2, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v1, v6}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    new-instance v2, Lcom/android/server/credentials/CreateRequestSession;

    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v7, v4, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/credentials/CreateCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v1, v5, v8}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object v9

    invoke-virtual {v0, v5}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v10

    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v11

    invoke-static/range {v16 .. v16}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    iget-object v1, v4, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    move-object/from16 v8, p2

    move-object v4, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/server/credentials/CreateRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v5, v1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    const-string/jumbo v3, "No create options available."

    move-object/from16 v8, p2

    invoke-interface {v8, v0, v3}, Landroid/credentials/ICreateCredentialCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Issue invoking onError on ICreateCredentialCallback callback: "

    invoke-static {v15, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v16
.end method

.method public final executeGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "starting executeGetCredential with callingPackage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "CredentialManager"

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v16

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v1, v6}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN"

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lcom/android/server/credentials/GetRequestSession;

    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v7, v4, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v1, v5, v8}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object v9

    invoke-virtual {v0, v5}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v10

    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v11

    invoke-static/range {v16 .. v16}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    iget-object v1, v4, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    move-object/from16 v8, p1

    move-object v4, v7

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v14}, Lcom/android/server/credentials/GetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v5, v1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    invoke-virtual {v0, v8, v1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->prepareProviderSessions(Landroid/credentials/GetCredentialRequest;Lcom/android/server/credentials/GetRequestSession;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    const-string/jumbo v2, "No credentials available on this device."

    move-object/from16 v7, p2

    invoke-interface {v7, v0, v2}, Landroid/credentials/IGetCredentialCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Issue invoking onError on IGetCredentialCallback callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v16
.end method

.method public final executePrepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IPrepareGetCredentialCallback;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v2, v2, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, v2, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v2, v1, v7}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    new-instance v2, Lcom/android/server/credentials/PrepareGetRequestSession;

    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v5, v4, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v1, v6, v8}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object v10

    invoke-virtual {v0, v6}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v11

    iget-object v8, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v8}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v12

    invoke-static/range {v17 .. v17}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v13

    iget-object v4, v4, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    move-object/from16 v9, p1

    move-object/from16 v16, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v16}, Lcom/android/server/credentials/PrepareGetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;JLandroid/credentials/IPrepareGetCredentialCallback;)V

    invoke-virtual {v0, v9, v2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->prepareProviderSessions(Landroid/credentials/GetCredentialRequest;Lcom/android/server/credentials/GetRequestSession;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v4, Landroid/credentials/PrepareGetCredentialResponseInternal;

    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"

    invoke-static {v0, v1, v3}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Issue invoking onError on IGetCredentialCallback callback: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v17
.end method

.method public final getCandidateCredentials(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCandidateCredentialsCallback;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-string v2, "Credential Autofill service does not exist on this device."

    const-string v3, " is not the device\'s credential autofill package."

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "starting getCandidateCredentials with callingPackage: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CredentialManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    :try_start_0
    iget-object v6, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v6, v6, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104032c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v7, v7, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_1

    new-instance v6, Lcom/android/server/credentials/GetCandidateRequestSession;

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v9, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v10, v3}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    move-result-object v14

    invoke-virtual {v0, v10}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v15

    invoke-static {v4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v16

    iget-object v8, v2, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    move-object/from16 v17, p3

    invoke-direct/range {v6 .. v17}, Lcom/android/server/credentials/GetCandidateRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCandidateCredentialsCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;Landroid/os/IBinder;)V

    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v1, v10, v6}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v6, v1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    iget-object v1, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    iget v2, v6, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillSessionId:I

    iput v2, v1, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mAutofillSessionId:I

    iget v2, v6, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillRequestId:I

    iput v2, v1, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mAutofillRequestId:I

    invoke-static {v6}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    const-string/jumbo v0, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    const-string/jumbo v2, "No credentials available on this device."

    move-object/from16 v12, p2

    invoke-interface {v12, v0, v2}, Landroid/credentials/IGetCandidateCredentialsCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Issue invoking onError on IGetCredentialCallback callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-object v4

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Couldn\'t determine the identity of the caller."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCredentialProviderServices(II)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    const-string/jumbo v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "android.permission.LIST_ENABLED_CREDENTIAL_PROVIDERS"

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_PROVIDER_SERVICES:Lcom/android/server/credentials/metrics/ApiName;

    sget-object v2, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {v1, v2, v0}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p1, p2, v1, p0}, Landroid/service/credentials/CredentialProviderInfoFactory;->getCredentialProviderServices(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is missing permission: QUERY_ALL_PACKAGES or LIST_ENABLED_CREDENTIAL_PROVIDERS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCredentialProviderServicesForTesting(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    const-string/jumbo v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "android.permission.LIST_ENABLED_CREDENTIAL_PROVIDERS"

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object v1, v1, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p0

    invoke-static {v1, v0, p1, v2, p0}, Landroid/service/credentials/CredentialProviderInfoFactory;->getCredentialProviderServicesForTesting(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is missing permission: QUERY_ALL_PACKAGES or LIST_ENABLED_CREDENTIAL_PROVIDERS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getEnabledProvidersForUser(I)Ljava/util/Set;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "getEnabledProvidersForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "credential_service"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final isEnabledCredentialProviderService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isEnabledCredentialProviderService with componentName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {v3, p2, v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    move-result-object p0

    sget-object p2, Lcom/android/server/credentials/metrics/ApiName;->IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE:Lcom/android/server/credentials/metrics/ApiName;

    sget-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p2, v0, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string/jumbo p0, "isEnabledCredentialProviderService component name does not match requested component"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/credentials/metrics/ApiName;->IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE:Lcom/android/server/credentials/metrics/ApiName;

    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p0, p1, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "provided component name does not match does not match requesting component"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isServiceEnabled()Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string/jumbo p0, "credential_manager"

    const-string/jumbo v2, "enable_credential_manager"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final prepareProviderSessions(Landroid/credentials/GetCredentialRequest;Lcom/android/server/credentials/GetRequestSession;)Ljava/util/List;
    .locals 12

    invoke-static {}, Lcom/android/server/credentials/CredentialManagerService;->isCredentialDescriptionApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/credentials/CredentialDescription;

    invoke-virtual {v8}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    invoke-interface {v9, v11}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v9, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    invoke-virtual {v8}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v8}, Landroid/credentials/CredentialDescription;->getCredentialEntries()Ljava/util/List;

    move-result-object v8

    invoke-direct {v9, v6, v10, v8}, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/credentials/CredentialOption;

    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v6}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v8, v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mElementKeys:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v5, v1, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    iget-object v8, p2, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    iget-object v9, v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mPackageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Landroid/credentials/CredentialOption;

    new-instance v4, Lcom/android/server/credentials/ProviderRegistryGetSession;

    move-object v7, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/credentials/ProviderRegistryGetSession;-><init>(Landroid/content/Context;ILcom/android/server/credentials/GetRequestSession;Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/credentials/CredentialOption;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v4, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, v7, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v7

    goto :goto_2

    :cond_7
    move-object v7, p2

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p0, v7, p1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_8
    move-object v7, p2

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p0, v7, p1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_3
    invoke-static {v7}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    return-object p0
.end method

.method public final registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerCredentialDescription with callingPackage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/credentials/CredentialManagerService;->isCredentialDescriptionApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    const/16 v1, 0x80

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/credentials/RegisterCredentialDescriptionRequest;->getCredentialDescriptions()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    sub-int/2addr p2, v0

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Feature not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setEnabledProviders(Ljava/util/List;Ljava/util/List;ILandroid/credentials/ISetEnabledProvidersCallback;)V
    .locals 14

    move-object/from16 v1, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v3, v4}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Issue with invoking response: "

    const-string v5, "CredentialManager"

    sget-object v6, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    if-nez v3, :cond_0

    :try_start_0
    sget-object p0, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    invoke-static {p0, v6, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    const-string/jumbo p0, "permission_denied"

    const-string v0, "Caller is missing WRITE_SECURE_SETTINGS permission"

    invoke-interface {v1, p0, v0}, Landroid/credentials/ISetEnabledProvidersCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    invoke-static {v0, v6, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    invoke-static {v5, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string/jumbo v12, "setEnabledProviders"

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v9, p3

    invoke-static/range {v7 .. v13}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v7, Ljava/util/HashSet;

    move-object/from16 v8, p2

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v8}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "credential_service"

    const-string v10, ":"

    invoke-static {v10, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v9, v7, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v8, "credential_service_primary"

    invoke-static {v10, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v8, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz v7, :cond_1

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "Failed to store setting containing enabled or primary providers"

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    invoke-static {v0, v6, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    const-string/jumbo v0, "failed_setting_store"

    invoke-interface {v1, v0, p0}, Landroid/credentials/ISetEnabledProvidersCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :try_start_2
    sget-object p0, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    sget-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {p0, v0, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    invoke-interface {v1}, Landroid/credentials/ISetEnabledProvidersCallback;->onResponse()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    invoke-static {v0, v6, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    invoke-static {v5, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catch_2
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    invoke-static {v0, v6, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    const-string v0, "Issue with invoking error response: "

    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterCredentialDescription with callingPackage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/credentials/CredentialManagerService;->isCredentialDescriptionApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p1}, Landroid/credentials/UnregisterCredentialDescriptionRequest;->getCredentialDescriptions()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    sub-int/2addr v0, p2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Feature not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
