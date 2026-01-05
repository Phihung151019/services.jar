.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->-$$Nest$monApplicationStart(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;I)V

    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public final onProcessDied(II)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    const-string/jumbo p1, "stopping vpn connection : Failure at "

    const-string/jumbo v0, "onApplicationStop : isExistRunningApps : "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidFromCache(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget v2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget v2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v2

    const-string v4, "KnoxVpnProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_9

    :try_start_5
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_6
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateBlockingRules(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v0

    iget v2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    if-nez v0, :cond_8

    const/16 v0, 0x122

    goto :goto_0

    :cond_8
    const/16 v0, 0x123

    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_7
    const-string v2, "KnoxVpnProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p2

    const/16 v0, 0x134

    invoke-static {p1, v0, p2}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    :goto_1
    monitor-exit p0

    return-void

    :cond_a
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->-$$Nest$monApplicationStart(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;I)V

    return-void
.end method
