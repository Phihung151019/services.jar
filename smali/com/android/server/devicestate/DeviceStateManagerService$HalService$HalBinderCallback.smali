.class public final Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManagerCallback;


# instance fields
.field public final mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

.field public final synthetic this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    check-cast p0, Landroid/frameworks/devicestate/IDeviceStateListener$Stub$Proxy;

    invoke-virtual {p0}, Landroid/frameworks/devicestate/IDeviceStateListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .locals 7

    new-instance v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;

    invoke-direct {v0}, Landroid/frameworks/devicestate/DeviceStateConfiguration;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    iget-object p1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    iget-object v3, v3, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v3

    iget-wide v5, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    or-long/2addr v3, v5

    iput-wide v3, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    iget-object v2, v2, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v1

    iget-wide v3, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    or-long/2addr v1, v3

    iput-wide v1, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    check-cast p0, Landroid/frameworks/devicestate/IDeviceStateListener$Stub$Proxy;

    iget-object p1, p0, Landroid/frameworks/devicestate/IDeviceStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object p1

    :try_start_0
    sget-object v1, Landroid/frameworks/devicestate/IDeviceStateListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/frameworks/devicestate/IDeviceStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, p1, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo v0, "Method onDeviceStateChanged is unimplemented."

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final onRequestActive(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onRequestCanceled(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method
