.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static IS_CONNBYTE_EXTENSION_PRESENT:Z

.field public static mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

.field public static mNetdService:Landroid/net/INetd;

.field public static mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field public static final mangleChains:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "knox_nw_event_event"

    const-string/jumbo v2, "knox_nw_event_exempt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "POSTROUTING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mangleChains:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mangleChains:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    new-instance v5, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    sget-object v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string v9, ""

    const-string v7, ""

    invoke-direct/range {v5 .. v10}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-static {v5}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    sget-object v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-static {v3}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object p0, v0

    check-cast p0, Ljava/util/ArrayList;

    const-string v1, "COMMIT\n"

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x2e

    invoke-static {p0, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mangleChains:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    new-instance v6, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    sget-object v11, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string v10, ""

    const-string v8, ""

    invoke-direct/range {v6 .. v11}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-static {v6}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    const-string/jumbo v0, "knox_nw_event_3"

    const-string/jumbo v1, "knox_nw_event_4"

    const-string/jumbo v2, "knox_nw_event_1"

    const-string/jumbo v3, "knox_nw_event_2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    const-string/jumbo v0, "knox_nw_event_3_mch"

    const-string/jumbo v3, "knox_nw_event_4_mch"

    const-string/jumbo v4, "knox_nw_event_1_mch"

    const-string/jumbo v5, "knox_nw_event_2_mch"

    filled-new-array {v4, v5, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0, v2, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    const-string/jumbo v0, "knox_nw_event_3_act"

    const-string/jumbo v3, "knox_nw_event_4_act"

    const-string/jumbo v4, "knox_nw_event_1_act"

    const-string/jumbo v5, "knox_nw_event_2_act"

    filled-new-array {v4, v5, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0, v2, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    sget-object v9, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string/jumbo v4, "knox_nw_event_event"

    const-string v5, ""

    const-string/jumbo v6, "knox_nw_event_1"

    const-string v7, ""

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v5, "knox_nw_event_event"

    const-string v6, ""

    const-string/jumbo v7, "knox_nw_event_2"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v5, "knox_nw_event_event"

    const-string v6, ""

    const-string/jumbo v7, "knox_nw_event_3"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v5, "knox_nw_event_event"

    const-string v6, ""

    const-string/jumbo v7, "knox_nw_event_4"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v5, "knox_nw_event_1_act"

    const-string v6, " -m bpf --object-pinned /sys/fs/bpf/prog_netlog_skfilter_insecureports_xtbpf"

    const-string/jumbo v7, "RETURN"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v5, "knox_nw_event_2_act"

    const-string v6, " -m bpf --object-pinned /sys/fs/bpf/prog_netlog_skfilter_abnormalpackets_xtbpf"

    const-string/jumbo v7, "RETURN"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v5, "knox_nw_event_3_act"

    const-string v6, " -m bpf --object-pinned /sys/fs/bpf/prog_netlog_skfilter_localnwpackets_xtbpf"

    const-string/jumbo v7, "RETURN"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v5, "knox_nw_event_4_act"

    const-string v6, " -m bpf --object-pinned /sys/fs/bpf/prog_netlog_skfilter_bypassvpnpackets_xtbpf"

    const-string/jumbo v7, "RETURN"

    const-string v8, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v1, v2, v0, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static addLockdownVpnBypassLoggingRules(II)V
    .locals 10

    const v0, 0x186a0

    mul-int/2addr v0, p0

    add-int/lit8 v1, v0, 0x1

    const v2, 0x1869f

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "knox_nw_event_4_mch_"

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    sget-object v7, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    move-object v9, v7

    const-string/jumbo v7, "knox_nw_event_4_mch"

    const-string v8, ""

    const-string/jumbo v5, "knox_nw_event_4"

    const-string v6, ""

    invoke-direct/range {v4 .. v9}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v1, " -m owner --uid-owner "

    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string/jumbo v5, "RETURN"

    const-string v6, ""

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v5, "RETURN"

    const-string v6, ""

    const-string v4, " -o lo "

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string p1, " -p tcp -m state --state NEW"

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "knox_nw_event_4_act"

    const-string v6, ""

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string p1, " -p udp -m state --state NEW"

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "knox_nw_event_4_act"

    const-string v6, ""

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    const/16 v0, 0x2e

    const/4 v1, 0x1

    invoke-static {v1, p1, p0, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static addLockdownVpnBypassLoggingRules(IILjava/util/List;)V
    .locals 16

    move/from16 v1, p0

    const v0, 0x186a0

    mul-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    const v3, 0x1869f

    add-int/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "knox_nw_event_4_mch_"

    invoke-static {v1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    sget-object v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string/jumbo v13, "knox_nw_event_4_mch"

    const-string v14, ""

    const-string/jumbo v11, "knox_nw_event_4"

    const-string v12, ""

    move-object v15, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v10, " -m owner --uid-owner "

    move/from16 v0, p1

    invoke-static {v0, v10}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    const-string v5, " -o lo "

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "Exception in getUIDForPackage : "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v7, -0x1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    const-wide/16 v13, 0x80

    invoke-interface {v12, v0, v13, v14, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v7

    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_1
    const-string/jumbo v12, "NetworkEventsLoggerService-KnoxNetworkEventFirewall"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v0, v7

    :goto_3
    if-eq v0, v7, :cond_0

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v0, v10}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v0, " -p tcp -m state --state NEW"

    invoke-static {v10, v2, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    move-object v8, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v0, " -p udp -m state --state NEW"

    invoke-static {v10, v2, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/16 v1, 0x2e

    const/4 v2, 0x1

    invoke-static {v2, v0, v9, v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static addLoggingRulesForPerAppVpnBypass(IILjava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string/jumbo v2, "knox_nw_event_4_mch_"

    move/from16 v3, p0

    invoke-static {v3, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    sget-object v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string/jumbo v13, "knox_nw_event_4_mch"

    const-string v14, ""

    const-string/jumbo v11, "knox_nw_event_4"

    const-string v12, ""

    move-object v15, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v14, "knox_nw_event_4_mch"

    const-string v15, ""

    const-string/jumbo v12, "knox_nw_event_4"

    const-string v13, ""

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object/from16 v15, v16

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v10, " -m owner --uid-owner "

    invoke-static {v0, v10}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v0, v10}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    const-string v5, " -o lo "

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    const-string v5, " -o lo "

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v11, v3

    move v12, v11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v13, 0x1

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "-"

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v13

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v14, v3

    goto :goto_2

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v5, " -d "

    const-string v6, " -o tun+"

    if-eqz v3, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    instance-of v13, v3, Ljava/net/Inet4Address;

    if-eqz v13, :cond_1

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v5, v7, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v5, v7, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_4
    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    move-object/from16 p0, v0

    instance-of v0, v3, Ljava/net/Inet4Address;

    move/from16 v16, v0

    const-string v0, " -m owner --uid-owner 0 -d "

    if-eqz v16, :cond_4

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    move-object/from16 v16, v5

    invoke-static {v0, v7, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 p1, v11

    move-object v11, v0

    move-object/from16 v0, v16

    goto :goto_6

    :cond_4
    move-object/from16 v16, v5

    move-object v5, v6

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_5

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v0, v7, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    move/from16 p1, v11

    move-object v11, v5

    move-object v5, v0

    move-object/from16 v0, v16

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    move/from16 p1, v11

    move-object/from16 v0, v16

    move-object v11, v5

    :goto_6
    move-object v5, v0

    move-object v6, v11

    move-object/from16 v0, p0

    move/from16 v11, p1

    goto :goto_5

    :cond_6
    move-object/from16 p0, v0

    move-object v0, v5

    move/from16 p1, v11

    move-object v11, v6

    if-eqz p3, :cond_7

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move-object/from16 v18, v8

    goto/16 :goto_b

    :cond_8
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move/from16 v16, v12

    move/from16 v12, p1

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0.0.0.0/0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v0, v5, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    const-string v6, "::/0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v0, v5, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    const-string v7, " ! -d "

    move-object/from16 p1, v3

    const/16 v3, 0x9

    if-eqz v6, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/net/RouteInfo;->getType()I

    move-result v6

    if-ne v6, v3, :cond_b

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v0, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    move-object/from16 p4, v13

    goto/16 :goto_a

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/RouteInfo;->getType()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    move-object v6, v5

    invoke-static {v10, v14, v0, v6, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v6

    const-string/jumbo v6, "RETURN"

    move-object/from16 v17, v7

    const-string v7, ""

    move-object/from16 p4, v13

    move-object/from16 v13, v17

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object/from16 v17, v8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v13, v12, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    move-object v8, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v17

    const/4 v12, 0x1

    :goto_8
    move-object/from16 v17, v0

    goto/16 :goto_a

    :cond_c
    move-object/from16 p4, v13

    :cond_d
    :goto_9
    move-object/from16 v17, v0

    move-object/from16 v18, v8

    goto/16 :goto_a

    :cond_e
    move-object/from16 v17, v8

    move-object/from16 p4, v13

    move-object v13, v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet6Address;

    if-eqz v6, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/net/RouteInfo;->getType()I

    move-result v6

    if-ne v6, v3, :cond_f

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v0, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    move-object/from16 v8, v17

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    move-object/from16 v8, v17

    invoke-virtual/range {p1 .. p1}, Landroid/net/RouteInfo;->getType()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_d

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    move-object v6, v5

    invoke-static {v10, v14, v0, v6, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    const-string/jumbo v6, "RETURN"

    move-object/from16 v16, v7

    const-string v7, ""

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object/from16 v18, v8

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v13, v0, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    move-object v8, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x1

    goto :goto_a

    :cond_10
    move-object/from16 v18, v17

    goto :goto_8

    :goto_a
    move-object/from16 v13, p4

    move-object/from16 v0, v17

    move-object/from16 v8, v18

    goto/16 :goto_7

    :cond_11
    move-object/from16 v17, v8

    move v11, v12

    move/from16 v12, v16

    goto :goto_c

    :goto_b
    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RETURN"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object/from16 v17, v8

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v11, p1

    :goto_c
    const-string v0, " -p udp -m state --state NEW ! -o tun+"

    const-string v13, " -p tcp -m state --state NEW ! -o tun+"

    if-nez v11, :cond_12

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v13}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    move-object v8, v15

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_12
    move-object v8, v15

    :goto_d
    if-nez v12, :cond_13

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v13}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v10, v14, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v0, p0

    move-object v15, v8

    move-object/from16 v8, v17

    goto/16 :goto_0

    :cond_14
    move-object v8, v15

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v0, " -p tcp -m state --state NEW -o "

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v0, " -p udp -m state --state NEW -o "

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "knox_nw_event_4_act"

    const-string v7, ""

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "knox_nw_event_4_act"

    const-string v5, ""

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p0, v3

    move-object/from16 p1, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v8

    invoke-direct/range {p0 .. p5}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {v6, v1, v2, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    const/4 v0, 0x6

    invoke-static {v6, v1, v9, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static createEventIPTableChainForUser(I)V
    .locals 13

    const-string/jumbo v0, "knox_nw_event_4_mch_"

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "knox_nw_event_4_app_stat_"

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x2e

    invoke-static {v0, p0, v11, v12}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0, v11, v12}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    sget-object v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string v7, ""

    const-string v9, ""

    const-string/jumbo v6, "knox_nw_event_4_mch"

    invoke-direct/range {v5 .. v10}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    sget-object v6, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string v3, ""

    const-string v5, ""

    const-string/jumbo v2, "knox_nw_event_4_mch"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0, v11, p0, v12}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*mangle\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo p0, "knox_nw_event_3_mch"

    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    const-string/jumbo p0, "knox_nw_event_3"

    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo p0, "knox_nw_event_2_mch"

    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    const-string/jumbo p0, "knox_nw_event_2"

    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo p0, "knox_nw_event_1_mch"

    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    const-string/jumbo p0, "knox_nw_event_1"

    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    return-void
.end method

.method public static getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .locals 3

    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "netd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    sput-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mNetdService:Landroid/net/INetd;

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    sput-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get OemNetd listener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "NetworkEventsLoggerService-KnoxNetworkEventFirewall"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method

.method public static insertRule(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-static {v1, p0, v0, v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static insertRuleForInsecurePorts(I)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    const/16 p0, 0x2710

    const/16 v1, 0x4e1f

    goto :goto_0

    :cond_0
    const v1, 0x186a0

    mul-int/2addr p0, v1

    add-int/lit8 v1, p0, 0x1

    const v2, 0x1869f

    add-int/2addr p0, v2

    move v9, v1

    move v1, p0

    move p0, v9

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    sget-object v7, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    const-string/jumbo v4, "knox_nw_event_1_mch"

    const-string v5, ""

    const-string/jumbo v2, "knox_nw_event_1"

    const-string v3, ""

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->IS_CONNBYTE_EXTENSION_PRESENT:Z

    const-string v8, " -m owner --uid-owner "

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v1, " -p tcp -m connbytes --connbytes 2:3 --connbytes-dir both --connbytes-mode packets -m multiport --dports 80,8080,20,21,23,25,110,143"

    invoke-static {v8, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "knox_nw_event_1_act"

    const-string v6, ""

    const-string/jumbo v3, "knox_nw_event_1_mch"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v1, " -p tcp -m state --state NEW -m multiport --dports 80,8080,20,21,23,25,110,143"

    invoke-static {v8, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "knox_nw_event_1_act"

    const-string v6, ""

    const-string/jumbo v3, "knox_nw_event_1_mch"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    const-string v1, " -p udp -m state --state NEW -m multiport --dports 1812,1813,1645,1646"

    invoke-static {v8, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "knox_nw_event_1_act"

    const-string v6, ""

    const-string/jumbo v3, "knox_nw_event_1_mch"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    const/16 v1, 0x2e

    const/4 v2, 0x1

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static insertRules(ZLjava/util/List;Ljava/util/List;I)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p1, "COMMIT\n"

    if-eqz p0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    iput-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3, v3}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    iput-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, p0

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    return-void
.end method

.method public static isIptablesExtensionPresent()V
    .locals 6

    const-string/jumbo v0, "isIptablesExtensionPresent: connbytes "

    const-string/jumbo v1, "connbytes"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/internal/net/IOemNetd;->isIptablesMatchEnabled(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "NetworkEventsLoggerService-KnoxNetworkEventFirewall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->IS_CONNBYTE_EXTENSION_PRESENT:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public static parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->secondParam:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->jumpChain:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->firstParam:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionChain:Ljava/lang/String;

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

.method public static removeLoggingRulesForVpnBypass(I)V
    .locals 3

    const-string/jumbo v0, "knox_nw_event_4_mch_"

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "knox_nw_event_4_app_stat_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    return-void
.end method

.method public static runIptablesRestoreCmd(ILjava/util/List;)V
    .locals 6

    const-string v0, ""

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "NetworkEventsLoggerService-KnoxNetworkEventFirewall"

    const-string v1, "Failed to run cmd: "

    const-string/jumbo v2, "testing: command "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "target "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/os/INetworkManagementService;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static updateAppInBypassAndUnAuthList(IILjava/util/List;)V
    .locals 12

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string/jumbo v1, "knox_nw_event_4_app_stat_"

    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    :goto_0
    move-object v7, p1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const-string v8, " -p udp -m state --state NEW -m owner --uid-owner "

    const-string v9, " -p tcp -m state --state NEW -m owner --uid-owner "

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v4, "0.0.0.0/0"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v8}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v4, "::/0"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v8}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    const-string v11, " -d "

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_2

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v9, v11, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v8, v11, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_2

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v9, v11, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v8, v11, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    :goto_3
    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v8}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    invoke-static {p0, v8}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string/jumbo v5, "knox_nw_event_4_act"

    invoke-direct/range {v2 .. v7}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 p0, 0x4

    const/4 p2, 0x0

    invoke-static {v1, p2, p1, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    const/4 p0, 0x6

    invoke-static {v1, p2, v0, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    return-void
.end method
