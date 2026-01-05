.class public final Lcom/android/server/health/HealthServiceWrapperHidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

.field public final mInstanceName:Ljava/lang/String;

.field public final mLastService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mNotification:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string/jumbo v0, "default"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mNotification:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HealthServiceHwbinder"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    iput-object p3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

    const-wide/32 p2, 0x80000

    const-string v2, "HealthInitGetService_default"

    invoke-static {p2, p3, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    throw p0

    :catch_0
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HealthServiceWrapperHidl: newService: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HealthServiceWrapperHidl"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

    check-cast p1, Lcom/android/server/health/HealthHalCallbackHidl;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/health/HealthHalCallbackHidl;->onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;)V

    :cond_1
    const-string p1, "HealthInitRegisterNotification"

    invoke-static {p2, p3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :try_start_1
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p1

    const-string/jumbo p2, "android.hardware.health@2.0::IHealth"

    iget-object p3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mNotification:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    invoke-interface {p1, p2, p3, v0}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "health: HealthServiceWrapper listening to instance "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    invoke-static {p1, p0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "IHealth service instance default isn\'t available. Perhaps no permission?"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    throw v1
.end method

.method public static traceEnd()V
    .locals 2

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public getHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public final getHealthInfo()Landroid/hardware/health/HealthInfo;
    .locals 2

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;)V

    invoke-interface {p0, v1}, Landroid/hardware/health/V2_0/IHealth;->getHealthInfo(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;)V

    iget-object p0, v0, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;->value:Landroid/hardware/health/HealthInfo;

    return-object p0
.end method

.method public final getProperty(ILandroid/os/BatteryProperty;)I
    .locals 3

    const-wide/32 v0, 0x80000

    const-string v2, "HealthGetProperty"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    if-eqz p0, :cond_2

    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    goto :goto_0

    :cond_0
    const-class p0, Landroid/os/BatteryManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryStateOfHealth()I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_1

    const/4 p1, 0x0

    iput p1, v0, Landroid/util/MutableInt;->value:I

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_1
    :goto_0
    iget p0, v0, Landroid/util/MutableInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    return p0

    :cond_2
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "no health service"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final scheduleUpdate()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperHidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sehWriteEnableToParam(ILjava/lang/String;Z)V
    .locals 9

    const-string p0, ", enable: "

    const-string v0, "HealthServiceWrapperHidl"

    :try_start_0
    const-string/jumbo v1, "default"

    const-string/jumbo v2, "vendor.samsung.hardware.health@2.0::ISehHealth"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v5

    if-eqz v5, :cond_1

    instance-of v6, v5, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;

    if-eqz v6, :cond_1

    check-cast v5, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;

    goto :goto_1

    :cond_1
    new-instance v5, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v1, v5, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;->mRemote:Landroid/os/IHwBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :cond_2
    if-ge v7, v6, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_2

    goto :goto_1

    :catch_0
    :cond_3
    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    :try_start_2
    invoke-virtual {v5, p1, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;->sehWriteEnableToParam(IZ)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sehWriteEnableToParam["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]: , result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_5
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no seh health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    const-string v2, "Exception in sehWriteEnableToParam["

    const-string/jumbo v3, "]: , offset: "

    invoke-static {p1, v2, p2, v3, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
