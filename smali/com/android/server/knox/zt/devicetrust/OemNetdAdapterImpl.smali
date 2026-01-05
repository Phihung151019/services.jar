.class public Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;


# static fields
.field public static final TAG:Ljava/lang/String; = "OemNetdAdapterImpl.ztd"


# instance fields
.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mEndpointMonitor:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

.field public mHandler:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;)V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;)V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mEndpointMonitor:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->initializeHandlerThread()V

    return-void
.end method


# virtual methods
.method public final attachProbes(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x40

    if-lez p1, :cond_0

    new-instance p1, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;Landroid/net/Network;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->registerNetworkCallback()Z

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public final detachProbes(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x40

    if-lez p1, :cond_0

    new-instance p1, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;Landroid/net/Network;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->unregisterNetworkCallback()Z

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public final disablePacketTracing(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->disableTlsPacketTracing(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x6

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->TAG:Ljava/lang/String;

    const-string v0, "Failed to disable packet tracing("

    const-string v1, ")"

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public final enablePacketTracing(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->enableTlsPacketTracing(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x6

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->TAG:Ljava/lang/String;

    const-string v0, "Failed to enable packet tracing("

    const-string v1, ")"

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public final getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public final getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .locals 0

    :try_start_0
    const-string/jumbo p0, "netd"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object p0

    invoke-interface {p0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final initializeHandlerThread()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PacketTracingHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mHandler:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;

    return-void
.end method

.method public final registerNetworkCallback()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return v2
.end method

.method public final sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mHandler:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mHandler:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final startTracingPackets(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V

    return-void
.end method

.method public final stopTracingPackets(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V

    return-void
.end method

.method public final unregisterNetworkCallback()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateNetworkInterfaceData(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mEndpointMonitor:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->updateNetworkInterfaceData(II)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->TAG:Ljava/lang/String;

    const-string p2, "Failed to set ethernet status for interface index="

    invoke-static {p1, p2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
