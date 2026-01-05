.class public final Lcom/android/server/appfunctions/MetadataSyncAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_RESULT_COUNT_PER_PAGE:I


# instance fields
.field public final mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

.field public final mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

.field public mCurrentSyncTask:Ljava/util/concurrent/Future;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mLock:Ljava/lang/Object;

.field public final mMetadataSyncLogger:Lcom/android/server/appfunctions/MetadataSyncLogger;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec;->getResultCountPerPage()I

    move-result v0

    sput v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->DEFAULT_RESULT_COUNT_PER_PAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/app/appsearch/AppSearchManager;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    new-instance p1, Lcom/android/server/appfunctions/NamedThreadFactory;

    const-string p2, "AppFunctionSyncExecutors"

    invoke-direct {p1, p2}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    new-instance p1, Lcom/android/server/appfunctions/MetadataSyncLogger;

    invoke-direct {p1}, Lcom/android/server/appfunctions/MetadataSyncLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mMetadataSyncLogger:Lcom/android/server/appfunctions/MetadataSyncLogger;

    return-void
.end method

.method public static convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/AppSearchResult;

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getAddedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 7

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appfunctions/FutureAppSearchSession;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v1}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/appsearch/SearchSpec$Builder;->setResultCountPerPage(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p4

    new-instance v1, Landroid/app/appsearch/PropertyPath;

    invoke-direct {v1, p2}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/app/appsearch/PropertyPath;

    invoke-direct {v2, p3}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p4, p1, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addProjectionPaths(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object p1

    check-cast p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p4

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p4, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {p4, v1, p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p4}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/appsearch/SearchResult;

    invoke-virtual {p4}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v2, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->close()V

    return-object v0

    :goto_2
    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
.end method

.method public static getPackageToFunctionIdMapWithRetry(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/MetadataSyncLogger;)Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appfunctions/FutureAppSearchSession;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/appfunctions/MetadataSyncLogger;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->DEFAULT_RESULT_COUNT_PER_PAGE:I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    if-ne v4, v0, :cond_3

    const-string/jumbo v1, "b/400587895: getPackageToFunctionIdMapWithRetry is retrying for schemaType = "

    const-string/jumbo v2, "MetadataSyncAdapter"

    invoke-static {v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc8

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    add-int/2addr v3, p3

    goto :goto_1

    :cond_1
    const-string/jumbo p2, "getPackageToFunctionIdMapWithRetry schemaType : "

    const-string p3, ", functionIdCount : "

    const-string v1, ", retryFunctionIdCount : "

    invoke-static {v4, p2, p1, p3, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/android/server/appfunctions/MetadataSyncLogger;->log(Ljava/lang/String;)V

    if-eq v3, v0, :cond_2

    const-string/jumbo p2, "b/400587895: First search yields "

    const-string p3, " results, but the second one with higher page size yields "

    const-string p4, " results. schemaType = "

    invoke-static {v4, v3, p2, p3, p4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p0

    :cond_3
    return-object v1
.end method

.method public static getRemovedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final submitSyncRequest(Z)Lcom/android/internal/infra/AndroidFuture;
    .locals 8

    iget-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mMetadataSyncLogger:Lcom/android/server/appfunctions/MetadataSyncLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "submitSyncRequest forceSync : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appfunctions/MetadataSyncLogger;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string/jumbo v1, "apps-db"

    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v4

    new-instance v0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string/jumbo v1, "appfunctions-db"

    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v5

    new-instance v7, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v7}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v2, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/MetadataSyncAdapter;Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;ZLcom/android/internal/infra/AndroidFuture;)V

    iget-object p0, v3, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p1, v3, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v3, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, v3, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, v3, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    monitor-exit p0

    return-object v7

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;Z)V

    return-void
.end method

.method public trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trySyncAppFunctionMetadataBlocking start forceSync : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mMetadataSyncLogger:Lcom/android/server/appfunctions/MetadataSyncLogger;

    invoke-virtual {v4, v3}, Lcom/android/server/appfunctions/MetadataSyncLogger;->log(Ljava/lang/String;)V

    const-string v3, "AppFunctionStaticMetadata"

    const-string/jumbo v5, "functionId"

    const-string/jumbo v6, "packageName"

    move-object/from16 v7, p1

    invoke-static {v7, v3, v5, v6, v4}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMapWithRetry(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/MetadataSyncLogger;)Landroid/util/ArrayMap;

    move-result-object v3

    const-string v7, "AppFunctionRuntimeMetadata"

    invoke-static {v1, v7, v5, v6, v4}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMapWithRetry(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/MetadataSyncLogger;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getAddedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {v3, v5}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getRemovedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v7

    const/4 v9, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x0

    goto/16 :goto_7

    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "removedFunctionsDiffMap remove : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/server/appfunctions/MetadataSyncLogger;->log(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->createAppFunctionRuntimeSchema(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->createParentAppFunctionRuntimeSchema()Landroid/app/appsearch/AppSearchSchema;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "MetadataSyncAdapter"

    new-instance v10, Landroid/app/appsearch/SetSchemaRequest$Builder;

    invoke-direct {v10}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    invoke-virtual {v10, v9}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/appsearch/AppSearchSchema;

    invoke-virtual {v11}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getPackageNameFromSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x8000080

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v2, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v15, v13, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    const/16 p1, 0x0

    const-string/jumbo v8, "Signing info not found for package: "

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v15, v8, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const/16 p1, 0x0

    :try_start_1
    const-string/jumbo v8, "SHA256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v13}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v13

    if-eqz v13, :cond_8

    array-length v15, v13

    if-nez v15, :cond_7

    goto :goto_5

    :cond_7
    aget-object v13, v13, p1

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    goto :goto_5

    :catch_0
    const/16 p1, 0x0

    const-string/jumbo v8, "Package name info not found for package: "

    invoke-virtual {v8, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_8
    :goto_5
    if-nez v14, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v11}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v8

    new-instance v13, Landroid/app/appsearch/PackageIdentifier;

    invoke-direct {v13, v12, v14}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v10, v8, v9, v13}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    iget-object v8, v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    iget-object v8, v8, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    iget-object v8, v8, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->agentPackageItemList:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v13, p1

    :goto_6
    if-ge v13, v12, :cond_a

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$PackageItem;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setSchemaTypeVisibilityForAgentPackages packageName : "

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v14, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v9

    new-instance v15, Landroid/app/appsearch/PackageIdentifier;

    iget-object v0, v14, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$PackageItem;->packageName:Ljava/lang/String;

    iget-object v14, v14, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$PackageItem;->sha256CertificateBytes:[B

    invoke-direct {v15, v0, v14}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    const/4 v0, 0x1

    invoke-virtual {v10, v9, v0, v15}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_6

    :cond_a
    invoke-virtual {v11}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v10, v0, v8}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-object/from16 v0, p0

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_b
    const/16 p1, 0x0

    invoke-virtual {v10}, Landroid/app/appsearch/SetSchemaRequest$Builder;->build()Landroid/app/appsearch/SetSchemaRequest;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v3

    new-instance v5, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v5, v2, v0, v8}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/SetSchemaResponse;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    const-string/jumbo v2, "app_functions_runtime"

    invoke-direct {v0, v2}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p1

    :goto_8
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    goto :goto_9

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v3

    new-instance v5, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    invoke-direct {v5, v2, v0, v7}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchBatchResult;

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_a

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeDocumentBatchResult failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/server/appfunctions/MetadataSyncLogger;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_f
    :goto_a
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    move/from16 v2, p1

    :goto_b
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x1

    new-array v9, v8, [Landroid/app/appsearch/GenericDocument;

    new-instance v10, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    invoke-direct {v10, v3, v7}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object v7

    aput-object v7, v9, p1

    invoke-virtual {v0, v9}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    goto :goto_c

    :cond_10
    const/4 v8, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_11
    invoke-virtual {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object v0

    check-cast v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    new-instance v3, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v0, v5}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchBatchResult;

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_d

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "putDocumentBatchResult failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/server/appfunctions/MetadataSyncLogger;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_13
    :goto_d
    const-string/jumbo v0, "trySyncAppFunctionMetadataBlocking end"

    invoke-virtual {v4, v0}, Lcom/android/server/appfunctions/MetadataSyncLogger;->log(Ljava/lang/String;)V

    return-void
.end method
