.class public Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;
.super Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DHCP_PORT:I = 0x43

.field public static final DNS_PORT:I = 0x35

.field public static final MDNS_PORT:I = 0x14e9

.field public static final SSDP_PORT:I = 0x76c

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final TAG_NETWORK_EVENT_UNKNOWN:I = -0x1

.field public static final TETHERING_IFNAME_PREFIX:Ljava/lang/String; = "swlan"

.field public static final TETHERING_UID:I = 0x41c


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mBootTimeNanos:J

.field public final mEventType:I

.field public mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

.field public final mKnoxNetworkEventService:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;


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

    iput-object v8, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mEventType:I

    iget-wide p1, v8, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mBootTimeNanos:J

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object p1, p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mKnoxNetworkEventService:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    return-void
.end method


# virtual methods
.method public final getInterfaceNameFromIndex(I)Ljava/lang/String;
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

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "getInterfaceName error: "

    invoke-static {p1, v0, p0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public final getPackageNameFromUid(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

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

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "getPackageNameForUid error: "

    invoke-static {p1, v0, p0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final getTagFromEventType(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public final isPlatformSignedApp(I)Z
    .locals 7

    const-string v0, "Exception checking platform signed app.. "

    const-string/jumbo v1, "uid = "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-interface {v4, p1, v5}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " signature matched."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string v0, " signature didn\'t match."

    invoke-static {p1, v1, v0, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isVpnBypassOnForUser(I)Z
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mKnoxNetworkEventService:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnBypassLoggingStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final notifyKnoxZtInternalService(Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "notifyKnoxZtInternalService: null event data"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getZtInternalService()Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "notifyKnoxZtInternalService: KnoxZtService is null."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyKnoxZtInternalService: sending data to framework.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x6

    invoke-interface {v0, v1, p2, p1}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;->notifyFrameworkEvent(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "notifyKnoxZtInternalService: Failed to bind zt internal service"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onEvent(Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onEvent(): data is null."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->eventType:I

    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->getTagFromEventType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onEvent: Invalid network event type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->eventType:I

    invoke-static {v0, p1, p0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_1
    iget v1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->ifIndex:I

    invoke-virtual {p0, v2}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->getInterfaceNameFromIndex(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget v3, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    invoke-virtual {p0, v3}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->isPlatformSignedApp(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string p1, "Excluding insecure network event for package "

    invoke-static {p1, v1, p0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    iget v4, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->isVpnBypassOnForUser(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Excluding bypass vpn network event due to logging turned off for uid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v4, " }"

    if-ne v0, v3, :cond_5

    iget v5, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    const/16 v6, 0x41c

    if-eq v5, v6, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "swlan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Excluding bypass vpn network event for tethering { uid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ifName: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-ne v0, v3, :cond_8

    iget v5, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_6

    iget v5, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    const/16 v6, 0x35

    if-eq v5, v6, :cond_7

    :cond_6
    iget v5, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    const/16 v6, 0x43

    if-ne v5, v6, :cond_8

    :cond_7
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Excluding bypass vpn network event { uid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    invoke-static {p1, v4, p0, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_8
    if-ne v0, v3, :cond_a

    iget v3, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    const/16 v5, 0x76c

    if-eq v3, v5, :cond_9

    const/16 v5, 0x14e9

    if-ne v3, v5, :cond_a

    :cond_9
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Excluding bypass vpn network event { destport: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->destPort:I

    invoke-static {p1, v4, p0, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_a
    iput-object v1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->packageName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->interfaceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onEvent: data {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onEvent: passing data to notifyKnoxZtInternalService.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->notifyKnoxZtInternalService(Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;I)V

    return-void
.end method

.method public final onMonitored()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mEventType:I

    invoke-virtual {v0, v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->readNetworkEventData(I)Ljava/util/ArrayList;

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

    check-cast v3, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;

    iget-object v4, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onMonitored() sending data to onEvent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mBootTimeNanos:J

    invoke-virtual {v3, v4, v5}, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->adjustToActualTimeInMillis(J)V

    invoke-virtual {p0, v3}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->onEvent(Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;)V
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
