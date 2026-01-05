.class public final Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Lcom/samsung/android/knox/location/IGeofencing$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;


# instance fields
.field public final mActiveGeofenceList:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public final mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mLocation:Landroid/location/Location;

.field public mLocationManager:Landroid/location/LocationManager;

.field public final mReceiver:Lcom/android/server/enterprise/geofencing/GeofenceService$1;

.field public final mUserRemovedReceiver:Lcom/android/server/enterprise/geofencing/GeofenceService$1;


# direct methods
.method public static -$$Nest$mcheckMonitoring(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 10

    const-string/jumbo v1, "checkMonitoring - EX"

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sput-object v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v7, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v7, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinTimeParameter()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinDistanceParameter()F

    move-result v6

    sget-object v8, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "GeofenceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/location/IGeofencing$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GeofenceService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance p0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;
    .locals 7

    new-instance v0, Lcom/samsung/android/knox/location/BoundingBox;

    check-cast p0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/knox/location/BoundingBox;-><init>(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)V

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v5, v3, v5

    if-gez v5, :cond_0

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_0
    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_1
    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v5, v3, v5

    if-lez v5, :cond_2

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_2
    iget-object v5, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v5, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z
    .locals 6

    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object p0, p1, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double p0, v0, v4

    if-gtz p0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double p0, v0, v4

    if-ltz p0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v0, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double p0, v2, v0

    if-gtz p0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide p0, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double p0, v2, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .locals 20

    move-object/from16 v0, p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [D

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    aput-wide v6, v2, v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v5, v0

    move v0, v4

    move v6, v0

    :goto_1
    if-ge v0, v1, :cond_5

    aget-wide v7, v3, v0

    cmpl-double v9, v7, p3

    const/4 v10, 0x1

    if-lez v9, :cond_1

    move v9, v10

    goto :goto_2

    :cond_1
    move v9, v4

    :goto_2
    aget-wide v11, v3, v5

    cmpl-double v13, v11, p3

    if-lez v13, :cond_2

    move v13, v10

    goto :goto_3

    :cond_2
    move v13, v4

    :goto_3
    if-eq v9, v13, :cond_4

    aget-wide v13, v2, v5

    aget-wide v15, v2, v0

    sub-double/2addr v13, v15

    sub-double v17, p3, v7

    mul-double v17, v17, v13

    sub-double/2addr v11, v7

    div-double v17, v17, v11

    add-double v17, v17, v15

    cmpg-double v5, p1, v17

    if-gtz v5, :cond_4

    if-nez v6, :cond_3

    move v6, v10

    goto :goto_4

    :cond_3
    move v6, v4

    :cond_4
    :goto_4
    add-int/lit8 v5, v0, 0x1

    move/from16 v19, v5

    move v5, v0

    move/from16 v0, v19

    goto :goto_1

    :cond_5
    return v6
.end method

.method public static checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z
    .locals 14

    iget v0, p1, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object p0, p1, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, p0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v8, p0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    add-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v4, 0x40b8e30000000000L    # 6371.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    iget-wide p0, p1, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    cmpg-double p0, v2, p0

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    check-cast p1, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iget-object v0, p1, Lcom/samsung/android/knox/location/PolygonalGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-static {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/samsung/android/knox/location/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/knox/location/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result p0

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    check-cast p1, Lcom/samsung/android/knox/location/LinearGeofence;

    iget-object v0, p1, Lcom/samsung/android/knox/location/LinearGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-static {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/samsung/android/knox/location/LinearGeofence;->optimizedPoints:Ljava/util/List;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result p0

    if-ne p0, v1, :cond_3

    :goto_0
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    div-int/lit8 v4, v0, 0x2

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v6, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    iget-object v8, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v8, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v10, p0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v10, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v8, v10

    mul-double/2addr v8, v6

    new-instance v6, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v6, v4, v5, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static deserializeGeoFence([B)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static findCollinear(Ljava/util/List;)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    move v6, v3

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_9

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v11, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v13, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move/from16 v16, v5

    const/4 v15, 0x1

    iget-wide v4, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v17, v13, v4

    mul-double v17, v17, v11

    iget-wide v11, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v19, v4

    iget-wide v3, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v19, v19, v3

    mul-double v19, v19, v11

    add-double v19, v19, v17

    iget-wide v11, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v3, v13

    mul-double/2addr v3, v11

    add-double v3, v3, v19

    const-wide/16 v11, 0x0

    cmpl-double v3, v3, v11

    if-nez v3, :cond_3

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    move v3, v15

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v8, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v10, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v5, v8, v10

    if-gez v5, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v8, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v10, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v5, v8, v10

    if-gez v5, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    move v5, v15

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v8, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v10, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v8, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v10, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v16, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v15, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static serializeGeoFence(Ljava/lang/Object;)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static validatePolygonalGeofence(Ljava/util/List;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v3, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v5, v3, v5

    if-gtz v5, :cond_1

    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_1

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_1

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final declared-synchronized checkDeviceInsideOrOutsideGeo(ZLandroid/location/Location;)Ljava/util/List;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/Geofence;

    invoke-static {p2, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->sendIntenttoAdmins(Ljava/util/List;)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    monitor-exit p0

    return-object v1

    :cond_4
    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/Geofence;)I
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v1, Lcom/samsung/android/knox/location/Geofence;->type:I

    const-wide/16 v3, 0x0

    const-string/jumbo v5, "createGeofence"

    const-string v6, "GeofenceService"

    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    check-cast v1, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v6, v1, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v8, v1, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    cmpg-double v3, v8, v3

    if-gtz v3, :cond_0

    goto/16 :goto_19

    :cond_0
    iget-wide v3, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpl-double v8, v3, v8

    if-gtz v8, :cond_33

    const-wide v8, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, v3, v8

    if-ltz v3, :cond_33

    iget-wide v3, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v6, v3, v8

    if-gtz v6, :cond_33

    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpg-double v3, v3, v8

    if-gez v3, :cond_1

    goto/16 :goto_19

    :cond_1
    invoke-static {v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_19

    :cond_2
    invoke-virtual {v0, v2, v7, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return v1

    :cond_4
    const/4 v14, 0x0

    const-wide v15, 0x3ee2cc82c7677f8dL    # 8.964E-6

    move-wide/from16 v17, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    check-cast v1, Lcom/samsung/android/knox/location/PolygonalGeofence;

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v5, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_33

    iget-object v5, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v5, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v5, v23

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v3, :cond_5

    goto/16 :goto_19

    :cond_5
    invoke-static/range {v23 .. v23}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v25

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    iget-wide v10, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    cmpl-double v6, v10, v17

    if-nez v6, :cond_6

    move/from16 p1, v4

    move/from16 v31, v7

    move-object/from16 v24, v23

    goto/16 :goto_7

    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-wide v21, 0x3f747ae147ae147bL    # 0.005

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    mul-double/2addr v10, v15

    move v15, v14

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v15, v8, :cond_12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    if-ne v15, v8, :cond_7

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    :goto_1
    move/from16 v16, v15

    goto :goto_2

    :cond_7
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v9, v15, 0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    goto :goto_1

    :goto_2
    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move/from16 p1, v4

    iget-wide v3, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double v3, v14, v3

    cmpl-double v3, v3, v17

    if-nez v3, :cond_9

    cmpl-double v3, v14, v17

    if-ltz v3, :cond_8

    sub-double v14, v14, v21

    iput-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto :goto_3

    :cond_8
    add-double v14, v14, v21

    iput-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    :cond_9
    :goto_3
    iget-wide v3, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v14, v3, v14

    cmpl-double v14, v14, v17

    if-nez v14, :cond_b

    cmpl-double v14, v3, v17

    if-ltz v14, :cond_a

    sub-double v3, v3, v21

    iput-wide v3, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto :goto_4

    :cond_a
    add-double v3, v3, v21

    iput-wide v3, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    :cond_b
    :goto_4
    iget-wide v3, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v14, v8, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double/2addr v3, v14

    iget-wide v14, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v29, v3

    iget-wide v3, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double/2addr v14, v3

    div-double v3, v29, v14

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 v29, v3

    iget-wide v3, v8, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move/from16 v31, v7

    move-object v15, v8

    iget-wide v7, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v3, v7

    div-double v3, v3, v19

    iget-wide v7, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v32, v7

    iget-wide v7, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double v7, v32, v7

    div-double v7, v7, v19

    invoke-direct {v14, v3, v4, v7, v8}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    div-double v3, v26, v29

    neg-double v3, v3

    mul-double v7, v3, v3

    add-double v7, v7, v26

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double v7, v10, v7

    cmpl-double v32, v29, v17

    move-wide/from16 v34, v3

    if-lez v32, :cond_c

    iget-wide v3, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v3

    iget-wide v3, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v3, v36, v3

    if-ltz v3, :cond_d

    :cond_c
    cmpg-double v3, v29, v17

    move/from16 p2, v3

    if-gez v3, :cond_e

    iget-wide v3, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v29, v3

    iget-wide v3, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v3, v29, v3

    if-lez v3, :cond_e

    :cond_d
    iget-wide v3, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v7, v7, v34

    add-double/2addr v7, v3

    sub-double v3, v7, v3

    iget-wide v14, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v14, v14, v34

    add-double/2addr v14, v3

    div-double v14, v14, v34

    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v14, v15, v7, v8}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    if-lez v32, :cond_f

    iget-wide v3, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v29, v3

    iget-wide v3, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v3, v29, v3

    if-gtz v3, :cond_10

    :cond_f
    if-gez p2, :cond_11

    iget-wide v3, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v29, v3

    iget-wide v3, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v3, v29, v3

    if-gez v3, :cond_11

    :cond_10
    iget-wide v3, v14, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v7, v7, v34

    sub-double v7, v3, v7

    sub-double v3, v7, v3

    iget-wide v14, v14, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v14, v14, v34

    add-double/2addr v14, v3

    div-double v14, v14, v34

    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v14, v15, v7, v8}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_5
    add-int/lit8 v15, v16, 0x1

    move/from16 v4, p1

    move/from16 v7, v31

    const/4 v3, 0x2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_12
    move/from16 p1, v4

    move/from16 v31, v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v14, v7, :cond_13

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide v15, v7

    iget-wide v7, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v17, v7

    iget-wide v7, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v7, v9

    sub-double v7, v17, v7

    move-wide/from16 v17, v7

    iget-wide v7, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v3, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v3, v15

    sub-double/2addr v7, v3

    sub-double v3, v17, v7

    sub-double v9, v15, v9

    div-double/2addr v3, v9

    mul-double v9, v15, v3

    add-double/2addr v9, v7

    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v7, v3, v4, v9, v10}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v4, v14, 0x1

    move/from16 v43, v5

    move v5, v3

    move/from16 v3, v43

    move/from16 v43, v14

    move v14, v4

    move/from16 v4, v43

    goto :goto_6

    :cond_13
    move-object/from16 v24, v6

    :goto_7
    new-instance v19, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iget-object v3, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    iget-wide v4, v1, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    move-object/from16 v20, v3

    move-wide/from16 v21, v4

    invoke-direct/range {v19 .. v25}, Lcom/samsung/android/knox/location/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;)V

    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v4, v31

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14
    return v1

    :cond_15
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    const-wide v21, 0x3f747ae147ae147bL    # 0.005

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_33

    check-cast v1, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-wide v9, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-wide v5, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    cmpg-double v7, v5, v17

    if-gtz v7, :cond_16

    move-wide/from16 v7, v26

    iput-wide v7, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    goto :goto_8

    :cond_16
    const-wide v7, 0x412e848000000000L    # 1000000.0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_17

    const-wide v5, 0x412e847e00000000L    # 999999.0

    iput-wide v5, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    :cond_17
    :goto_8
    iget-object v5, v1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    iget-wide v6, v1, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    move-wide v7, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    mul-double/2addr v7, v15

    const/4 v14, 0x0

    move/from16 v25, v4

    move-object v15, v14

    move-object/from16 v16, v15

    const/4 v3, 0x0

    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/16 v31, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_18

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 p1, v29

    move-object/from16 v29, v5

    move-object/from16 v5, p1

    :goto_a
    move-wide/from16 p1, v7

    goto :goto_b

    :cond_18
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 p1, v4

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v29, v4

    check-cast v29, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 p2, v29

    move-object/from16 v29, v5

    move-object/from16 v5, p2

    move-object/from16 v4, p1

    goto :goto_a

    :goto_b
    iget-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v32, v7

    iget-wide v7, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double v7, v32, v7

    cmpl-double v7, v7, v17

    if-nez v7, :cond_1a

    cmpl-double v7, v32, v17

    if-ltz v7, :cond_19

    sub-double v7, v32, v21

    iput-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto :goto_c

    :cond_19
    add-double v7, v32, v21

    iput-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    :cond_1a
    :goto_c
    iget-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v32, v7

    iget-wide v7, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v7, v32, v7

    cmpl-double v7, v7, v17

    if-nez v7, :cond_1c

    cmpl-double v7, v32, v17

    if-ltz v7, :cond_1b

    sub-double v7, v32, v21

    iput-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto :goto_d

    :cond_1b
    add-double v7, v32, v21

    iput-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    :cond_1c
    :goto_d
    iget-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v32, v7

    iget-wide v7, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v7, v32, v7

    move-wide/from16 v32, v7

    iget-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v34, v7

    iget-wide v7, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    sub-double v7, v34, v7

    div-double v7, v32, v7

    move-wide/from16 v32, v7

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 v34, v9

    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v36, v8

    iget-wide v8, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double v8, v36, v8

    div-double v8, v8, v19

    move-object v10, v14

    move-object/from16 v30, v15

    iget-wide v14, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v36, v14

    iget-wide v14, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double v14, v36, v14

    div-double v14, v14, v19

    invoke-direct {v7, v8, v9, v14, v15}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v8, v26, v32

    neg-double v8, v8

    mul-double v14, v8, v8

    add-double v14, v14, v26

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    div-double v14, p1, v14

    cmpl-double v36, v32, v17

    move-wide/from16 v37, v8

    if-lez v36, :cond_1d

    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v39, v8

    iget-wide v8, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v8, v39, v8

    if-ltz v8, :cond_1e

    :cond_1d
    cmpg-double v8, v32, v17

    move/from16 v32, v8

    if-gez v8, :cond_25

    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v39, v8

    iget-wide v8, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v8, v39, v8

    if-lez v8, :cond_25

    :cond_1e
    iget-wide v8, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v14, v14, v37

    move-wide/from16 v32, v8

    add-double v8, v32, v14

    sub-double v32, v8, v32

    move-wide/from16 v39, v14

    iget-wide v14, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v14, v14, v37

    add-double v14, v14, v32

    div-double v14, v14, v37

    move-object/from16 v33, v10

    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v10, v14, v15, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v14, v8, v39

    sub-double v8, v14, v8

    move-wide/from16 v41, v8

    iget-wide v7, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v8, v37, v7

    add-double v8, v8, v41

    div-double v8, v8, v37

    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v7, v8, v9, v14, v15}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_1f

    move-object/from16 v16, v4

    :cond_1f
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    const/16 v31, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_20

    goto :goto_e

    :cond_20
    move-object/from16 v5, v16

    :goto_e
    if-eqz v3, :cond_22

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_21

    goto :goto_12

    :cond_21
    move/from16 v32, v3

    :goto_f
    move-object/from16 v16, v5

    :goto_10
    move-object/from16 v15, v30

    :goto_11
    move-object/from16 v14, v33

    goto/16 :goto_16

    :cond_22
    :goto_12
    iget-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double v14, v7, v39

    sub-double v7, v14, v7

    iget-wide v9, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v9, v9, v37

    add-double/2addr v9, v7

    div-double v9, v9, v37

    if-nez v3, :cond_23

    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v9, v10, v14, v15}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v30

    goto :goto_13

    :cond_23
    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v9, v10, v14, v15}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object v15, v4

    :goto_13
    iget-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v9, v7, v39

    sub-double v7, v9, v7

    move-wide/from16 v39, v7

    iget-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v7, v7, v37

    add-double v7, v7, v39

    div-double v7, v7, v37

    if-nez v3, :cond_24

    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v32, v3

    move-object/from16 v16, v5

    goto :goto_11

    :cond_24
    new-instance v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move/from16 v32, v3

    move-object v14, v4

    move-object/from16 v16, v5

    goto/16 :goto_16

    :cond_25
    move-object/from16 v33, v10

    if-lez v36, :cond_26

    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v39, v8

    iget-wide v8, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v8, v39, v8

    if-gtz v8, :cond_27

    :cond_26
    if-gez v32, :cond_2d

    iget-wide v8, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v39, v8

    iget-wide v8, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v8, v39, v8

    if-gez v8, :cond_2d

    :cond_27
    iget-wide v8, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    mul-double v14, v14, v37

    move-object v10, v4

    move-object/from16 v32, v5

    sub-double v4, v8, v14

    sub-double v8, v4, v8

    move-wide/from16 v39, v8

    iget-wide v8, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v8, v8, v37

    add-double v8, v8, v39

    div-double v8, v8, v37

    move-object/from16 v36, v10

    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v10, v8, v9, v4, v5}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v4, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double v8, v4, v14

    sub-double v4, v8, v4

    move-wide/from16 v39, v4

    iget-wide v4, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v4, v4, v37

    add-double v4, v4, v39

    div-double v4, v4, v37

    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v7, v4, v5, v8, v9}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_28

    move-object/from16 v16, v36

    :cond_28
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    const/16 v31, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_29

    move-object/from16 v5, v32

    goto :goto_14

    :cond_29
    move-object/from16 v5, v16

    :goto_14
    if-eqz v3, :cond_2a

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_21

    :cond_2a
    iget-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    sub-double v9, v7, v14

    sub-double v7, v9, v7

    move/from16 v32, v3

    iget-wide v3, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v3, v3, v37

    add-double/2addr v3, v7

    div-double v3, v3, v37

    if-nez v32, :cond_2b

    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v7, v3, v4, v9, v10}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2b
    new-instance v7, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v7, v3, v4, v9, v10}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v30, v7

    :goto_15
    iget-wide v3, v5, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v14, v3

    sub-double v3, v14, v3

    iget-wide v7, v5, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v8, v37, v7

    add-double/2addr v8, v3

    div-double v8, v8, v37

    if-nez v32, :cond_2c

    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v8, v9, v14, v15}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_2c
    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v8, v9, v14, v15}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object v14, v3

    move-object/from16 v16, v5

    move-object/from16 v15, v30

    goto :goto_16

    :cond_2d
    move/from16 v32, v3

    goto/16 :goto_10

    :goto_16
    add-int/lit8 v3, v32, 0x1

    move-wide/from16 v7, p1

    move-object/from16 v5, v29

    move-wide/from16 v9, v34

    goto/16 :goto_9

    :cond_2e
    move-wide/from16 v34, v9

    move-object/from16 v33, v14

    move-object/from16 v30, v15

    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_17
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v28, 0x2

    add-int/lit8 v4, v4, -0x2

    if-ge v14, v4, :cond_2f

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 p1, v4

    iget-wide v4, v15, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v16, v4

    iget-wide v4, v15, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double/2addr v4, v7

    sub-double v4, v16, v4

    move-wide v15, v4

    iget-wide v4, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v17, v4

    iget-wide v4, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v4, v4, p1

    sub-double v4, v17, v4

    sub-double/2addr v15, v4

    sub-double v17, p1, v7

    move-wide/from16 v19, v4

    div-double v4, v15, v17

    mul-double v15, p1, v4

    move-wide/from16 v21, v7

    add-double v7, v15, v19

    new-instance v9, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v9, v4, v5, v7, v8}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v7, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v4, v4, v21

    sub-double v4, v7, v4

    move-wide v15, v4

    iget-wide v3, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    mul-double v4, p1, v3

    sub-double/2addr v7, v4

    sub-double v4, v15, v7

    div-double v4, v4, v17

    mul-double v15, p1, v4

    add-double/2addr v7, v15

    new-instance v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v3, v4, v5, v7, v8}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v10

    goto/16 :goto_17

    :cond_2f
    move-object/from16 v14, v30

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v33

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v31, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_18
    if-ltz v3, :cond_30

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    :cond_30
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_33

    invoke-static {v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v3, :cond_31

    goto :goto_19

    :cond_31
    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v8

    new-instance v5, Lcom/samsung/android/knox/location/LinearGeofence;

    move-wide/from16 v9, v34

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/knox/location/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;D)V

    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_32
    return v1

    :cond_33
    :goto_19
    const/4 v0, -0x1

    return v0
.end method

.method public final declared-synchronized deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCING"

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByFieldsAsUser(ILjava/lang/String;Ljava/util/HashMap;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_1

    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :goto_2
    :try_start_2
    const-string v1, "GeofenceService"

    const-string/jumbo v2, "deleteGeofenceActiveListByAdmin - EX"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_1

    goto :goto_1

    :goto_3
    const-string v1, "GeofenceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred accessing Enterprise db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :catch_2
    :cond_1
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_3
    :cond_2
    :try_start_4
    throw p1

    :goto_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final declared-synchronized destroyGeofence(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "GeofenceService"

    const-string/jumbo v1, "destroyGeofence"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final deviceLocationUnavailableMessage(I)V
    .locals 8

    const-string v0, "GeofenceService"

    const-string v1, "DEVICE_LOCATION_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.DEVICE_LOCATION_UNAVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid$2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eq p1, v2, :cond_1

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v5, p1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getActiveGeofenceIdsbyAdmin(ILjava/util/List;)Ljava/util/List;
    .locals 8

    const-string/jumbo v0, "_id"

    const-string/jumbo v1, "adminUid"

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "GEOFENCING"

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v3, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_1
    :goto_0
    if-ge v7, v3, :cond_2

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    check-cast v5, Landroid/content/ContentValues;

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    return-object v4

    :goto_1
    const-string p1, "GeofenceService"

    const-string/jumbo p2, "getActiveGeofenceIdsbyAdmin - EX"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-object v2
.end method

.method public final getEffectiveMinDistanceParameter()F
    .locals 8

    const-string/jumbo v0, "distance"

    const-string/jumbo v1, "state"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCINGSETTINGS"

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v5, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v6, v3

    :goto_1
    cmpl-float v7, v5, v3

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    cmpl-float v7, v6, v3

    if-eqz v7, :cond_0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_0

    :goto_2
    move v5, v6

    goto :goto_0

    :cond_3
    return v5
.end method

.method public final getEffectiveMinTimeParameter()J
    .locals 11

    const-string/jumbo v0, "time"

    const-string/jumbo v1, "state"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCINGSETTINGS"

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-wide v9, v5

    :goto_1
    cmp-long v3, v7, v5

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    cmp-long v3, v9, v5

    if-eqz v3, :cond_0

    cmp-long v3, v7, v9

    if-lez v3, :cond_0

    :goto_2
    move-wide v7, v9

    goto :goto_0

    :cond_3
    cmp-long p0, v7, v5

    if-nez p0, :cond_4

    const-wide/32 v0, 0xea60

    return-wide v0

    :cond_4
    return-wide v7
.end method

.method public final getGeofences(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 9

    const-string/jumbo v0, "blobdata"

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "_id"

    const-string v3, "GeofenceService"

    const-string/jumbo v4, "getGeofences"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "GEOFENCING"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_2

    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iput p1, v7, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    iput v6, v7, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v5, p0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_0
    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LinearGeofence;

    iput p1, v7, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    iput v6, v7, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v7, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/CircularGeofence;

    iput p1, v7, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    iput v6, v7, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    :goto_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_6

    :goto_2
    move-object p0, v5

    goto :goto_4

    :goto_3
    move-object p0, v5

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_4
    :try_start_3
    const-string/jumbo v0, "getGeofences - EX"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_3

    goto :goto_1

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurred accessing Enterprise db "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_1

    :catch_4
    :cond_3
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    move-object v4, v5

    :cond_4
    return-object v4

    :goto_7
    if-eqz v5, :cond_5

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :cond_5
    throw p1
.end method

.method public final getMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;)F
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "GEOFENCINGSETTINGS"

    const-string/jumbo v1, "distance"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "GEOFENCINGSETTINGS"

    const-string/jumbo v1, "time"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getPackageNameForUid$2(I)Ljava/lang/String;
    .locals 4

    const-string v0, "@getPackageNameForUid - uid = "

    const-string v1, "GeofenceService"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4e1f

    if-le p1, v0, :cond_1

    :cond_0
    const-string p0, "@getPackageNameForUid - returning UMC PACKAGENAME"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    const-string v2, "ADMIN_INFO"

    const-string/jumbo v3, "adminName"

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "@getPackageNameForUid - returning null"

    if-nez p0, :cond_2

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_2
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "@getPackageNameForUid - returning compName.getPackageName() --> "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isAdminHasGeofence(I)Z
    .locals 6

    const-string v0, "GeofenceService"

    const-string v1, "Exception occurred accessing Enterprise db "

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "_id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "GEOFENCING"

    invoke-virtual {p0, p1, v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    :try_start_2
    const-string/jumbo p1, "isAdminHasGeofence - EX"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :goto_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :goto_2
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_1

    :catch_3
    :cond_0
    :goto_3
    return v2

    :goto_4
    if-eqz v3, :cond_1

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_1
    throw p0
.end method

.method public final isDeviceInsideGeofence(I)Ljava/util/List;
    .locals 9

    const-string/jumbo v0, "isDeviceInsideGeofence"

    const-string v1, "GeofenceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setPowerRequirement(I)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    if-nez v7, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v0, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "passive"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "isDeviceInsideGeofence - EX"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v6

    :cond_0
    :goto_0
    if-nez v7, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(ZLandroid/location/Location;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(ILjava/util/List;)Ljava/util/List;

    move-result-object v6

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6
.end method

.method public final isDeviceInsideGeofence(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "GEOFENCINGSETTINGS"

    const-string/jumbo v2, "state"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public final onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendIntenttoAdmins(Ljava/util/List;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "GeofenceService"

    const-string/jumbo v0, "sendIntenttoAdmins"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const-string v6, "ADMIN"

    const-string/jumbo v7, "adminUid"

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v0, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v0, v8

    :goto_1
    if-ge v0, v6, :cond_4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v9, v0, 0x1

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v7, p1

    invoke-virtual {v1, v0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(ILjava/util/List;)Ljava/util/List;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.knox.intent.extra.USER_ID"

    const-string/jumbo v12, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    if-eqz v10, :cond_2

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v15, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [I

    move-object/from16 v16, v3

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_1

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ID"

    invoke-virtual {v14, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v14, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "@sendIntenttoAdmins - ownerUid = "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid$2(I)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "@sendIntenttoAdmins - thePackageNameFortheUID = "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v14, v8, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v10, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-virtual {v10, v3, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v8, v10, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    :goto_3
    const/4 v14, 0x0

    goto :goto_4

    :cond_2
    move-object/from16 v16, v3

    :try_start_1
    iget-object v3, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "GEOFENCINGSETTINGS"

    const-string/jumbo v10, "state"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v14, 0x0

    :try_start_2
    invoke-virtual {v3, v0, v14, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.knox.intent.action.DEVICE_OUTSIDE_GEOFENCE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v3, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v8, v0}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid$2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v3, v10, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v8, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v3, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-virtual {v3, v8, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v10, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v10, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v10, v8, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    :goto_4
    move v0, v9

    move v8, v14

    move-object/from16 v3, v16

    goto/16 :goto_1

    :cond_4
    move-object/from16 v7, p1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final setMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;F)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "distance"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return p1
.end method

.method public final setMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const-string v3, "GEOFENCINGSETTINGS"

    const-string/jumbo v4, "time"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return p1
.end method

.method public final startGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    const-string v0, "GeofenceService"

    const-string/jumbo v1, "startGeofencing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final stopGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    const-string v0, "GeofenceService"

    const-string/jumbo v1, "stopGeofencing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v2, 0x0

    const-string v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return p1
.end method

.method public final systemReady()V
    .locals 4

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "blobdata"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GEOFENCING"

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(IILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "_id"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v2, "blobdata"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-static {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iput p1, v2, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    iput v1, v2, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    invoke-static {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LinearGeofence;

    iput p1, v2, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    iput v1, v2, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/CircularGeofence;

    iput p1, v2, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    iput v1, v2, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :goto_2
    :try_start_2
    const-string v1, "GeofenceService"

    const-string/jumbo v2, "updateGeofenceActiveList - EX"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_4

    goto :goto_1

    :goto_3
    const-string v1, "GeofenceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred accessing Enterprise db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_1

    :catch_2
    :cond_4
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    if-eqz v0, :cond_5

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_3
    :cond_5
    :try_start_4
    throw p1

    :goto_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I
    .locals 3

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-nez p3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "adminUid"

    const-string/jumbo v2, "type"

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo p2, "blobdata"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    const-string p3, "GEOFENCING"

    invoke-virtual {p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    long-to-int p2, p2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    return p2
.end method
