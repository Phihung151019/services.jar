.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mDefaultInterface:Ljava/lang/String;

.field public mIsWifiConfigured:Z

.field public final synthetic this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mIsWifiConfigured:Z

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

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCapabilitiesChanged being called for wifi with netId "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KnoxNetworkEventService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mIsWifiConfigured:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mIsWifiConfigured:Z

    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 24

    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLinkPropertiesChanged being called for netId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for interface "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KnoxNetworkEventService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v3, v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    sget-object v9, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    sget-object v15, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const/4 v5, 0x1

    const-string v6, " -m owner --uid-owner "

    const-string v7, "-"

    const v16, 0x1869f

    const v17, 0x186a0

    const/16 v18, 0x4e1f

    const/16 v19, 0x2710

    const/16 v20, 0x0

    if-nez v3, :cond_0

    :goto_0
    move-object/from16 v21, v2

    move-object v8, v7

    move-object v7, v6

    move v6, v5

    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_0
    const-string/jumbo v3, "NetworkCallback: insertRulesForAbnormalPackets"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v3, v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string/jumbo v10, "NetworkCallback: insertRulesForAbnormalPackets userId = "

    invoke-static {v8, v10, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v10, v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    iget-object v11, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-nez v8, :cond_1

    move/from16 v8, v18

    move/from16 v13, v19

    goto :goto_2

    :cond_1
    mul-int v8, v8, v17

    add-int/lit8 v13, v8, 0x1

    add-int v8, v8, v16

    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v13, v10

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    move-object v14, v13

    const-string/jumbo v13, "knox_nw_event_2_mch"

    move-object/from16 v21, v14

    const-string v14, ""

    move-object/from16 v22, v11

    const-string/jumbo v11, "knox_nw_event_2"

    move-object/from16 v23, v12

    const-string v12, ""

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move-object/from16 v3, v21

    move-object/from16 v0, v22

    move-object/from16 v21, v2

    move-object/from16 v2, v23

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v13, "knox_nw_event_2_mch"

    const-string v14, ""

    const-string/jumbo v11, "knox_nw_event_2"

    const-string v12, ""

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v11, v20

    move/from16 v22, v11

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    instance-of v13, v12, Ljava/net/Inet4Address;

    const-string v14, " -o "

    const-string v4, " -p udp --dport 53 -d "

    if-eqz v13, :cond_2

    new-instance v11, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v6, v8, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v12, v7

    const-string/jumbo v7, "RETURN"

    move-object v13, v8

    const-string v8, ""

    move v14, v5

    const-string/jumbo v5, "knox_nw_event_2_mch"

    move-object/from16 v23, v6

    move-object v6, v4

    move-object v4, v11

    move-object/from16 v11, v23

    move/from16 v23, v14

    move-object v14, v13

    move/from16 v13, v23

    const/16 v23, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v14

    move-object v14, v12

    move-object v12, v11

    move v11, v13

    goto :goto_4

    :cond_2
    move v13, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    const/16 v23, 0x0

    instance-of v8, v12, Ljava/net/Inet6Address;

    if-eqz v8, :cond_3

    new-instance v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v5, v7, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v14, v7

    const-string/jumbo v7, "RETURN"

    move-object v12, v6

    move-object v6, v4

    move-object v4, v8

    const-string v8, ""

    move-object/from16 v22, v5

    const-string/jumbo v5, "knox_nw_event_2_mch"

    move-object v1, v14

    move-object v14, v12

    move-object/from16 v12, v22

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v22, v13

    goto :goto_4

    :cond_3
    move-object v12, v5

    move-object v14, v6

    move-object v1, v7

    :goto_4
    move-object v8, v1

    move-object v6, v12

    move v5, v13

    move-object v7, v14

    move-object/from16 v1, p0

    goto/16 :goto_3

    :cond_4
    move v13, v5

    move-object v12, v6

    move-object v14, v7

    move-object v1, v8

    const/16 v23, 0x0

    const-string v4, " -p udp --dport 53 -o "

    if-eqz v11, :cond_5

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    move-object v5, v12

    invoke-static {v5, v1, v4, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move v6, v13

    const-string/jumbo v13, "knox_nw_event_2_act"

    move-object v7, v14

    const-string v14, ""

    const-string/jumbo v11, "knox_nw_event_2_mch"

    move-object v8, v7

    move-object v7, v5

    move-object/from16 v5, v23

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move-object v7, v12

    move v6, v13

    move-object v8, v14

    move-object/from16 v5, v23

    :goto_5
    if-eqz v22, :cond_6

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v7, v1, v4, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "knox_nw_event_2_act"

    const-string v14, ""

    const-string/jumbo v11, "knox_nw_event_2_mch"

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v0, 0x4

    invoke-static {v6, v5, v3, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    const/4 v0, 0x6

    invoke-static {v6, v5, v2, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v2, v21

    goto/16 :goto_1

    :cond_7
    move-object/from16 v1, p0

    goto/16 :goto_0

    :goto_6
    iget-object v0, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-boolean v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mIsWifiConfigured:Z

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, v20

    :goto_7
    if-ge v3, v2, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/net/InterfaceAddress;

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v10

    instance-of v11, v10, Ljava/net/Inet6Address;

    if-eqz v11, :cond_8

    goto :goto_7

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    move-object/from16 v3, v21

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_9
    move-object/from16 v3, v21

    goto :goto_9

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v21

    invoke-static {v0, v2, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_9
    move-object v0, v5

    :goto_a
    iget-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v10, v20

    :cond_a
    if-ge v10, v4, :cond_b

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/net/InterfaceAddress;

    invoke-virtual {v11}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v12

    instance-of v12, v12, Ljava/net/Inet4Address;

    if-eqz v12, :cond_a

    invoke-virtual {v11}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v4

    goto :goto_b

    :catch_1
    :cond_b
    move-object v2, v5

    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mDefaultInterface: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    const-string v11, " destIpRange: "

    const-string v12, " broadcastIpAddress: "

    invoke-static {v4, v10, v11, v0, v12}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v4, v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    const/16 v10, 0x10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_e

    :cond_c
    const-string/jumbo v4, "NetworkCallback: insertRuleForLocalNetworkPackets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v4, v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v10, "NetworkCallback: insertRuleForLocalNetworkPackets userId = "

    invoke-static {v4, v10, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object v10, v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-nez v4, :cond_d

    move/from16 v4, v18

    move/from16 v11, v19

    goto :goto_d

    :cond_d
    mul-int v4, v4, v17

    add-int/lit8 v11, v4, 0x1

    add-int v4, v4, v16

    :goto_d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v10

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v13, "knox_nw_event_3_mch"

    const-string v14, ""

    move-object v12, v11

    const-string/jumbo v11, "knox_nw_event_3"

    move-object/from16 v21, v12

    const-string v12, ""

    move-object/from16 v1, v21

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v11, " -p udp -m multiport --dports 1900,5353"

    invoke-static {v7, v4, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v7

    const-string/jumbo v7, "RETURN"

    move-object v12, v8

    const-string v8, ""

    move-object/from16 v23, v5

    const-string/jumbo v5, "knox_nw_event_3_mch"

    move v13, v6

    move-object v6, v11

    move-object/from16 v21, v12

    move-object v11, v4

    move-object v4, v10

    move-object/from16 v10, v22

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v5, " -p udp -d 224.0.0.0/24"

    invoke-static {v10, v11, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move v6, v13

    const-string/jumbo v13, "knox_nw_event_3_act"

    const-string v14, ""

    move-object v5, v11

    const-string/jumbo v11, "knox_nw_event_3_mch"

    move-object v7, v10

    move-object v10, v4

    move-object v4, v5

    move-object/from16 v5, v23

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v8, " -p udp -d "

    invoke-static {v7, v4, v8, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "knox_nw_event_3_act"

    const-string v14, ""

    const-string/jumbo v11, "knox_nw_event_3_mch"

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v8, " -p tcp -m state --state NEW -d "

    invoke-static {v7, v4, v8, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "knox_nw_event_3_act"

    const-string v14, ""

    const-string/jumbo v11, "knox_nw_event_3_mch"

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x2e

    invoke-static {v6, v5, v1, v4}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    move-object/from16 v1, p0

    move-object/from16 v8, v21

    goto/16 :goto_c

    :cond_e
    :goto_e
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mDefaultInterface:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->mIsWifiConfigured:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLost being called for netId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxNetworkEventService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object p1, p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->ABNORMAL_PACKETS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    sget-object p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->LOCAL_NW:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V

    return-void
.end method
