.class public final Lcom/android/server/location/provider/PassiveLocationProviderManager;
.super Lcom/android/server/location/provider/LocationProviderManager;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final calculateRequestDelayMillis(JLjava/util/Collection;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getServiceState()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "registered"

    return-object p0

    :cond_0
    const-string/jumbo p0, "unregistered"

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;
    .locals 2

    new-instance p0, Landroid/location/provider/ProviderRequest$Builder;

    invoke-direct {p0}, Landroid/location/provider/ProviderRequest$Builder;-><init>()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/location/provider/ProviderRequest$Builder;->setIntervalMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest$Builder;->build()Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/PassiveLocationProviderManager;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public final setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot mock the passive provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 1

    instance-of v0, p1, Lcom/android/server/location/provider/PassiveLocationProvider;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-super {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    return-void
.end method
