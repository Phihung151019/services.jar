.class public final Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;


# instance fields
.field public volatile mAntennaInfos:Ljava/util/List;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addAntennaInfoCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;)V

    return-void
.end method


# virtual methods
.method public final isActive(Lcom/android/server/location/listeners/RemovableListenerRegistration;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onHalRestarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startAntennaInfoListening()Z

    return-void
.end method

.method public final onHalStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startAntennaInfoListening()Z

    return-void
.end method

.method public final onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 10

    move-object v1, p1

    check-cast v1, Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz v0, :cond_0

    instance-of p0, p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    iget-object p0, p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_ANTENNA_INFO:Landroid/location/LocationConstants$LISTENER_TYPE;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v4

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v5

    const/16 v8, 0x3e8

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->addGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;IIZZIZ)V

    :cond_0
    return-void
.end method

.method public final onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 2

    check-cast p1, Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-eqz p0, :cond_0

    instance-of v0, p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    iget-object p2, p2, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    sget-object v0, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_ANTENNA_INFO:Landroid/location/LocationConstants$LISTENER_TYPE;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->removeGnssDataListener(Landroid/os/IBinder;Landroid/location/LocationConstants$LISTENER_TYPE;II)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Void;

    const/4 p0, 0x1

    return p0
.end method

.method public final unregisterWithService()V
    .locals 0

    return-void
.end method
