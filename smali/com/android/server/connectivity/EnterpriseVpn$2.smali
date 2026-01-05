.class public final Lcom/android/server/connectivity/EnterpriseVpn$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final interfaceRemoved(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Exception at  interfaceRemoved : "

    const-string v1, "Interface removed: "

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v3, v3, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {v3, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mjniCheck(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "knoxEnterpriseVpn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v1, p1, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mcloseInterface(Lcom/android/server/connectivity/EnterpriseVpn;)V

    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v3, "agentDisconnect"

    invoke-virtual {p1, v1, v3}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    const-string/jumbo p1, "vpn_management"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v3, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    invoke-interface {p1, v3, v1}, Landroid/net/IVpnManager;->disconnectKnoxVpn(Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mcleanupVpnStateLocked(Lcom/android/server/connectivity/EnterpriseVpn;)V

    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v1, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeVpnUidRanges(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    iget-boolean p1, p1, Lcom/android/server/connectivity/EnterpriseVpn;->isVpnObjectRemoved:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "knoxEnterpriseVpn"

    const-string/jumbo v1, "resetting the network capability and unregistering the observer since the interface is removed"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    iget v1, p1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->cleanupObjects()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "knoxEnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
