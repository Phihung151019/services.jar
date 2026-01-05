.class public final Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;
.super Lcom/android/server/location/listeners/BinderListenerRegistration;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->isMyProcess()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/location/listeners/RemovableListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    return-void
.end method


# virtual methods
.method public final getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;
    .locals 0

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public final getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "GnssManager"

    return-object p0
.end method

.method public final onActive()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->updateAntennaListener()V

    return-void
.end method

.method public final onInactive()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->updateAntennaListener()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateAntennaListener()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v7

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v8

    iget-object v2, v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v6, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_ANTENNA_INFO:Landroid/location/LocationConstants$LISTENER_TYPE;

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateGnssDataListener(Landroid/os/IBinder;ZLjava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;II)V

    return-void
.end method
