.class public final Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(ZLandroid/location/Location;)Ljava/util/List;

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
