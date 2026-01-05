.class public final Lcom/android/server/health/HealthServiceWrapperAidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String;


# instance fields
.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mLastService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

.field public final mServiceCallback:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    const-string v2, "/default"

    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;)V
    .locals 9

    const-string v0, "HealthServiceWrapperAidl"

    const-string v1, "HealthServiceWrapperAidl: newService: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HealthServiceBinder"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    invoke-direct {v3, p0}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    iput-object v3, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mServiceCallback:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/32 v3, 0x80000

    const-string v5, "HealthInitGetServiceAidl"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    sget-object v5, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    sget v6, Landroid/hardware/health/IHealth$Stub;->$r8$clinit:I

    const/4 v6, 0x0

    if-nez p2, :cond_0

    move-object v7, v6

    goto :goto_0

    :cond_0
    sget-object v7, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p2, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v7

    if-eqz v7, :cond_1

    instance-of v8, v7, Landroid/hardware/health/IHealth;

    if-eqz v8, :cond_1

    check-cast v7, Landroid/hardware/health/IHealth;

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object p2, v7, Landroid/hardware/health/IHealth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    if-eqz v7, :cond_6

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v5}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_4

    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object p2

    sget v1, Lvendor/samsung/hardware/health/ISehHealth$Stub;->$r8$clinit:I

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lvendor/samsung/hardware/health/ISehHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Lvendor/samsung/hardware/health/ISehHealth;

    if-eqz v2, :cond_3

    check-cast v1, Lvendor/samsung/hardware/health/ISehHealth;

    goto :goto_2

    :cond_3
    new-instance v1, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const-string/jumbo p2, "Unable to register DeathRecipient for null"

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    move-object v1, v6

    :goto_2
    iget-object p2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v6, v1}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealth;)V

    :cond_5
    const-string p1, "HealthInitRegisterNotificationAidl"

    invoke-static {v3, v4, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :try_start_2
    sget-object p1, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mServiceCallback:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    const-string/jumbo p0, "health: HealthServiceWrapper listening to AIDL HAL"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    throw p0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "IHealth service instance isn\'t available. Perhaps no permission?"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    throw p0
.end method

.method public static traceEnd()V
    .locals 2

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public final getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;
    .locals 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public getHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public final getHealthInfo()Landroid/hardware/health/HealthInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProperty(ILandroid/os/BatteryProperty;)I
    .locals 3

    const-wide/32 v0, 0x80000

    const-string v2, "HealthGetPropertyAidl"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/health/HealthServiceWrapperAidl;->getPropertyInternal(ILandroid/os/BatteryProperty;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    throw p0
.end method

.method public final getPropertyInternal(ILandroid/os/BatteryProperty;)I
    .locals 4

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    :try_start_0
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    iget p0, p0, Landroid/hardware/health/BatteryHealthData;->batteryPartStatus:I

    int-to-long v2, p0

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :pswitch_1
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/health/BatteryHealthData;->batterySerialNumber:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/os/BatteryProperty;->setString(Ljava/lang/String;)V

    return v0

    :pswitch_2
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    iget-wide v2, p0, Landroid/hardware/health/BatteryHealthData;->batteryStateOfHealth:J

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :pswitch_3
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getChargingPolicy()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :pswitch_4
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    iget-wide v2, p0, Landroid/hardware/health/BatteryHealthData;->batteryFirstUsageSeconds:J

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :pswitch_5
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object p0

    iget-wide v2, p0, Landroid/hardware/health/BatteryHealthData;->batteryManufacturingDateSeconds:J

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :pswitch_6
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getChargeStatus()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :pswitch_7
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getEnergyCounterNwh()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :pswitch_8
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getCapacity()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :pswitch_9
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getCurrentAverageMicroamps()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :pswitch_a
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getCurrentNowMicroamps()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :pswitch_b
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getChargeCounterUah()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/16 p0, 0xa

    if-ne p0, p1, :cond_0

    const-class p0, Landroid/os/BatteryManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryStateOfHealth()I

    move-result p0

    if-le p0, v1, :cond_0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    return v0

    :cond_0
    const/4 p0, -0x3

    return p0

    :catch_1
    const/4 p0, -0x2

    return p0

    :catch_2
    return v1

    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "no health service"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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

    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sehWriteEnableToParam(ILjava/lang/String;Z)V
    .locals 4

    const-string v0, ", enable: "

    const-string/jumbo v1, "]: , offset: "

    const-string v2, "HealthServiceWrapperAidl"

    const-string/jumbo v3, "sehWriteEnableToParam["

    :try_start_0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/health/ISehHealth;

    if-eqz p0, :cond_0

    check-cast p0, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    invoke-virtual {p0, p1, p3}, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->sehWriteEnableToParam(IZ)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo v3, "no seh health service"

    invoke-direct {p0, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "Exception in sehWriteEnableToParam["

    invoke-static {p1, v3, p2, v1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
