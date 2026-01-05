.class public final synthetic Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/geofence/GeofenceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/geofence/GeofenceManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void

    :pswitch_0
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
