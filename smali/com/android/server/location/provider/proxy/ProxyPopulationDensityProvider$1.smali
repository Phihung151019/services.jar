.class public final Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic val$callback:Lcom/android/server/location/fudger/LocationFudgerCache$1;


# direct methods
.method public constructor <init>(Lcom/android/server/location/fudger/LocationFudgerCache$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;->val$callback:Lcom/android/server/location/fudger/LocationFudgerCache$1;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;->val$callback:Lcom/android/server/location/fudger/LocationFudgerCache$1;

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudgerCache$1;->onError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "ProxyPopulationDensityProvider"

    const-string/jumbo p1, "remote exception while querying default coarsening level"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final run(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Landroid/location/provider/IPopulationDensityProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IPopulationDensityProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;->val$callback:Lcom/android/server/location/fudger/LocationFudgerCache$1;

    invoke-interface {p1, p0}, Landroid/location/provider/IPopulationDensityProvider;->getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V

    return-void
.end method
