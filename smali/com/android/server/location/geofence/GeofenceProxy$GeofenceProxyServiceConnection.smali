.class public final Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/geofence/GeofenceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/location/geofence/GeofenceProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/geofence/GeofenceProxy;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Landroid/hardware/location/IGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/geofence/GeofenceProxy;

    iget-object p2, p2, Lcom/android/server/location/geofence/GeofenceProxy;->mGpsGeofenceHardware:Lcom/android/server/location/gnss/GnssGeofenceProxy;

    invoke-interface {p1, p2}, Landroid/hardware/location/IGeofenceHardware;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/geofence/GeofenceProxy;

    iput-object p1, p2, Lcom/android/server/location/geofence/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/geofence/GeofenceProxy;

    iget-object p1, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance p2, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/geofence/GeofenceProxy;)V

    invoke-interface {p1, p2}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "GeofenceProxy"

    const-string/jumbo p2, "unable to initialize geofence hardware"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/geofence/GeofenceProxy;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/location/geofence/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;->this$0:Lcom/android/server/location/geofence/GeofenceProxy;

    iget-object p1, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v0, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/geofence/GeofenceProxy;)V

    invoke-interface {p1, v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method
