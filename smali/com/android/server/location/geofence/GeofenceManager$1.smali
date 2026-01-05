.class public final Lcom/android/server/location/geofence/GeofenceManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/geofence/GeofenceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/geofence/GeofenceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    return-void
.end method


# virtual methods
.method public final onLocationPermissionsChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method
