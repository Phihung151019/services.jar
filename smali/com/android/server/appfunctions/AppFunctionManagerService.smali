.class public Lcom/android/server/appfunctions/AppFunctionManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(I)V

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v2, p1, v1, v3}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;-><init>(Landroid/content/Context;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;Ljava/util/concurrent/Executor;)V

    new-instance v3, Lcom/android/server/appfunctions/CallerValidatorImpl;

    invoke-direct {v3, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/appfunctions/ServiceHelperImpl;

    invoke-direct {v4, p1}, Lcom/android/server/appfunctions/ServiceHelperImpl;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/server/appfunctions/ServiceConfigImpl;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v8, Lcom/android/server/appfunctions/AppFunctionExecutors;->LOGGING_THREAD_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-direct {v6, v1, v8, v9}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;-><init>(Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$AppFunctionsLoggerClock;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/appfunctions/RemoteServiceCaller;Lcom/android/server/appfunctions/CallerValidator;Lcom/android/server/appfunctions/ServiceHelper;Lcom/android/server/appfunctions/ServiceConfig;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;Landroid/content/pm/PackageManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "app_function"

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    sget-object p1, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppSearch Manager not found for user: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppFunctionManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v0, v3}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;-><init>(Landroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V

    new-instance v4, Landroid/app/appsearch/observer/ObserverSpec$Builder;

    invoke-direct {v4}, Landroid/app/appsearch/observer/ObserverSpec$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/app/appsearch/observer/ObserverSpec$Builder;->build()Landroid/app/appsearch/observer/ObserverSpec;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    new-instance v6, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    new-instance v6, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v3, v0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;-><init>(Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v3, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;Z)V

    return-void
.end method
