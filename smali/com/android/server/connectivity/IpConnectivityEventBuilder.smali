.class public abstract Lcom/android/server/connectivity/IpConnectivityEventBuilder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final IFNAME_LINKLAYERS:[I

.field public static final IFNAME_PREFIXES:[Ljava/lang/String;

.field public static final TRANSPORT_LINKLAYER_MAP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v6, 0x5

    const/16 v7, 0x8

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v8, 0x6

    const/16 v9, 0x9

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x7

    new-array v10, v0, [Ljava/lang/String;

    sput-object v10, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    new-array v11, v0, [I

    sput-object v11, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    const-string/jumbo v12, "rmnet"

    aput-object v12, v10, v1

    aput v2, v11, v1

    const-string/jumbo v1, "wlan"

    aput-object v1, v10, v3

    aput v4, v11, v3

    const-string/jumbo v1, "bt-pan"

    aput-object v1, v10, v2

    aput v3, v11, v2

    const-string/jumbo v1, "p2p"

    aput-object v1, v10, v5

    aput v0, v11, v5

    const-string/jumbo v0, "aware"

    aput-object v0, v10, v4

    aput v7, v11, v4

    const-string/jumbo v0, "eth"

    aput-object v0, v10, v6

    aput v5, v11, v6

    const-string/jumbo v0, "wpan"

    aput-object v0, v10, v8

    aput v9, v11, v8

    return-void
.end method

.method public static buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    iput-wide p2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    if-eqz p1, :cond_0

    iput-object p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    :cond_0
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    sget-object p2, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p0, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    if-eqz p0, :cond_4

    move p2, p1

    :goto_0
    const/4 p3, 0x7

    if-ge p2, p3, :cond_4

    sget-object p3, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    aget-object p3, p3, p2

    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aget p1, p0, p2

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    return-object v0

    :cond_5
    iput p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    const-string p0, ""

    iput-object p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    return-object v0
.end method

.method public static serialize(ILjava/util/List;)[B
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    iput-object p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    array-length p1, p1

    if-gtz p1, :cond_0

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x2

    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    :cond_1
    invoke-static {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    .locals 5

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->key:I

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->value:I

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    iget v1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    iget v1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    const/4 p0, 0x0

    invoke-static {v1, p0, v2, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setConnectStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object p0
.end method

.method public static toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 6

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    iget-wide v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    iput-wide v4, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    iget-wide v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    iput-wide v4, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v2, 0x6

    goto :goto_1

    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    sget-object v3, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    :cond_4
    :goto_1
    iput v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    iget p0, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    if-nez p0, :cond_5

    const/4 p0, 0x5

    iput p0, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 6

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-virtual {p0, v1}, Landroid/net/metrics/DnsEvent;->resize(I)V

    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    array-length v2, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    array-length v2, v1

    new-array v2, v2, [I

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-object v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    const/4 p0, 0x0

    invoke-static {v1, p0, v2, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDnsLookupBatch(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object p0
.end method

.method public static toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const-wide/16 v1, 0x0

    iget-object p0, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3, p0, v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setWakeupStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object p0
.end method

.method public static toProto(Ljava/util/List;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityMetricsEvent;

    iget v2, v1, Landroid/net/ConnectivityMetricsEvent;->netId:I

    iget-wide v3, v1, Landroid/net/ConnectivityMetricsEvent;->transports:J

    iget-object v5, v1, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    invoke-static {v2, v5, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    iget-wide v3, v1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    iput-wide v3, v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    iget-object v1, v1, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    instance-of v3, v1, Landroid/net/metrics/DhcpErrorEvent;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/net/metrics/DhcpErrorEvent;

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iget v1, v1, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v3, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setErrorCode(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    :cond_0
    instance-of v3, v1, Landroid/net/metrics/DhcpClientEvent;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/net/metrics/DhcpClientEvent;

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iget-object v4, v1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setStateTransition(Ljava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    iget v1, v1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    :cond_1
    instance-of v3, v1, Landroid/net/metrics/IpManagerEvent;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/net/metrics/IpManagerEvent;

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    iget v4, v1, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    iget-wide v4, v1, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    long-to-int v1, v4

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpProvisioningEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    :cond_2
    instance-of v3, v1, Landroid/net/metrics/IpReachabilityEvent;

    if-eqz v3, :cond_3

    check-cast v1, Landroid/net/metrics/IpReachabilityEvent;

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    iget v1, v1, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    :cond_3
    instance-of v3, v1, Landroid/net/metrics/NetworkEvent;

    if-eqz v3, :cond_4

    check-cast v1, Landroid/net/metrics/NetworkEvent;

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;-><init>()V

    iget v4, v1, Landroid/net/metrics/NetworkEvent;->eventType:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->eventType:I

    iget-wide v4, v1, Landroid/net/metrics/NetworkEvent;->durationMs:J

    long-to-int v1, v4

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    :cond_4
    instance-of v3, v1, Landroid/net/metrics/ValidationProbeEvent;

    if-eqz v3, :cond_5

    check-cast v1, Landroid/net/metrics/ValidationProbeEvent;

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    iget-wide v4, v1, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    long-to-int v4, v4

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    iget v4, v1, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    iget v1, v1, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    :cond_5
    instance-of v3, v1, Landroid/net/metrics/ApfProgramEvent;

    if-eqz v3, :cond_9

    check-cast v1, Landroid/net/metrics/ApfProgramEvent;

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    iget-wide v4, v1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    iget-wide v4, v1, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    iget v4, v1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    iget v4, v1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    iget v4, v1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    iget v1, v1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    and-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    move v4, v5

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_7

    iput-boolean v5, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    :cond_7
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    iput-boolean v5, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    :cond_8
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto :goto_2

    :cond_9
    instance-of v3, v1, Landroid/net/metrics/ApfStats;

    if-eqz v3, :cond_a

    check-cast v1, Landroid/net/metrics/ApfStats;

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    iget-wide v4, v1, Landroid/net/metrics/ApfStats;->durationMs:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    iget v4, v1, Landroid/net/metrics/ApfStats;->receivedRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    iget v4, v1, Landroid/net/metrics/ApfStats;->matchingRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    iget v4, v1, Landroid/net/metrics/ApfStats;->droppedRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    iget v4, v1, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    iget v4, v1, Landroid/net/metrics/ApfStats;->parseErrors:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    iget v4, v1, Landroid/net/metrics/ApfStats;->programUpdates:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    iget v4, v1, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    iget v4, v1, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    iget v1, v1, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto :goto_2

    :cond_a
    instance-of v3, v1, Landroid/net/metrics/RaEvent;

    if-eqz v3, :cond_b

    check-cast v1, Landroid/net/metrics/RaEvent;

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->routerLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    return-object v0
.end method
