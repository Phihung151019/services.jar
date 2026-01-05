.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mContext:Landroid/content/Context;

.field public static mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;


# instance fields
.field public volatile isTetherAuthSuccessful:Z

.field public volatile mBindUserId:I

.field public mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field public final mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field public mProfileName:Ljava/lang/String;

.field public final mTetherAuthConnectionList:Ljava/util/HashMap;

.field public mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

.field public final mknoxVpnTetherAuthClientStatus:Ljava/util/List;

.field public mtetherAuthDetails:Landroid/os/Bundle;

.field public final syncObject:Ljava/lang/Object;

.field public final vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method public static -$$Nest$mapplyTetheringRulesForVpn(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "KnoxVpnTetherAuthentication"

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInterfaceNameForUsbtethering()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    iget v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterface_type:I

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    if-nez v5, :cond_1

    if-ne v2, v0, :cond_1

    const-string v0, "Applying rules to drop tether packets after tether auth successful due to vpn down"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesForDroppingTetherPackets(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    if-ne v2, v0, :cond_2

    const-string v0, "Applying vpn tethering rules after tether auth successful"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "vpn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/net/IVpnManager;->getDnsServerListForInterface(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkPartWithMask(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesForUsbTethering(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Apply tether rules after successful auth failed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final bindTetherAuthService(ILjava/lang/String;)V
    .locals 4

    const-string v0, "Binding to the tetherAuth service in user after tether auth package install "

    const-string v1, "KnoxVpnTetherAuthentication"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "unbinding previous service before binding again for the user "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p1, p2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "unbinding failed since the service is already unbinded or not existing"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.knox.vpn.tether.auth_knoxtetheringauthenticationservice"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.knox.vpn.tether.auth"

    const-string/jumbo v2, "com.samsung.knox.vpn.tether.auth.TetherAuthService"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v0, p2, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Binding to the tetherAuth service in user "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    const-string v2, " is successful"

    invoke-static {v0, v2, v1, p2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1b58

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    :goto_1
    return-void
.end method

.method public final bindTetherAuthService(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "Binding to the tetherAuth service in user "

    const-string v1, "KnoxVpnTetherAuthentication"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "unbinding previous service before binding again for the user "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p1, p2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "unbinding failed since the service is already unbinded or not existing"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo p3, "com.samsung.knox.vpn.tether.auth_knoxtetheringauthenticationservice"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "com.samsung.knox.vpn.tether.auth"

    const-string/jumbo v2, "com.samsung.knox.vpn.tether.auth.TetherAuthService"

    invoke-virtual {p2, p3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {p3, p2, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    const-string v0, " is successful"

    invoke-static {p3, v0, v1, p2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1b58

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public final getKnoxVpnTetherAuthClientStatus()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    return-object p0
.end method

.method public final getTetherAuthStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    return p0
.end method

.method public final startTetherAuthProcess(ILjava/lang/String;Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->startAuthenticationProcess(Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IAuthenticationStatus;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string/jumbo v3, "com.samsung.knox.vpn.tether.auth"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesTetherAuth(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopTetheringAuthProcess(Z)V
    .locals 5

    const-string/jumbo v0, "stopAuthenticationProcess result is "

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->stopAuthenticationProcess()I

    move-result v2

    const-string v3, "KnoxVpnTetherAuthentication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesTetherAuth()V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unbindTetherAuthService()V
    .locals 6

    const-string/jumbo v0, "unbinding tetherAuth service in user "

    const-string/jumbo v1, "stopAuthenticationProcess before unbind and result is "

    const-string/jumbo v2, "start unbinding tetherAuth service in user "

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "KnoxVpnTetherAuthentication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->stopAuthenticationProcess()I

    move-result v2

    const-string v4, "KnoxVpnTetherAuthentication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v1, "KnoxVpnTetherAuthentication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KnoxVpnTetherAuthentication"

    const-string/jumbo v1, "start removing tether auth firewall rules during unbinding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesTetherAuth()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    :cond_1
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
