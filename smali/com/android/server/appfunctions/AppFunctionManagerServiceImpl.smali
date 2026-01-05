.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
.super Landroid/app/appfunctions/IAppFunctionManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

.field public final mAppFunctionLoggerHelper:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

.field public final mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

.field public final mContext:Landroid/content/Context;

.field public final mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

.field public final mLocks:Ljava/util/Map;

.field public final mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

.field public final mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/appfunctions/RemoteServiceCaller;Lcom/android/server/appfunctions/CallerValidator;Lcom/android/server/appfunctions/ServiceHelper;Lcom/android/server/appfunctions/ServiceConfig;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;Landroid/content/pm/PackageManagerInternal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/appfunctions/RemoteServiceCaller;",
            "Lcom/android/server/appfunctions/CallerValidator;",
            "Lcom/android/server/appfunctions/ServiceHelper;",
            "Lcom/android/server/appfunctions/ServiceConfig;",
            "Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;",
            "Landroid/content/pm/PackageManagerInternal;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    iput-object p6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLoggerWrapper:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    new-instance p3, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)V

    invoke-direct {p2, p1, p3}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;-><init>(Landroid/content/Context;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;)V

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    new-instance p2, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    invoke-direct {p2, p1}, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionLoggerHelper:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    return-void
.end method

.method public static getRuntimeMetadataGenericDocument(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .locals 4

    invoke-static {p0, p1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    const-string/jumbo v1, "app_functions_runtime"

    invoke-direct {v0, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, p2, v0, v3}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/appsearch/AppSearchBatchResult;

    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/GenericDocument;

    invoke-direct {p1, p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Function "

    const-string v0, " does not exist"

    invoke-static {p2, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;
    .locals 2

    instance-of v0, p0, Ljava/util/concurrent/CompletionException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    instance-of v0, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$AppFunctionNotFoundException;

    if-eqz v0, :cond_1

    const/16 v0, 0x3eb

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_2

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;

    if-eqz v0, :cond_3

    const/16 v0, 0x3ea

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d0

    :goto_0
    new-instance v1, Landroid/app/appfunctions/AppFunctionException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "AppFunctionManagerServiceImpl"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionsState(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V

    iget-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionLoggerHelper:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    invoke-virtual {p2, p1}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->dump(Landroid/util/IndentingPrintWriter;)V

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpMetadataSync(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->initializeSafeExecuteAppFunctionCallback(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;I)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    move-result-object v6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/appfunctions/CallerValidator;->validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/server/appfunctions/CallerValidator;->verifyTargetUserHandle(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v5

    sget-object v8, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v5

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Landroid/app/appfunctions/AppFunctionException;

    const/16 p2, 0x3e8

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final executeAppFunctionInternal(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/os/IBinder;)V
    .locals 9

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-interface {v1, v0, v3}, Lcom/android/server/appfunctions/CallerValidator;->verifyEnterprisePolicyIsAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/app/appfunctions/AppFunctionException;

    const/16 p1, 0x7d2

    const-string p2, "Cannot run on a user with a restricted enterprise policy"

    invoke-direct {p0, p1, p2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Landroid/app/appfunctions/AppFunctionException;

    const/16 p1, 0x3e9

    const-string/jumbo p2, "Target package name cannot be empty."

    invoke-direct {p0, p1, p2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, p0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    move v1, p2

    move-object v5, v2

    move v2, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/appfunctions/CallerValidator;->verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    move-object v2, v5

    new-instance p3, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;

    move-object v5, p1

    move-object v7, p4

    move-object v4, p5

    move-object v8, p6

    move v6, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;ILandroid/os/ICancellationSignal;Landroid/os/IBinder;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;

    const/4 p2, 0x1

    invoke-direct {p1, v1, v4, p2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public getLockForPackage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    check-cast v1, Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initializeSafeExecuteAppFunctionCallback(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;I)Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
    .locals 3

    new-instance v0, Landroid/app/appfunctions/AppFunctionExecutionRecord;

    invoke-direct {v0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->setExecutionRecord(Landroid/content/Context;)V

    new-instance v1, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    new-instance v2, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$3;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;I)V

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionLoggerHelper:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appfunctions/AppFunctionLoggerHelper;)V

    invoke-direct {v1, p2, v2, p1, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;Ljava/util/function/Consumer;Landroid/app/appfunctions/AppFunctionExecutionRecord;)V

    return-object v1
.end method

.method public final setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-interface {v0, p1}, Lcom/android/server/appfunctions/CallerValidator;->validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    move-object v7, p5

    move-object p0, v0

    :try_start_1
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, p1}, Landroid/app/appfunctions/IAppFunctionEnabledCallback;->onError(Landroid/os/ParcelableException;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    const-string p1, "AppFunctionManagerServiceImpl"

    const-string p2, "Failed to report the exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final setAppFunctionEnabledInternalLocked(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Failed writing updated doc to AppSearch due to "

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchManager;

    if-eqz p0, :cond_1

    new-instance p2, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string/jumbo v2, "appfunctions-db"

    invoke-direct {p2, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object p2

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V

    :try_start_0
    new-instance p0, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    invoke-static {p3, p4, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getRuntimeMetadataGenericDocument(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    new-instance p2, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    invoke-direct {p2, p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Landroid/app/appfunctions/AppFunctionRuntimeMetadata;)V

    invoke-virtual {p2, p1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->setEnabled(I)Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object p0

    new-instance p1, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {p1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/app/appsearch/GenericDocument;

    aput-object p0, p2, v1

    invoke-virtual {p1, p2}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, v2, p0, p3}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchBatchResult;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "AppSearchManager not found for user:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    invoke-static {v0, p1, p0}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/server/appfunctions/MetadataSyncAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest(Z)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    :cond_0
    return-void
.end method
