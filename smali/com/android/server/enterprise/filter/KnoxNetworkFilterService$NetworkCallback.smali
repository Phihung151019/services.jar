.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

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

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLinkPropertiesChanged being called for netId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_knox_nwfilter_dns_exempt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "_knox_nwfilter_dns_drop"

    invoke-static {v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    const/16 v4, 0x4e1f

    goto :goto_0

    :cond_0
    const v4, 0x186a0

    mul-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x1

    const v6, 0x1869f

    add-int/2addr v0, v6

    move/from16 v20, v4

    move v4, v0

    move/from16 v0, v20

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    const-string v14, " -m owner --uid-owner "

    const-string v15, " -p udp --dport 53 "

    invoke-static {v14, v0, v15}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    move-object v11, v9

    const-string v9, "DROP"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v15}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DROP"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v10, v7

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    instance-of v6, v4, Ljava/net/Inet4Address;

    const-string v7, " -p tcp --dport 53 -d "

    const-string v8, " -p tcp --dport 443 -d "

    const-string v9, " -p udp --dport 443 -d "

    move-object/from16 p0, v2

    const-string v2, " -p tcp --dport 853 -d "

    move-object/from16 p1, v10

    const-string v10, " -p udp --dport 853 -d "

    if-eqz v6, :cond_1

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    move-object/from16 p2, v5

    invoke-static {v14, v0, v10}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v7

    const-string v7, "ACCEPT"

    move-object/from16 v17, v8

    const-string v8, ""

    move-object/from16 v20, v5

    move-object/from16 v5, p2

    move-object/from16 p2, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v12

    move-object v12, v9

    move-object v9, v11

    move-object v11, v4

    move-object v4, v6

    move-object/from16 v6, v20

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v15}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v10}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v11

    move-object v11, v9

    const-string v9, "DROP"

    const-string v10, ""

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v8, v6

    move-object v9, v11

    move-object/from16 v6, v17

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DROP"

    const-string v10, ""

    move-object/from16 v2, v17

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v9, v11

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DROP"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v9, v11

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DROP"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v9, v11

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DROP"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v9, v11

    move-object v11, v7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p2

    move-object/from16 p1, v1

    move-object/from16 v19, v2

    move-object/from16 v2, v16

    goto/16 :goto_2

    :cond_1
    move-object/from16 v16, v3

    move-object v3, v8

    move-object/from16 v17, v12

    move-object/from16 p2, v13

    move-object v13, v7

    move-object v12, v9

    move-object v9, v11

    move-object/from16 v11, p1

    instance-of v6, v4, Ljava/net/Inet6Address;

    if-eqz v6, :cond_2

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v10}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    move-object v4, v6

    move-object v6, v7

    const-string v7, "ACCEPT"

    move-object/from16 v18, v8

    const-string v8, ""

    move-object/from16 p1, v1

    move-object/from16 v19, v17

    move-object/from16 v1, v18

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v6, v4

    move-object/from16 v4, v16

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v15}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v10}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v11

    move-object v11, v9

    const-string v9, "DROP"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object/from16 v4, p2

    move-object v9, v11

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    move-object/from16 v8, v17

    invoke-static {v14, v0, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DROP"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v9, v11

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DROP"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v9, v11

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DROP"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v9, v11

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {v14, v0, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback$$ExternalSyntheticOutline0;->m(Ljava/net/InetAddress;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DROP"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    move-object v9, v11

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v4, p2

    move-object/from16 p1, v1

    move-object v7, v11

    move-object/from16 v2, v16

    move-object/from16 v19, v17

    :goto_2
    move-object/from16 v1, p1

    move-object v3, v2

    move-object v13, v4

    move-object v10, v7

    move-object v11, v9

    move-object/from16 v12, v19

    move-object/from16 v2, p0

    goto/16 :goto_1

    :cond_3
    move-object/from16 p1, v1

    move-object/from16 v19, v12

    move-object v4, v13

    const-string v0, "*nat"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object/from16 v5, p1

    invoke-static {v3, v0, v2, v5, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    const-string v0, "*filter"

    move-object/from16 v6, v19

    invoke-static {v3, v0, v2, v6, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    const/4 v3, 0x6

    invoke-static {v3, v0, v2, v4, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLost being called for netId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    iget p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    invoke-interface {p1, p0}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
