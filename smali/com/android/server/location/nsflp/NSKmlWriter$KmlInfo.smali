.class public final Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final course:F

.field public final latitude:D

.field public final longitude:D

.field public final provider:Ljava/lang/String;

.field public final satelliteState:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public final speed:F

.field public final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DDFFLjava/lang/String;Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->provider:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->latitude:D

    iput-wide p4, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->longitude:D

    iput p6, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->speed:F

    iput p7, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->course:F

    iput-object p8, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->time:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->satelliteState:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-void
.end method
