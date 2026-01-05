.class public final Lcom/android/server/appfunctions/FutureSearchResultsImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mSearchResults:Landroid/app/appsearch/SearchResults;


# direct methods
.method public constructor <init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    iput-object p2, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;
    .locals 2

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    invoke-virtual {p0}, Landroid/app/appsearch/SearchResults;->close()V

    return-void
.end method

.method public final getNextPage()Lcom/android/internal/infra/AndroidFuture;
    .locals 3

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iget-object v1, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v1, p0, v2}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    new-instance p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method
