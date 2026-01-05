.class public Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.super Lcom/android/server/location/listeners/BinderListenerRegistration;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mForeground:Z

.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public mPermitted:Z

.field public final mRequest:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->isMyProcess()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    :goto_0
    invoke-direct {p0, p1, p4}, Lcom/android/server/location/listeners/RemovableListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mRequest:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

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

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "GnssManager"

    return-object p0
.end method

.method public onActive()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    return-void
.end method

.method public onInactive()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    return-void
.end method

.method public final onLocationPermissionsChanged$2()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRegister()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->onRegister()V

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->isAppForeground(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "bg"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "na"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mRequest:Ljava/lang/Object;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mRequest:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateGnssListener()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v2

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v5, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v8

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v9

    iget-object v3, v1, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;

    move-result-object v7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateGnssDataListener(Landroid/os/IBinder;ZLjava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;II)V

    return-void
.end method
