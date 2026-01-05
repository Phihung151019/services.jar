.class public final synthetic Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ExplicitHealthCheckController;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    iput-object p2, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/util/List;

    iget-object v1, v0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;

    invoke-virtual {v1, p1}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;->accept(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/List;Ljava/util/Set;)V

    iget-object p0, v0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    const-string/jumbo p1, "get health check requested packages"

    invoke-virtual {v0, p1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "ExplicitHealthCheckController"

    const-string v2, "Getting health check requested packages"

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, v0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;)V

    invoke-direct {v0, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p1, v0}, Landroid/service/watchdog/IExplicitHealthCheckService;->getRequestedPackages(Landroid/os/RemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "ExplicitHealthCheckController"

    const-string v1, "Failed to get health check requested packages"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
