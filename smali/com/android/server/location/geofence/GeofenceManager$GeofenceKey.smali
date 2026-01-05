.class public final Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mGeofence:Landroid/location/Geofence;

.field public final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/location/Geofence;

    iput-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    iget-object p1, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {p0, p1}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->hashCode()I

    move-result p0

    return p0
.end method
