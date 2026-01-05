.class public final Lcom/android/server/location/geofence/GeofenceManager;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastLocation:Landroid/location/Location;

.field public final mLocationEnabledChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

.field public mLocationManager:Landroid/location/LocationManager;

.field public final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

.field public final mLocationPermissionsListener:Lcom/android/server/location/geofence/GeofenceManager$1;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mLock:Ljava/lang/Object;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

.field public final mUserChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

.field public final mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/geofence/GeofenceManager;I)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/geofence/GeofenceManager;I)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$1;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/geofence/GeofenceManager$1;

    const-string v0, "GeofencingService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    return-void
.end method


# virtual methods
.method public final getLastLocation()Landroid/location/Location;
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getLocationManager()Landroid/location/LocationManager;
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/location/LocationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isActive(Lcom/android/server/location/listeners/RemovableListenerRegistration;)Z
    .locals 2

    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    iget-boolean v0, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getCurrentUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->isVisibleUserId(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 13

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v8, v6

    :cond_0
    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    check-cast v10, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    iget-object v11, v10, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v11, v1, v2}, Landroid/location/Geofence;->isExpired(J)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    iget-object v11, v10, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v11, v5}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v5

    if-eqz v0, :cond_0

    iget-object v11, v10, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    invoke-virtual {v0, v11}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iput-object v0, v10, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    iget-object v11, v10, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    invoke-virtual {v11, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v11

    iput v11, v10, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    :cond_2
    iget-object v11, v10, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v11}, Landroid/location/Geofence;->getRadius()F

    move-result v11

    iget v10, v10, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    sub-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    cmpg-double v12, v10, v8

    if-gez v12, :cond_0

    move-wide v8, v10

    goto :goto_0

    :cond_3
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-gez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v0

    invoke-static {p0, p1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide v0, 0x415b774000000000L    # 7200000.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-long p0, p0

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    move-result-wide p0

    :goto_1
    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/location/LocationRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda0;-><init>(Landroid/location/Location;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onRegister()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    iget-object v2, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/geofence/GeofenceManager$1;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 11

    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    check-cast p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    iget-object p0, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method public final onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 11

    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    check-cast p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    iget-object p0, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method public final onUnregister()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    iget-object v2, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, v0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/geofence/GeofenceManager$1;

    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Landroid/location/LocationRequest;

    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    move-result-object p1

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string/jumbo v1, "fused"

    invoke-virtual {p1, v1, p2, v0, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final unregisterWithService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
