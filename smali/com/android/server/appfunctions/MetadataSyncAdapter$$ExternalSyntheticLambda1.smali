.class public final synthetic Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

.field public final synthetic f$1:Landroid/app/appsearch/AppSearchManager$SearchContext;

.field public final synthetic f$2:Landroid/app/appsearch/AppSearchManager$SearchContext;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/MetadataSyncAdapter;Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;ZLcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    iput-object p2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/app/appsearch/AppSearchManager$SearchContext;

    iput-object p3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/app/appsearch/AppSearchManager$SearchContext;

    iput-boolean p4, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$4:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/app/appsearch/AppSearchManager$SearchContext;

    iget-object v2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/app/appsearch/AppSearchManager$SearchContext;

    iget-boolean v3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$3:Z

    iget-object p0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$4:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v4, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object v5, v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    sget-object v6, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v4, v5, v6, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object v5, v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    invoke-direct {v1, v5, v6, v2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {v4}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
