.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAllowedApplications:Ljava/util/List;

.field public mDisallowedApplications:Ljava/util/List;

.field public mDnsServerAddresses:Ljava/util/List;

.field public mInterfaceName:Ljava/lang/String;

.field public mIsLockdownVpnEnabled:Z

.field public mLockdownVpnAllowList:Ljava/util/List;

.field public mRouteInfo:Ljava/util/List;

.field public mUidRanges:Ljava/util/Set;

.field public final mUserId:I

.field public mVpnClientUid:I

.field public mVpnConfig:Lcom/android/internal/net/VpnConfig;

.field public mVpnNetId:I

.field public final synthetic this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput p2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onAvailable being called for netId "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KnoxNetworkEventService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 22

    move-object/from16 v1, p0

    const-string/jumbo v0, "vpn_management"

    const-string v2, " Error at "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onLinkPropertiesChanged callback: netId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " interface name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KnoxNetworkEventService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "ipsec"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mInterfaceName:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetId()I

    move-result v3

    :try_start_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v5

    iget v6, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-interface {v5, v6}, Landroid/net/IVpnManager;->getVpnClientUid(I)I

    move-result v5

    iput v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnClientUid:I

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v5

    iget v6, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-interface {v5, v6}, Landroid/net/IVpnManager;->getVpnNetId(I)I

    move-result v5

    iput v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnNetId:I

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v5

    iget v6, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-interface {v5, v6}, Landroid/net/IVpnManager;->getVpnConfigForUser(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v5

    iget v6, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-interface {v5, v6}, Landroid/net/IVpnManager;->isLockdownVpnEnabled(I)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mIsLockdownVpnEnabled:Z

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    iget v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-interface {v0, v5}, Landroid/net/IVpnManager;->getLockdownVpnAllowList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mLockdownVpnAllowList:Ljava/util/List;

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mCm:Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p1

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUidRanges:Ljava/util/Set;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_1

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnNetId:I

    if-ne v0, v3, :cond_17

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnBypassLoggingStateMap:Ljava/util/HashMap;

    iget v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mInterfaceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iput-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mAllowedApplications:Ljava/util/List;

    iget-object v2, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    iput-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDisallowedApplications:Ljava/util/List;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    iput-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mRouteInfo:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDnsServerAddresses:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "filtered onLinkPropertiesChanged callback: netId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mInterfaceName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mVpnNetId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnNetId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mVpnClientUid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnClientUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mIsLockdownVpnEnabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mIsLockdownVpnEnabled:Z

    invoke-static {v4, v0, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mAllowedApplications:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDisallowedApplications:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    iget v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->removeLoggingRulesForVpnBypass(I)V

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    iget v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    iget v3, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnClientUid:I

    iget-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mInterfaceName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mRouteInfo:Ljava/util/List;

    iget-object v6, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDnsServerAddresses:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x186a0

    mul-int/2addr v0, v2

    add-int/lit8 v7, v0, 0x1

    const v8, 0x1869f

    add-int/2addr v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "knox_nw_event_4_mch_"

    invoke-static {v2, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    sget-object v13, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string/jumbo v11, "knox_nw_event_4"

    const-string v12, ""

    move-object v15, v13

    const-string/jumbo v13, "knox_nw_event_4_mch"

    const-string v14, ""

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object v13, v15

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v12, "knox_nw_event_4"

    const-string v13, ""

    const-string/jumbo v14, "knox_nw_event_4_mch"

    move-object/from16 v16, v15

    const-string v15, ""

    invoke-direct/range {v11 .. v16}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object/from16 v15, v16

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v14, " -m owner --uid-owner "

    invoke-static {v3, v14}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string/jumbo v11, "RETURN"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v3, v14}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RETURN"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v12, ""

    const-string v10, " -o lo "

    const-string/jumbo v11, "RETURN"

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v12, ""

    const-string v10, " -o lo "

    const-string/jumbo v11, "RETURN"

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v10, " -d "

    const-string v11, " -o tun+"

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    move-object/from16 p1, v3

    instance-of v3, v8, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v10, v12, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RETURN"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    instance-of v3, v8, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v10, v12, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RETURN"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_4
    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    instance-of v12, v6, Ljava/net/Inet4Address;

    move-object/from16 p1, v3

    const-string v3, " -m owner --uid-owner 0 -d "

    if-eqz v12, :cond_4

    new-instance v6, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    move-object v12, v10

    invoke-static {v3, v8, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v11

    const-string/jumbo v11, "RETURN"

    move-object v8, v12

    const-string v12, ""

    move-object/from16 v21, v6

    move-object v6, v3

    move-object v3, v8

    move-object/from16 v8, v21

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    move-object v12, v10

    move-object v10, v11

    instance-of v6, v6, Ljava/net/Inet6Address;

    if-eqz v6, :cond_5

    new-instance v6, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v3, v8, v10}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "RETURN"

    move-object v8, v12

    const-string v12, ""

    move-object/from16 v21, v10

    move-object v10, v3

    move-object v3, v8

    move-object v8, v6

    move-object/from16 v6, v21

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    move-object v6, v10

    move-object v3, v12

    :goto_6
    move-object v10, v3

    move-object v11, v6

    move-object/from16 v3, p1

    goto :goto_5

    :cond_6
    move-object v3, v10

    move-object v6, v11

    const/4 v8, 0x1

    const/16 v16, 0x0

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    move-object/from16 v19, v13

    goto/16 :goto_b

    :cond_8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v17, v16

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/RouteInfo;

    invoke-virtual {v10}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "0.0.0.0/0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v12, v8

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3, v11, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RETURN"

    move/from16 v18, v12

    const-string v12, ""

    move-object/from16 p1, v5

    move/from16 v5, v18

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_9
    move-object/from16 p1, v5

    move v5, v8

    const-string v8, "::/0"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3, v11, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RETURN"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    move v8, v5

    move-object/from16 v5, p1

    goto :goto_7

    :cond_a
    invoke-virtual {v10}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    const-string v12, " ! -d "

    const/16 v5, 0x9

    if-eqz v8, :cond_d

    invoke-virtual {v10}, Landroid/net/RouteInfo;->getType()I

    move-result v8

    if-ne v8, v5, :cond_c

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RETURN"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v19, v13

    goto/16 :goto_a

    :cond_c
    invoke-virtual {v10}, Landroid/net/RouteInfo;->getType()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_b

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3, v11, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v11

    const-string/jumbo v11, "RETURN"

    move-object/from16 v16, v12

    const-string v12, ""

    move-object/from16 p2, v15

    move-object/from16 v15, v16

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object/from16 v19, v13

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v15, v5, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knox_nw_event_4_act"

    const-string v12, ""

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object/from16 v20, v13

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v20

    const/16 v16, 0x1

    goto/16 :goto_a

    :cond_d
    move-object v8, v11

    move-object/from16 v19, v13

    move-object/from16 v20, v15

    move-object v15, v12

    invoke-virtual {v10}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet6Address;

    if-eqz v11, :cond_e

    invoke-virtual {v10}, Landroid/net/RouteInfo;->getType()I

    move-result v11

    if-ne v11, v5, :cond_f

    new-instance v5, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RETURN"

    const-string v12, ""

    move-object v8, v5

    move-object/from16 v13, v19

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_9
    move-object/from16 v15, v20

    goto :goto_a

    :cond_f
    move-object/from16 v13, v19

    invoke-virtual {v10}, Landroid/net/RouteInfo;->getType()I

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_10

    new-instance v5, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3, v8, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RETURN"

    const-string v12, ""

    move-object/from16 v21, v8

    move-object v8, v5

    move-object/from16 v5, v21

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object/from16 v19, v13

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v15, v5, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knox_nw_event_4_act"

    const-string v12, ""

    move-object/from16 v13, v20

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object v15, v13

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x1

    goto :goto_a

    :cond_10
    move-object/from16 v19, v13

    goto :goto_9

    :goto_a
    move-object/from16 v5, p1

    move-object/from16 v13, v19

    const/4 v8, 0x1

    goto/16 :goto_7

    :goto_b
    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RETURN"

    const-string v12, ""

    move-object/from16 v13, v19

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RETURN"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v16

    :cond_11
    const-string v3, " -p udp -m state --state NEW ! -o tun+"

    const-string v5, " -p tcp -m state --state NEW ! -o tun+"

    if-nez v16, :cond_12

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knox_nw_event_4_act"

    const-string v12, ""

    move-object v13, v15

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knox_nw_event_4_act"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_12
    move-object v13, v15

    :goto_c
    if-nez v17, :cond_13

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knox_nw_event_4_act"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knox_nw_event_4_act"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v0, " -p tcp -m state --state NEW -o "

    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knox_nw_event_4_act"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knox_nw_event_4_act"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v0, " -p udp -m state --state NEW -o "

    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knox_nw_event_4_act"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "knox_nw_event_4_act"

    const-string v12, ""

    invoke-direct/range {v8 .. v13}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    const/4 v3, 0x0

    const/4 v12, 0x1

    invoke-static {v12, v3, v2, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    const/4 v0, 0x6

    invoke-static {v12, v3, v7, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    :cond_14
    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mAllowedApplications:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    iget v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->removeLoggingRulesForVpnBypass(I)V

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    iget v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    iget v3, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnClientUid:I

    iget-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mInterfaceName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mRouteInfo:Ljava/util/List;

    iget-object v6, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUidRanges:Ljava/util/Set;

    iget-object v7, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDnsServerAddresses:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->addLoggingRulesForPerAppVpnBypass(IILjava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    :cond_15
    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDisallowedApplications:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    iget v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->removeLoggingRulesForVpnBypass(I)V

    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    iget v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    iget v3, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnClientUid:I

    iget-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mInterfaceName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mRouteInfo:Ljava/util/List;

    iget-object v6, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUidRanges:Ljava/util/Set;

    iget-object v7, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDnsServerAddresses:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->addLoggingRulesForPerAppVpnBypass(IILjava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    :cond_16
    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnBypassLoggingStateMap:Ljava/util/HashMap;

    iget v1, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 6

    const-string/jumbo v0, "filtered onLost callback being called for netId "

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-string/jumbo v2, "onLost callback being called for netId "

    const-string v3, "KnoxNetworkEventService"

    invoke-static {p1, v2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mInterfaceName:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string/jumbo v5, "ipsec"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mInterfaceName:Ljava/lang/String;

    return-void

    :cond_1
    :try_start_0
    iget v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnNetId:I

    if-ne v2, p1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object p1, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnBypassLoggingStateMap:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object p1, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    iget v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->removeLoggingRulesForVpnBypass(I)V

    iget-boolean p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mIsLockdownVpnEnabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mLockdownVpnAllowList:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object p1, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    iget v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    iget v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnClientUid:I

    iget-object v5, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mLockdownVpnAllowList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v5}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->addLockdownVpnBypassLoggingRules(IILjava/util/List;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object p1, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    iget v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    iget v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnClientUid:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->addLockdownVpnBypassLoggingRules(II)V

    :goto_1
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object p1, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mVpnBypassLoggingStateMap:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iput v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnNetId:I

    iput v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mVpnClientUid:I

    iput-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mInterfaceName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mIsLockdownVpnEnabled:Z

    iput-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mAllowedApplications:Ljava/util/List;

    iput-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDisallowedApplications:Ljava/util/List;

    iput-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mRouteInfo:Ljava/util/List;

    iput-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mDnsServerAddresses:Ljava/util/List;

    iput-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$VpnNetworkCallback;->mLockdownVpnAllowList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onLost UnsupportedOperationException "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onLost NullPointerException "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    return-void
.end method
