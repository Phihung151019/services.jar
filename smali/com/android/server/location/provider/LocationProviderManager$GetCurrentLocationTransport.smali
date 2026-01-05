.class public final Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;


# instance fields
.field public final mCallback:Landroid/location/ILocationCallback;


# direct methods
.method public constructor <init>(Landroid/location/ILocationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/location/ILocationCallback;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    return-void
.end method


# virtual methods
.method public final deliverOnFlushComplete(I)V
    .locals 0

    return-void
.end method

.method public final deliverOnLocationChanged(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    invoke-virtual {p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/location/ILocationCallback;->onLocation(Landroid/location/Location;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/location/ILocationCallback;->onLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda27;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda27;-><init>(Ljava/lang/RuntimeException;I)V

    check-cast p0, Landroid/os/HandlerExecutor;

    invoke-virtual {p0, p2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
