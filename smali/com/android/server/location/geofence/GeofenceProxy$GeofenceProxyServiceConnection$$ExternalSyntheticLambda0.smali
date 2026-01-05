.class public final synthetic Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/geofence/GeofenceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/geofence/GeofenceProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/geofence/GeofenceProxy;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/geofence/GeofenceProxy;

    invoke-static {p1}, Landroid/location/IGeofenceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeofenceProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {p1, p0}, Landroid/location/IGeofenceProvider;->setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V

    return-void
.end method
