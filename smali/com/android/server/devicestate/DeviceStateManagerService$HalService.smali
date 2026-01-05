.class public final Lcom/android/server/devicestate/DeviceStateManagerService$HalService;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/frameworks/devicestate/IDeviceStateService;


# instance fields
.field public final mPublicProperties:Landroid/util/LongSparseLongArray;

.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object p1, Landroid/frameworks/devicestate/IDeviceStateService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    new-instance p1, Landroid/util/LongSparseLongArray;

    invoke-direct {p1}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x3

    const-wide/16 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0xb

    const-wide/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0xc

    const-wide/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x20

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x11

    const-wide/16 v2, 0x40

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    const p0, 0xfffffe

    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "getInterfaceVersion"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "getInterfaceHash"

    return-object p0

    :cond_0
    const-string/jumbo p0, "unregisterListener"

    return-object p0

    :cond_1
    const-string/jumbo p0, "registerListener"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    sget-object v0, Landroid/frameworks/devicestate/IDeviceStateService;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const-string/jumbo p0, "be9013fedb7fc3886980eca0e588bce998d315d2"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 v0, 0x2

    if-eq p1, v2, :cond_8

    if-eq p1, v0, :cond_4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    sget-object p4, Landroid/frameworks/devicestate/IDeviceStateListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_6

    instance-of p4, p1, Landroid/frameworks/devicestate/IDeviceStateListener;

    if-eqz p4, :cond_6

    check-cast p1, Landroid/frameworks/devicestate/IDeviceStateListener;

    :cond_6
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget-object p4, p2, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_0
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget-object p2, p2, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_7
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-direct {p0, v2}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    :goto_1
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_2

    :cond_9
    sget-object p4, Landroid/frameworks/devicestate/IDeviceStateListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    if-eqz p4, :cond_a

    instance-of v1, p4, Landroid/frameworks/devicestate/IDeviceStateListener;

    if-eqz v1, :cond_a

    move-object p1, p4

    check-cast p1, Landroid/frameworks/devicestate/IDeviceStateListener;

    goto :goto_2

    :cond_a
    new-instance p4, Landroid/frameworks/devicestate/IDeviceStateListener$Stub$Proxy;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p1, p4, Landroid/frameworks/devicestate/IDeviceStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object p1, p4

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    if-eqz p1, :cond_c

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_3
    new-instance p4, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;

    invoke-direct {p4, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;)V

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, p2, p4}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p4, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_b
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :catch_0
    :try_start_4
    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_c
    new-instance p0, Landroid/os/ServiceSpecificException;

    invoke-direct {p0, v2}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method
