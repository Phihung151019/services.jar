.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final filterChains:Ljava/util/Map;

.field public static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field public static mNetdService:Landroid/net/INetd;

.field public static mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field public static final mangleChains:Ljava/util/Map;

.field public static final natChains:Ljava/util/Map;


# instance fields
.field public mNetworkManagementService:Landroid/os/INetworkManagementService;

.field public final vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "knox_vpn_mangle_exempt_dl"

    const-string/jumbo v5, "knox_vpn_mangle_exempt_cp"

    const-string/jumbo v1, "knox_vpn_no_uid"

    const-string/jumbo v2, "knox_vpn_OUTPUT"

    const-string/jumbo v3, "knox_vpn_proxy_accept"

    const-string/jumbo v6, "knox_vpn_EXEMPT"

    const-string/jumbo v7, "knox_vpn_tether_exempt"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "OUTPUT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mangleChains:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "knox_vpn_filter_input_drop"

    const-string/jumbo v3, "knox_vpn_tether_exempt"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "INPUT"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "knox_vpn_filter_output_drop"

    const-string/jumbo v3, "knox_vpn_filter_output_act"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "knox_vpn_filter_tether_fwd"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "FORWARD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->filterChains:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "knox_vpn_nat_preroute"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "PREROUTING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->natChains:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mangleChains:Ljava/util/Map;

    const-string v1, "*mangle"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createChainsInTable(Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->filterChains:Ljava/util/Map;

    const-string v1, "*filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createChainsInTable(Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->natChains:Ljava/util/Map;

    const-string v1, "*nat"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createChainsInTable(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static applyBlockingRulesForDns(III)V
    .locals 6

    const-string v0, "FW-KnoxVpnFirewallHelper"

    const-string v1, "Action to be performed on the dns packet is "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    new-instance v5, Landroid/net/UidRangeParcel;

    invoke-direct {v5, p0, p1}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for the start uid "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and for the stop uid "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    const/4 p1, 0x0

    if-eq p2, p0, :cond_4

    const/4 p0, 0x2

    if-eq p2, p0, :cond_3

    const/4 p0, 0x3

    if-eq p2, p0, :cond_2

    const/4 p0, 0x4

    if-eq p2, p0, :cond_1

    const/4 p0, 0x5

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnDestroyBlockedKnoxNetwork()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    :try_start_1
    const-string/jumbo p0, "error occured while trying to update rules for dns packets "

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static applyBlockingRulesForDns(ILjava/util/List;)V
    .locals 10

    const-string v0, "FW-KnoxVpnFirewallHelper"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Landroid/net/UidRangeParcel;

    invoke-direct {v8, v7, v7}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Action to be performed on the dns packet is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for the start uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and for the stop uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->knoxVpnDestroyBlockedKnoxNetwork()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p1

    invoke-interface {p0, v5, p1}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p1

    invoke-interface {p0, v5, p1}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p1

    invoke-interface {p0, v5, p1}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p1

    invoke-interface {p0, v5, p1}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p1

    invoke-interface {p0, v5, p1}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;

    move-result-object p1

    invoke-interface {p0, v5, p1}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    :try_start_1
    const-string/jumbo p0, "error occured while trying to update rules for dns packets "

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static checknterface(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "block_traffic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const-string/jumbo v0, "[a-zA-Z0-9_]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static deleteIpRuleForuidSourceSelection(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "ip -6 rule"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "ip rule"

    :goto_0
    const-string/jumbo v0, "block_traffic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " del "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "from all uidrange "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prio 52 "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static getDefaultRouteAppUidList()Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x431

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.samsung.android.messaging"

    const-string v2, "Exception in getUIDForPackage : "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, -0x1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-wide/16 v7, 0x80

    const/4 v9, 0x0

    invoke-interface {v6, v1, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    move v1, v5

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    :try_start_1
    const-string v6, "FW-KnoxVpnFirewallHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v5

    :goto_2
    if-eq v1, v5, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-direct {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "netd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetdService:Landroid/net/INetd;

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get OemNetd listener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "FW-KnoxVpnFirewallHelper"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method

.method public static native jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I
.end method

.method public static native jnigetInterfaceIndex(Ljava/lang/String;)I
.end method

.method public static parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->actionType:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->secondParam:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->jumpChain:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->firstParam:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->actionChain:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, " -j "

    const-string v7, "\n"

    if-eqz v1, :cond_3

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2

    const/4 v8, 0x2

    if-eq v1, v8, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    const-string v1, "-X "

    invoke-static {v0, v1, p0, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "-D "

    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "-I "

    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "-A "

    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v5
.end method

.method public static toUidRangeStableParcels(Ljava/util/Set;)[Landroid/net/UidRangeParcel;
    .locals 5

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRangeParcel;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRangeParcel;

    new-instance v3, Landroid/net/UidRangeParcel;

    iget v4, v2, Landroid/net/UidRangeParcel;->start:I

    iget v2, v2, Landroid/net/UidRangeParcel;->stop:I

    invoke-direct {v3, v4, v2}, Landroid/net/UidRangeParcel;-><init>(II)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final addExemptRulesForDownloadManagerUid(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertExemptRulesForDownloadManagerUid(IILjava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertExemptRulesForDownloadManagerUid(IILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final addExemptRulesForUid(I)V
    .locals 7

    const/4 v0, 0x3

    invoke-static {p1, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -m owner --uid-owner "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v5, ""

    const-string/jumbo v2, "knox_vpn_EXEMPT"

    const-string v4, "ACCEPT"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const/4 v2, 0x1

    const/16 v6, 0x2e

    const-string v3, "*mangle"

    const/4 v4, 0x0

    move-object v5, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final addInputFilterDropRulesForInterface(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 3

    const-string/jumbo v0, "com.samsung.sVpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo p1, "v4-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_2

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :cond_2
    :goto_0
    if-gtz p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {p4, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    const/4 p4, 0x1

    if-ne p3, p4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p2, p1, p4}, Landroid/os/INetworkManagementService;->updateInputFilterUserWideRules([III)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p2, p1, p4}, Landroid/os/INetworkManagementService;->updateInputFilterAppWideRules([III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    return-void
.end method

.method public final addIpRouteAndPolicyRules(ILjava/lang/String;)V
    .locals 5

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FW-KnoxVpnFirewallHelper"

    if-nez v0, :cond_0

    const-string/jumbo p0, "not allowed name  : "

    invoke-static {p0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "block_traffic"

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x4

    const-string v3, " add "

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const/4 v4, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const-string/jumbo p0, "unknown interface type has been recieved "

    invoke-static {p1, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addIpRulesForExemptedUid(IILjava/lang/String;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const-string/jumbo p0, "unknown interface type has been recieved for the method addIpRulesForExemptedUid"

    const-string p1, "FW-KnoxVpnFirewallHelper"

    invoke-static {p2, p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(II)V

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRulesForExemptedUid(IILjava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(II)V

    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRulesForExemptedUid(IILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(II)V

    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRulesForExemptedUid(IILjava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(II)V

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRulesForExemptedUid(IILjava/lang/String;)V

    return-void
.end method

.method public final addMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    const-string/jumbo p2, "block_traffic"

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const-string/jumbo p0, "addMarkingRulesForFilteredPackages: unknown interface type has been recieved "

    const-string p2, "FW-KnoxVpnFirewallHelper"

    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addMiscRules(ILjava/lang/String;Ljava/util/List;)V
    .locals 5

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FW-KnoxVpnFirewallHelper"

    if-nez v0, :cond_0

    const-string/jumbo p0, "not allowed name  : "

    invoke-static {p0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "block_traffic"

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-static {v3, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(ILjava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-static {v2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(ILjava/util/List;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    if-eq p1, v3, :cond_5

    const/4 v3, 0x6

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const-string/jumbo p0, "unknown interface type has been recieved "

    invoke-static {p1, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v4, p3, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForUidList(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3, p3, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForUidList(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0, v3, p3, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForUidList(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p0, v4, p3, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForUidList(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final addMiscRulesRange(IILjava/lang/String;)V
    .locals 11

    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FW-KnoxVpnFirewallHelper"

    if-nez v0, :cond_0

    const-string/jumbo p0, "not allowed name  : "

    invoke-static {p0, p3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "block_traffic"

    if-nez p3, :cond_1

    move-object p3, v0

    :cond_1
    const v2, 0x186a0

    mul-int v3, p1, v2

    add-int/lit8 v4, v3, 0x1

    const v5, 0x1869f

    add-int/2addr v5, v3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v0, :cond_2

    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    goto :goto_0

    :cond_2
    invoke-static {v4, v5, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getDefaultRouteApps(I)Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Landroid/util/Range;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/2addr p1, v6

    mul-int/2addr p1, v2

    sub-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v5, v3, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v6

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    new-instance v9, Landroid/net/UidRangeParcel;

    add-int/lit8 v10, v8, -0x1

    invoke-direct {v9, p1, v10}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move p1, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_5

    new-instance v0, Landroid/net/UidRangeParcel;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, p1, v2}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRangeParcel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addMiscRulesRange "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/net/UidRangeParcel;->start:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/UidRangeParcel;->stop:I

    invoke-static {v3, p3, v1, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v2, v0, Landroid/net/UidRangeParcel;->start:I

    iget v0, v0, Landroid/net/UidRangeParcel;->stop:I

    const/4 v3, 0x4

    if-eq p2, v6, :cond_8

    const/4 v4, 0x6

    if-eq p2, v7, :cond_7

    const/4 v5, 0x3

    if-eq p2, v5, :cond_6

    const-string/jumbo v0, "unknown interface type has been recieved "

    invoke-static {p2, v0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(III)V

    invoke-virtual {p0, v3, v2, v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForuidRangeSourceSelection(IIILjava/lang/String;)V

    invoke-virtual {p0, v4, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(III)V

    invoke-virtual {p0, v4, v2, v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForuidRangeSourceSelection(IIILjava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v4, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(III)V

    invoke-virtual {p0, v4, v2, v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForuidRangeSourceSelection(IIILjava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(III)V

    invoke-virtual {p0, v3, v2, v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRuleForuidRangeSourceSelection(IIILjava/lang/String;)V

    goto :goto_2

    :cond_9
    return-void
.end method

.method public final addRangeRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string/jumbo v0, "_uidlist"

    invoke-static {p3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "_act"

    invoke-static {p3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const p3, 0x186a0

    mul-int/2addr p3, p1

    add-int/lit8 v0, p3, 0x1

    const v1, 0x1869f

    add-int/2addr p3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -m owner --uid-owner "

    invoke-static {v0, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v7, "*mangle"

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x2e

    move-object v5, p0

    move-object v9, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string/jumbo p0, "com.samsung.sVpn"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p4, :cond_0

    const-string/jumbo p0, "v4-"

    invoke-virtual {p0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_1

    invoke-static {p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :cond_1
    :goto_0
    if-gtz p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    :try_start_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p4, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p4, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p1, p4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p4

    const/4 v0, 0x1

    invoke-interface {p4, p1, p0, v0}, Landroid/os/INetworkManagementService;->updateInputFilterUserWideRules([III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    return-void
.end method

.method public final addRulesForDroppingTetherPackets(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForDroppingTetherPackets(ILjava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForDroppingTetherPackets(ILjava/lang/String;)V

    return-void
.end method

.method public final addRulesForFilteredPackages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    const-string/jumbo v2, "_uidlist"

    invoke-static {v0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "_act"

    invoke-static {v0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v13, 0x0

    move v3, v13

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v9, v3, 0x1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v7, " -m owner --uid-owner "

    invoke-static {v7, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v7, ""

    move-object v14, v5

    move-object v5, v3

    move-object v3, v14

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v12, 0x0

    const-string v9, "*mangle"

    const/4 v10, 0x0

    const/16 v8, 0x2e

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_1
    const-string/jumbo v0, "com.samsung.sVpn"

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_2

    const-string/jumbo v0, "v4-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetIfaceIndexWitoutOffset(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :cond_3
    :goto_1
    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    move v13, v0

    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    const/4 v3, 0x1

    invoke-interface {p0, v0, v13, v3}, Landroid/os/INetworkManagementService;->updateInputFilterAppWideRules([III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_5
    return-void
.end method

.method public final addRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const-string/jumbo p0, "addRulesForNoUidPackets: unknown interface type has been recieved "

    const-string p2, "FW-KnoxVpnFirewallHelper"

    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1, p3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v2, p3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v1, p3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addRulesForQC(I)V
    .locals 11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -m mark --mark "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v8, "ACCEPT"

    const-string v9, ""

    const-string/jumbo v6, "POSTROUTING"

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    const-string v2, "*mangle"

    const/4 v3, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public final addRulesForUsbTethering(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string/jumbo p0, "addRulesForUsbTethering: unknown interface type has been recieved "

    const-string p2, "FW-KnoxVpnFirewallHelper"

    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "*filter"

    const-string/jumbo v3, "knox_vpn_filter_tether_fwd"

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x2e

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/4 p1, 0x4

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForUsbTethering(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForUsbTethering(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    const-string p2, "*filter"

    const-string/jumbo p3, "knox_vpn_filter_tether_fwd"

    const/4 p1, 0x0

    const/4 p4, 0x0

    const/16 p5, 0x2e

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/4 p1, 0x6

    move-object p2, v0

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForUsbTethering(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForDroppingTetherPackets(ILjava/lang/String;)V

    return-void

    :cond_2
    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    const-string p2, "*filter"

    const-string/jumbo p3, "knox_vpn_filter_tether_fwd"

    const/4 p1, 0x0

    const/4 p4, 0x0

    const/16 p5, 0x2e

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const/4 p1, 0x4

    move-object p2, v0

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForUsbTethering(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesForDroppingTetherPackets(ILjava/lang/String;)V

    return-void
.end method

.method public final addRulesInOutputChain(Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "_uidlist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v3, ""

    const-string v5, ""

    const-string/jumbo v2, "knox_vpn_OUTPUT"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v7, "*mangle"

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/16 v10, 0x2e

    move-object v5, p0

    move-object v9, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final addRulesTetherAuth(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 24

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.DNS_REDIRECTION_PORT"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.HTTP_REDIRECTION_PORT"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.HTTPS_REDIRECTION_PORT"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.HTTPS_REDIRECTION_AUTH_PORT"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "KnoxVpnTetherAuthentication"

    if-lez v3, :cond_5

    if-lez v5, :cond_5

    if-lez v6, :cond_5

    if-gtz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    move-object/from16 v7, p3

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :cond_1
    if-ge v9, v8, :cond_2

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ljava/net/InetAddress;

    instance-of v11, v10, Ljava/net/Inet4Address;

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_3

    const-string/jumbo v0, "The usb interface ipV4 address received for usb tether mutual authentication is not valid"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-gtz v0, :cond_4

    const-string/jumbo v8, "applying firewall rules for tether auth uid failed"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v4, " -i "

    const-string v8, " -p udp --dport 53"

    invoke-static {v4, v1, v8}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v8, "DNAT --to "

    const-string v9, ":"

    invoke-static {v3, v8, v7, v9}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v23, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v15, "knox_vpn_nat_preroute"

    const-string v18, ""

    move-object/from16 v19, v23

    invoke-direct/range {v14 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v10, " -p tcp --dport 80"

    invoke-static {v4, v1, v10}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v5, v8, v7, v9}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v19, "knox_vpn_nat_preroute"

    const-string v22, ""

    invoke-direct/range {v18 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object/from16 v10, v18

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v15, " -p tcp --dport "

    invoke-static {v2, v4, v1, v15}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "ACCEPT"

    const-string v22, ""

    const-string/jumbo v19, "knox_vpn_nat_preroute"

    invoke-direct/range {v18 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object/from16 v10, v18

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v10, " -p tcp --dport 443"

    invoke-static {v4, v1, v10}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v6, v8, v7, v9}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v19, "knox_vpn_nat_preroute"

    const-string v22, ""

    invoke-direct/range {v18 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object/from16 v7, v18

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "knox_vpn_nat_preroute"

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v14, 0x1

    const-string v11, "*nat"

    const/4 v10, 0x4

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v21, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v11, "DROP"

    const-string v12, ""

    const-string/jumbo v9, "knox_vpn_filter_tether_fwd"

    move-object/from16 v13, v21

    invoke-direct/range {v8 .. v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v8, " -o "

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "DROP"

    const-string v20, ""

    const-string/jumbo v17, "knox_vpn_filter_tether_fwd"

    invoke-direct/range {v16 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object/from16 v8, v16

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "knox_vpn_filter_tether_fwd"

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v21, 0x1

    const-string v18, "*filter"

    const/16 v17, 0x2e

    move-object/from16 v16, p0

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v8, " -p udp --dport "

    invoke-static {v3, v4, v1, v8}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "ACCEPT"

    const-string v22, ""

    const-string/jumbo v19, "knox_vpn_tether_exempt"

    invoke-direct/range {v18 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object/from16 v3, v18

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v5, v4, v1, v15}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "ACCEPT"

    const-string v22, ""

    const-string/jumbo v19, "knox_vpn_tether_exempt"

    invoke-direct/range {v18 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object/from16 v3, v18

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v2, v4, v1, v15}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "ACCEPT"

    const-string v22, ""

    const-string/jumbo v19, "knox_vpn_tether_exempt"

    invoke-direct/range {v18 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object/from16 v2, v18

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v6, v4, v1, v15}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "ACCEPT"

    const-string v22, ""

    const-string/jumbo v19, "knox_vpn_tether_exempt"

    invoke-direct/range {v18 .. v23}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object/from16 v1, v18

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "knox_vpn_tether_exempt"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v21, 0x1

    const-string v18, "*filter"

    const/16 v17, 0x4

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    new-instance v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v1, " -m owner --uid-owner "

    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ACCEPT"

    const-string v20, ""

    const-string/jumbo v17, "knox_vpn_tether_exempt"

    move-object/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v18, "*mangle"

    const/16 v19, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x4

    move-object/from16 v20, v16

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ip rule del from all uidrange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lookup 97 prio 42;ip rule add from all uidrange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " lookup 97 prio 42;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, p0

    invoke-virtual {v9, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string/jumbo v0, "The ports received for usb tether mutual authentication is not valid"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V
    .locals 4

    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "not allowed name  : "

    const-string p1, "FW-KnoxVpnFirewallHelper"

    invoke-static {p0, p3, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const-string/jumbo v1, "block_traffic"

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v3, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v3, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0, v3, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    return-void
.end method

.method public final addRulesToDenyAccessToLocalHost(I)V
    .locals 14

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -o lo -p tcp --dport "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v9, ""

    const-string/jumbo v6, "knox_vpn_filter_output_drop"

    const-string v8, "DROP"

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -o lo -p udp --dport "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v12, ""

    const-string/jumbo v9, "knox_vpn_filter_output_drop"

    const-string v11, "DROP"

    move-object v13, v10

    move-object v10, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "*filter"

    const/16 v1, 0x2e

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public final createChainsInTable(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v7, ""

    const-string v9, ""

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "COMMIT\n"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runIptablesRestoreCmd(ILjava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_5
    invoke-static {p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v7, ""

    const-string v9, ""

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object p2, p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runIptablesRestoreCmd(ILjava/util/List;)V

    return-void
.end method

.method public final deleteExemptRulesForDownloadManagerUid(II)V
    .locals 8

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "ip -6 rule"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ip rule"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "*mangle"

    const-string/jumbo v5, "knox_vpn_mangle_exempt_dl"

    const/4 v6, 0x0

    move-object v2, p0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p2, v4}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " del from all uidrange "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " prio 47;"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteIpRuleForuidRangeSourceSelection(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "ip rule"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " del from all uidrange "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 53 ;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteIpRulesForExemptedUid(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "ip rule"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " del from all uidrange "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 51 ;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteNatRules(ILjava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "block_traffic"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -o "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v4, "MASQUERADE"

    const-string v5, ""

    const-string/jumbo v2, "POSTROUTING"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v3, "*nat"

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v6, p1

    move-object v5, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    :cond_0
    return-void
.end method

.method public final deleteRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p2

    const-string/jumbo v1, "_act"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "block_traffic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "60"

    move-object/from16 v6, p0

    :goto_0
    move-object v12, v2

    goto :goto_1

    :cond_0
    move-object/from16 v6, p0

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v1, " -m mark --mark "

    const-string v2, " -m connmark --mark "

    if-eqz v0, :cond_1

    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v2, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v0, "knox-netId-"

    invoke-static {v0, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v14, "knox_vpn_no_uid"

    const-string v17, ""

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v8, "*mangle"

    const/4 v9, 0x0

    const/4 v7, 0x0

    move/from16 v11, p1

    move-object v10, v13

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v1, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v7, "knox_vpn_no_uid"

    const-string v10, ""

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v8, "*mangle"

    const/4 v9, 0x0

    const/4 v7, 0x0

    move/from16 v11, p1

    move-object v10, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    invoke-static {v0, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v0, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v8, "*mangle"

    move-object/from16 v6, p0

    move-object v10, v1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void

    :cond_1
    move-object/from16 v18, v7

    new-instance v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v2, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "knox_vpn_no_uid"

    const-string v6, ""

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v8, "*mangle"

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p0

    move/from16 v11, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v1, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "knox_vpn_no_uid"

    const-string v6, ""

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v8, "*mangle"

    const/4 v7, 0x0

    move-object/from16 v6, p0

    move-object v10, v2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final deleteRulesForUsbTethering(ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "ip rule"

    :goto_0
    const-string v0, "60"

    if-eqz p2, :cond_2

    const-string/jumbo v1, "block_traffic"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    const-string v3, "*filter"

    const-string/jumbo v4, "knox_vpn_filter_tether_fwd"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x2e

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_3

    const-string v0, " del from all lookup "

    const-string v2, " prio 43;"

    invoke-static {p0, p1, v0, p2, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final deleteRulesToAcceptIncomingPackets(ILjava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    const-string/jumbo v0, "block_traffic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "ip rule"

    :goto_0
    const-string v2, " del from all iif "

    const-string v3, " lookup "

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 45;"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final deleteRulesToAcceptProxyPackets(IILjava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " -m owner --uid-owner "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -m mark --mark "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v3, "ACCEPT"

    const-string v4, ""

    const-string/jumbo v1, "knox_vpn_proxy_accept"

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v2, "*mangle"

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v5, p1

    move-object v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V
    .locals 16

    move/from16 v0, p2

    move-object/from16 v1, p3

    const-string/jumbo v2, "block_traffic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "60"

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v9, " -m mark --mark "

    const-string v4, " -o lo -p tcp --dport "

    invoke-static {v0, v9, v1, v4}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v6, "ACCEPT"

    const-string v7, ""

    const-string/jumbo v4, "knox_vpn_filter_output_act"

    move-object v8, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v4, "*filter"

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v2, " -o lo -p udp --dport "

    invoke-static {v0, v9, v1, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ACCEPT"

    const-string v14, ""

    const-string/jumbo v11, "knox_vpn_filter_output_act"

    move-object v10, v6

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v4, "*filter"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final deleteRulesToExemptCaptivePortalQueries(II)V
    .locals 8

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "ip -6 rule"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ip rule"

    :goto_0
    const-string v1, " del from all uidrange "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prio 46;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v1, " -m owner --uid-owner "

    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v5, "ACCEPT"

    const-string v6, ""

    const-string/jumbo v3, "knox_vpn_mangle_exempt_cp"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v4, "*mangle"

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v7, p1

    move-object v6, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, p2, v3}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final getDefaultRouteApps(I)Ljava/util/List;
    .locals 12

    const-string/jumbo v0, "getDefaultRouteApps: vendor uid "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getProfileOwningUserId(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    const-string/jumbo v4, "com.samsung.sVpn"

    const-string v5, "FW-KnoxVpnFirewallHelper"

    const-string/jumbo v6, "getDefaultRouteApps: nonChainedVendorUid  "

    if-nez p1, :cond_4

    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getDefaultRouteAppUidList()Ljava/util/List;

    move-result-object v0

    iget-object v7, v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v10, v0

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getDefaultRouteApps exempted uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v0, v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    iget-object v7, v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v0, 0x3f8

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDefaultRouteApps: vpn uid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    if-ne v0, v3, :cond_3

    iget v0, v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNonChainedVendoUid(I)I

    move-result p0

    if-lez p0, :cond_3

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->AID_EXEMPT_LIST:[Ljava/lang/Integer;

    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x3

    if-ge p1, v0, :cond_7

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v1

    :cond_5
    iget v4, v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, p1, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    if-ne v0, v3, :cond_7

    iget v0, v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNonChainedVendoUid(I)I

    move-result p0

    if-lez p0, :cond_7

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method public final getForwardMark(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public final getNonChainedVendoUid(I)I
    .locals 3

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    iget v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget p0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getProfileOwningUserId(I)Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v2

    if-ne p1, v2, :cond_2

    iget-object p0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final insertDropRulesForNoUidPackets(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p0

    :try_start_0
    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const-string v1, " -o "

    const-string v5, " -p tcp --tcp-flags ALL RST "

    const-string v11, " -m mark ! --mark "

    const-string v12, " -s "

    const-string/jumbo v6, "MARK --set-mark "

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    if-eq v0, v7, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v2, :cond_2

    :try_start_1
    const-string v0, "*mangle"

    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v14, "knox_vpn_no_uid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    invoke-direct/range {v13 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v9, p1

    move-object v6, v0

    move-object v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string v0, "*filter"

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v5, "knox_vpn_filter_output_drop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DROP"

    const-string v8, ""

    move-object/from16 v9, v18

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object/from16 v18, v9

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v9, p1

    move-object v6, v0

    move-object v8, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string v0, "*filter"

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v1, "knox_vpn_filter_output_drop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -o v4-"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "DROP"

    const-string v6, ""

    move-object v3, v4

    move-object v4, v2

    move-object v2, v3

    move-object v3, v1

    move-object/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v5, p1

    move-object v4, v2

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "*mangle"

    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v14, "knox_vpn_no_uid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    invoke-direct/range {v13 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move/from16 v9, p1

    move-object v6, v0

    move-object v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string v0, "*filter"

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string/jumbo v5, "knox_vpn_filter_output_drop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v5

    const-string v5, "DROP"

    const-string v6, ""

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    move-object v2, v4

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    move/from16 v5, p1

    move-object v4, v2

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string v0, "FW-KnoxVpnFirewallHelper"

    const-string v1, "Exception occured while trying to get apply dropping rules for knox vpn packets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final insertExemptRulesForDownloadManagerUid(IILjava/lang/String;)V
    .locals 10

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "ip -6 rule"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ip rule"

    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "v4-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "FW-KnoxVpnFirewallHelper"

    if-gtz v1, :cond_1

    const-string/jumbo v1, "Non Clat interface is detected while applying ip rules for download uid"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    const-string p3, "Clat interface is detected while applying ip rules for download uid"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v1

    :goto_1
    if-gtz v1, :cond_3

    goto :goto_3

    :cond_3
    :try_start_0
    const-string/jumbo p3, "vpn_management"

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object p3

    invoke-interface {p3}, Landroid/net/IVpnManager;->getNetIdforActiveDefaultInterface()I

    move-result p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p3, 0x0

    :goto_2
    if-gtz p3, :cond_4

    :goto_3
    return-void

    :cond_4
    const-string v2, " del from all uidrange "

    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " prio 47;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " add from all uidrange "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fwmark "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " lookup "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -m owner --uid-owner "

    const-string v1, " -m mark --mark "

    invoke-static {p2, p3, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v7, "ACCEPT"

    const-string v8, ""

    const-string/jumbo v5, "knox_vpn_mangle_exempt_dl"

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v6, "*mangle"

    const/4 v7, 0x0

    const/4 v5, 0x1

    move v9, p1

    move-object v8, v4

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p3, p2, v0}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_1
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "block_traffic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "add iptable route : Invalid interface name received:"

    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnFirewallHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    const-string/jumbo v2, "ip route"

    const-string/jumbo v3, "ip -6 route"

    if-ne p1, v1, :cond_1

    move-object p1, v3

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, " prio 1;"

    const-string v5, " dev "

    if-ne p1, v2, :cond_2

    const-string v2, " 0.0.0.0/0 table "

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v5, p3, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    const-string p1, " ::/0 table "

    invoke-static {v0, v3, p2, p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v5, p3, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final insertIpRuleForUidList(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "ip rule"

    :goto_0
    const-string/jumbo v0, "block_traffic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " add "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "from all uidrange "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lookup "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " prio 52 "

    const-string v2, ";"

    invoke-static {p4, p0, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final insertIpRuleForuidRangeSourceSelection(IIILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "block_traffic"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "ip rule"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " add from all uidrange "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lookup "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 53 ;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final insertIpRules(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "block_traffic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "add iptable rule : Invalid interface name received:"

    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FW-KnoxVpnFirewallHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "ip rule"

    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fwmark "

    const-string p2, " table "

    invoke-static {v0, p1, p3, p2, p3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, " prio 48 ;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final insertIpRulesForExemptedUid(IILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "rmnet"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "v4-"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "FW-KnoxVpnFirewallHelper"

    if-gtz v0, :cond_0

    const-string/jumbo v0, "Non Clat Mobile interface is detected while applying ip rules"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string p3, "Clat interface is detected while applying ip rules"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-gtz v0, :cond_2

    return-void

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "ip rule"

    :goto_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " add from all uidrange "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lookup "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 51 ;"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final insertMarkingRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "_act"

    invoke-static {p3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo p3, "block_traffic"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "60"

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string p3, "CONNMARK --set-mark "

    invoke-static {p3, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v3, ""

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string p3, " -m connmark --mark "

    invoke-static {p3, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CONNMARK --restore-mark"

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {p3, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACCEPT"

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    const-string v5, "*mangle"

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public final insertNatRules(ILjava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "block_traffic"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -o "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string/jumbo v4, "MASQUERADE"

    const-string v5, ""

    const-string/jumbo v2, "POSTROUTING"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v3, "*nat"

    const/4 v4, 0x0

    const/4 v2, 0x1

    move v6, p1

    move-object v5, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    :cond_0
    return-void
.end method

.method public final insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V
    .locals 1

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    move v0, p5

    move p5, p1

    move p1, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public final insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p2, "COMMIT\n"

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    if-eqz p5, :cond_0

    iget-object v1, p5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->actionType:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    iput-object v3, p5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->actionType:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runIptablesRestoreCmd(ILjava/util/List;)V

    iput-object v1, p5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;->actionType:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_4

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    if-eqz p5, :cond_2

    invoke-static {p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, p3

    :cond_4
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runIptablesRestoreCmd(ILjava/util/List;)V

    return-void
.end method

.method public final insertRulesForDroppingTetherPackets(ILjava/lang/String;)V
    .locals 14

    move-object/from16 v0, p2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v1, " -i "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v8, "DROP"

    const-string v9, ""

    const-string/jumbo v6, "knox_vpn_filter_tether_fwd"

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v1, " -o "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "DROP"

    const-string v12, ""

    const-string/jumbo v9, "knox_vpn_filter_tether_fwd"

    invoke-direct/range {v8 .. v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "knox_vpn_filter_tether_fwd"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    const-string v2, "*filter"

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public final insertRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p2

    const-string/jumbo v1, "_act"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "block_traffic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "60"

    move-object/from16 v6, p0

    :goto_0
    move-object v12, v2

    goto :goto_1

    :cond_0
    move-object/from16 v6, p0

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v13, " -m mark --mark "

    const-string v3, " -m connmark --mark "

    if-eqz v0, :cond_1

    const-string/jumbo v0, "knox-netId-"

    invoke-static {v0, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    sget-object v19, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v17, ""

    const-string v18, ""

    const-string v16, ""

    move-object v15, v5

    invoke-direct/range {v14 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const/4 v7, 0x0

    const-string v8, "*mangle"

    move/from16 v11, p1

    move-object v9, v5

    move-object v10, v14

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, "CONNMARK --set-mark "

    invoke-static {v0, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v6, ""

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v3, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CONNMARK --restore-mark"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v3, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACCEPT"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    const-string v8, "*mangle"

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object v10, v2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    move-object v0, v10

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v3, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "knox_vpn_no_uid"

    const-string v10, ""

    move-object v11, v1

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object v7, v11

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v13, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "knox_vpn_no_uid"

    const-string v10, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v8, "*mangle"

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object v10, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void

    :cond_1
    move-object v7, v1

    move-object v10, v2

    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v3, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "knox_vpn_no_uid"

    const-string v6, ""

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    invoke-static {v13, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "knox_vpn_no_uid"

    const-string v6, ""

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v8, "*mangle"

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public final insertRulesForUsbTethering(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v7, p3

    const-string/jumbo v3, "setDnsForwardersForKnoxVpn: "

    const/4 v0, 0x6

    if-ne v2, v0, :cond_0

    const-string/jumbo v4, "ip -6 rule"

    :goto_0
    move-object v8, v4

    goto :goto_1

    :cond_0
    const-string/jumbo v4, "ip rule"

    goto :goto_0

    :goto_1
    if-ne v2, v0, :cond_1

    const-string/jumbo v0, "ip -6 route"

    :goto_2
    move-object v9, v0

    move-object/from16 v0, p2

    goto :goto_3

    :cond_1
    const-string/jumbo v0, "ip route"

    goto :goto_2

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v11, p5

    invoke-interface {v0, v6, v11}, Landroid/os/INetworkManagementService;->setDnsForwardersForKnoxVpn(I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "FW-KnoxVpnFirewallHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -i "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v16, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v14, "ACCEPT"

    const-string v15, ""

    const-string/jumbo v12, "knox_vpn_filter_tether_fwd"

    invoke-direct/range {v11 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -o "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v17, "ACCEPT"

    const-string v18, ""

    const-string/jumbo v15, "knox_vpn_filter_tether_fwd"

    move-object/from16 v19, v16

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v19}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "knox_vpn_filter_tether_fwd"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    const-string v3, "*filter"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " del from all iif "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lookup "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " prio 43;"

    const-string v4, " add from all iif "

    invoke-static {v0, v3, v8, v4, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2, v10, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p4

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    const-string v6, " del "

    const-string v8, " dev "

    invoke-static {v0, v9, v6, v5, v8}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " scope link metric 1 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "table "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";"

    const-string v13, " add "

    invoke-static {v0, v11, v9, v13, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void

    :goto_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final insertRulesToAcceptIncomingPackets(ILjava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    const-string/jumbo v0, "block_traffic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    const-string/jumbo p1, "ip -6 rule"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "ip rule"

    :goto_0
    const-string v2, " add from all iif "

    const-string v3, " lookup "

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prio 45;"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final insertRulesToAcceptProxyPackets(IILjava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " -m owner --uid-owner "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -m mark --mark "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v3, "ACCEPT"

    const-string v4, ""

    const-string/jumbo v1, "knox_vpn_proxy_accept"

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v2, "*mangle"

    const/4 v3, 0x0

    const/4 v1, 0x1

    move v5, p1

    move-object v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final insertRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V
    .locals 16

    move/from16 v0, p2

    move-object/from16 v1, p3

    const-string/jumbo v2, "block_traffic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "60"

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v3, " -m mark --mark "

    const-string v4, " -o lo -p tcp --dport "

    invoke-static {v0, v3, v1, v4}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v10, "ACCEPT"

    const-string v11, ""

    const-string/jumbo v8, "knox_vpn_filter_output_act"

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v4, " -o lo -p udp --dport "

    invoke-static {v0, v3, v1, v4}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "ACCEPT"

    const-string v14, ""

    const-string/jumbo v11, "knox_vpn_filter_output_act"

    move-object v15, v12

    move-object v12, v0

    invoke-direct/range {v10 .. v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string v4, "*filter"

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public final insertRulesToDropIpv6SystemQueries(I)V
    .locals 6

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v1, " -m owner --uid-owner "

    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v3, "DROP"

    const-string v4, ""

    const-string/jumbo v1, "OUTPUT"

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v2, "*filter"

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x6

    move-object v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final insertRulesToExemptCaptivePortalQueries(II)V
    .locals 10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "ip -6 rule"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ip rule"

    :goto_0
    const/4 v1, 0x4

    const-string/jumbo v2, "wlan0"

    if-ne p1, v1, :cond_3

    const-string/jumbo v1, "v4-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v1

    const-string v3, "FW-KnoxVpnFirewallHelper"

    if-gtz v1, :cond_2

    const-string/jumbo v1, "Non Clat interface is detected while applying ip rules for download uid"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const-string v2, "Clat interface is detected while applying ip rules for download uid"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v1

    :goto_1
    if-gtz v1, :cond_4

    :goto_2
    return-void

    :cond_4
    const-string v2, " del from all uidrange "

    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " prio 46;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " add from all uidrange "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " lookup "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -m owner --uid-owner "

    invoke-static {p2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v7, "ACCEPT"

    const-string v8, ""

    const-string/jumbo v5, "knox_vpn_mangle_exempt_cp"

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v6, "*mangle"

    const/4 v7, 0x0

    const/4 v5, 0x1

    move v9, p1

    move-object v8, v4

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2

    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final removeExemptRulesForDownloadManagerUid(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteExemptRulesForDownloadManagerUid(II)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteExemptRulesForDownloadManagerUid(II)V

    return-void
.end method

.method public final removeExemptRulesForUid(I)V
    .locals 7

    const/4 v0, 0x4

    invoke-static {p1, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -m owner --uid-owner "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v5, ""

    const-string/jumbo v2, "knox_vpn_EXEMPT"

    const-string v4, "ACCEPT"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const/4 v2, 0x0

    const/16 v6, 0x2e

    const-string v3, "*mangle"

    const/4 v4, 0x0

    move-object v5, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/os/INetworkManagementService;->updateInputFilterExemptRules(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final removeInputFilterDropRulesForInterface(ILjava/util/List;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p2, v2, v3}, Landroid/os/INetworkManagementService;->updateInputFilterUserWideRules([III)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p0

    invoke-interface {p0, p2, v2, v3}, Landroid/os/INetworkManagementService;->updateInputFilterAppWideRules([III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final removeIpChainForProfile(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "_uidlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "_act"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v4, ""

    const-string v6, ""

    const-string/jumbo v3, "knox_vpn_OUTPUT"

    move-object v2, v14

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object v0, v7

    const-string v12, "*mangle"

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/16 v15, 0x2e

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object v5, v3

    move-object v1, v7

    const/4 v3, 0x0

    const-string v4, "*mangle"

    const/16 v7, 0x2e

    move-object v6, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    new-instance v20, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v8, ""

    const-string v10, ""

    const-string/jumbo v7, "knox_vpn_OUTPUT"

    move-object v11, v0

    move-object/from16 v6, v20

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v18, "*mangle"

    const/16 v19, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x2e

    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    move-object v7, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v11, v1

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object v9, v7

    const/4 v7, 0x0

    const-string v8, "*mangle"

    const/16 v11, 0x2e

    move-object v10, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final removeIpRouteAndPolicyRules(ILjava/lang/String;)V
    .locals 5

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FW-KnoxVpnFirewallHelper"

    if-nez v0, :cond_0

    const-string/jumbo p0, "not allowed name  : "

    invoke-static {p0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "block_traffic"

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x4

    const-string v3, " del "

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const/4 v4, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const-string/jumbo p0, "unknown interface type has been recieved "

    invoke-static {p1, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRules(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertIpRoute(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final removeIpRulesForExemptedUid(II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(II)V

    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(II)V

    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(II)V

    return-void

    :cond_1
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(II)V

    return-void

    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRulesForExemptedUid(II)V

    return-void
.end method

.method public final removeMiscRules(ILjava/lang/String;Ljava/util/List;)V
    .locals 5

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FW-KnoxVpnFirewallHelper"

    if-nez v0, :cond_0

    const-string/jumbo p0, "not allowed name  : "

    invoke-static {p0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "block_traffic"

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(ILjava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const-string/jumbo p0, "unknown interface type has been recieved "

    invoke-static {p1, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v4, p3, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidSourceSelection(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v3, p3, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidSourceSelection(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v3, p3, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidSourceSelection(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v4, p3, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidSourceSelection(ILjava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final removeMiscRulesRange(IILjava/lang/String;)V
    .locals 10

    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FW-KnoxVpnFirewallHelper"

    if-nez v0, :cond_0

    const-string/jumbo p0, "not allowed name  : "

    invoke-static {p0, p3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const p3, 0x186a0

    mul-int v0, p1, p3

    add-int/lit8 v2, v0, 0x1

    const v3, 0x1869f

    add-int/2addr v3, v0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->applyBlockingRulesForDns(III)V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getDefaultRouteApps(I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    add-int/2addr p1, v6

    mul-int/2addr p1, p3

    sub-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v5, v0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v6

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v8, Landroid/net/UidRangeParcel;

    add-int/lit8 v9, v7, -0x1

    invoke-direct {v8, p1, v9}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move p1, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-gt p1, p3, :cond_3

    new-instance p3, Landroid/net/UidRangeParcel;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p3, p1, v0}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-virtual {v3, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/UidRangeParcel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeMiscRulesRange "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p3, Landroid/net/UidRangeParcel;->start:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/net/UidRangeParcel;->stop:I

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p3, Landroid/net/UidRangeParcel;->start:I

    iget p3, p3, Landroid/net/UidRangeParcel;->stop:I

    const/4 v2, 0x4

    if-eq p2, v6, :cond_6

    const/4 v3, 0x6

    if-eq p2, v4, :cond_5

    const/4 v5, 0x3

    if-eq p2, v5, :cond_4

    const-string/jumbo p3, "unknown interface type has been recieved "

    invoke-static {p2, p3, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2, v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(III)V

    invoke-virtual {p0, v3, v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(III)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(III)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2, v0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteIpRuleForuidRangeSourceSelection(III)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public final removeNatRules(ILjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FW-KnoxVpnFirewallHelper"

    if-nez v0, :cond_0

    const-string/jumbo p0, "not allowed name  : "

    invoke-static {p0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "block_traffic"

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const-string/jumbo p0, "unknown interface type has been recieved "

    invoke-static {p1, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 p1, 0x2e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteNatRules(ILjava/lang/String;)V

    return-void

    :cond_3
    const/4 p1, 0x6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteNatRules(ILjava/lang/String;)V

    return-void

    :cond_4
    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteNatRules(ILjava/lang/String;)V

    return-void
.end method

.method public final removeRangeRulesForFilteredPackages(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string/jumbo v0, "_uidlist"

    invoke-static {p3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "_act"

    invoke-static {p3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const p3, 0x186a0

    mul-int/2addr p3, p1

    add-int/lit8 v0, p3, 0x1

    const v1, 0x1869f

    add-int/2addr p3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v0, " -m owner --uid-owner "

    invoke-static {v0, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v5, ""

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v7, "*mangle"

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x2e

    move-object v5, p0

    move-object v9, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string/jumbo p0, "com.samsung.sVpn"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0, v0}, Landroid/os/INetworkManagementService;->updateInputFilterUserWideRules([III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void
.end method

.method public final removeRulesForDroppingTethePackets()V
    .locals 6

    const-string v2, "*filter"

    const-string/jumbo v3, "knox_vpn_filter_tether_fwd"

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x2e

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final removeRulesForFilteredPackages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p2

    const-string/jumbo v1, "_uidlist"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "_act"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x0

    move v2, v8

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v9, v2, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v4, " -m owner --uid-owner "

    invoke-static {v4, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v6, ""

    move-object v2, v14

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v12, "*mangle"

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/16 v15, 0x2e

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    move v2, v9

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "com.samsung.sVpn"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3, v0, v8, v8}, Landroid/os/INetworkManagementService;->updateInputFilterAppWideRules([III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    return-void
.end method

.method public final removeRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const-string/jumbo p0, "deleteRulesForNoUidPackets: unknown interface type has been recieved "

    const-string p2, "FW-KnoxVpnFirewallHelper"

    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final removeRulesForUsbTethering(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    const-string/jumbo p0, "removeRulesForUsbTethering: unknown interface type has been recieved "

    const-string p2, "FW-KnoxVpnFirewallHelper"

    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesForUsbTethering(ILjava/lang/String;)V

    return-void
.end method

.method public final removeRulesTetherAuth()V
    .locals 12

    const-string v2, "*nat"

    const-string/jumbo v3, "knox_vpn_nat_preroute"

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    move-object v6, v0

    const-string v8, "*filter"

    const-string/jumbo v9, "knox_vpn_filter_tether_fwd"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x2e

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string v8, "*filter"

    const-string/jumbo v9, "knox_vpn_tether_exempt"

    const/4 v11, 0x4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string v8, "*mangle"

    const-string/jumbo v9, "knox_vpn_tether_exempt"

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    const-string/jumbo p0, "ip ruledel prio 42;"

    invoke-virtual {v6, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method public final removeRulesToAcceptIncomingPackets(ILjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_4

    const-string/jumbo v0, "block_traffic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v2, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const-string/jumbo p0, "unknown interface type has been recieved "

    const-string p2, "FW-KnoxVpnFirewallHelper"

    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptIncomingPackets(ILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final removeRulesToAcceptProxyPackets(IILjava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_4

    const-string/jumbo v0, "block_traffic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const-string/jumbo p0, "unknown interface type has been recieved "

    const-string p2, "FW-KnoxVpnFirewallHelper"

    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 p1, 0x2e

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptProxyPackets(IILjava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptProxyPackets(IILjava/lang/String;)V

    return-void

    :cond_3
    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAcceptProxyPackets(IILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final removeRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V
    .locals 4

    invoke-static {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->checknterface(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "not allowed name  : "

    const-string p1, "FW-KnoxVpnFirewallHelper"

    invoke-static {p0, p3, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "block_traffic"

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-nez p3, :cond_1

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x1

    if-eq p2, v3, :cond_4

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->deleteRulesToAllowAccessToLocalHostWithValidMark(IILjava/lang/String;)V

    return-void
.end method

.method public final removeRulesToDenyAccessToLocalHost(I)V
    .locals 16

    move/from16 v0, p1

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v2, " -o lo -p tcp --dport "

    invoke-static {v0, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v5, ""

    const-string/jumbo v2, "knox_vpn_filter_output_drop"

    const-string v4, "DROP"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    move-object v9, v6

    const/4 v2, 0x0

    const-string v3, "*filter"

    const/4 v4, 0x0

    const/16 v15, 0x2e

    move-object v5, v1

    move v6, v15

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    new-instance v14, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v1, " -o lo -p udp --dport "

    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    const-string/jumbo v5, "knox_vpn_filter_output_drop"

    const-string v7, "DROP"

    move-object v4, v14

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const/4 v13, 0x0

    const/4 v11, 0x0

    const-string v12, "*filter"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final removeRulesToDropIpv6SystemQueries(I)V
    .locals 6

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    const-string v1, " -m owner --uid-owner "

    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v3, "DROP"

    const-string v4, ""

    const-string/jumbo v1, "OUTPUT"

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    const-string v2, "*filter"

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x6

    move-object v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRule(ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;I)V

    return-void
.end method

.method public final removeRulesforQC(I)V
    .locals 11

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -m mark --mark "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;

    const-string v8, "ACCEPT"

    const-string v9, ""

    const-string/jumbo v6, "POSTROUTING"

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper$IpRestoreActionType;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    const-string v2, "*mangle"

    const/4 v3, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public final runIptablesRestoreCmd(ILjava/util/List;)V
    .locals 6

    const-string v0, ""

    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Failed to run cmd: "

    const-string v1, "Failed to run command. Result="

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Landroid/os/INetworkManagementService;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "FW-KnoxVpnFirewallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\ncommand="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    const-string p2, "FW-KnoxVpnFirewallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final runSingleCommand(Ljava/lang/String;)V
    .locals 8

    const-string v0, "FW-KnoxVpnFirewallHelper"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/utils/NetdHelper;->allowedCommands:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_DELIMITER:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p0, "Error splitting commands"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_1
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v6

    invoke-static {v5}, Lcom/android/server/enterprise/utils/NetdHelper;->getCmdNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5}, Lcom/android/server/enterprise/utils/NetdHelper;->getCmdParams(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Landroid/os/INetworkManagementService;->runKnoxRulesCommand(I[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runSingleCommand error "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final updateDropRulesForNoUidPackets(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object/from16 v5, p4

    const-string/jumbo v0, "v4-"

    if-eqz v5, :cond_0

    const-string/jumbo v1, "rmnet"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->jnigetInterfaceIndex(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Check to see if the default interface is clat "

    const-string v3, "FW-KnoxVpnFirewallHelper"

    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v11, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    const-string/jumbo v0, "The default interface is converted to clat and its new name is "

    invoke-static {v0, v11, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    move-object v6, p0

    move v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertDropRulesForNoUidPackets(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v1, 0x4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertDropRulesForNoUidPackets(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v1, 0x6

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->insertDropRulesForNoUidPackets(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
