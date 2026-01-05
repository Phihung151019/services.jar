.class public final synthetic Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$1:Landroid/app/appsearch/observer/ObserverSpec;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;


# direct methods
.method public synthetic constructor <init>(Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/observer/ObserverSpec;

    iput-object p2, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "android"

    iget-object v1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/observer/ObserverSpec;

    iget-object v2, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;

    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    :try_start_0
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/appsearch/GlobalSearchSession;->registerObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0
    :try_end_0
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
