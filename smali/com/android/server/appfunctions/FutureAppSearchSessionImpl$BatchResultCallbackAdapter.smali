.class public final Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final mFuture:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onSystemError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
