.class public Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;
.super Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mBootTimeNanos:J

.field public mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;


# direct methods
.method public constructor <init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    iput-object v8, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-wide p1, v8, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->mBootTimeNanos:J

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getInterfaceNameFromIndex(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "getInterfaceName error: "

    invoke-static {p1, v0, p0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "getPackageNameForUid error: "

    invoke-static {p1, v0, p0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final notifyKnoxZtInternalService(Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "notifyKnoxZtInternalService: null event data"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getZtInternalService()Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "notifyKnoxZtInternalService: KnoxZtService is null."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyKnoxZtInternalService: sending data to framework.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x6

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;->notifyFrameworkEvent(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "notifyKnoxZtInternalService: Failed to bind zt internal service"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onEvent(Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onEvent(): data is null."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->uid:I

    invoke-direct {p0, v0}, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->packageName:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->interfaceIdx:I

    invoke-direct {p0, v0}, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->getInterfaceNameFromIndex(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->interfaceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onEvent: data {"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->notifyKnoxZtInternalService(Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;)V

    return-void
.end method

.method public final onMonitored()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->readSocketListenerEventData()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;

    iget-object v4, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onMonitored() sending data to onEvent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->mBootTimeNanos:J

    invoke-virtual {v3, v4, v5}, Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;->adjustToActualTimeInMillis(J)V

    invoke-virtual {p0, v3}, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;->onEvent(Lcom/android/server/knox/zt/devicetrust/data/SockListenerEventData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed in transaction: "

    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
