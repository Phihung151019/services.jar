.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Lcom/android/net/module/util/BaseNetdEventListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ALLOWED_CALLBACK_TYPES:[I

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400

.field static final WAKEUP_EVENT_PREFIX_DELIM:Ljava/lang/String; = ":"

.field public static sInstance:Lcom/android/server/connectivity/NetdEventListenerService;


# instance fields
.field public final filter:Landroid/content/IntentFilter;

.field public final mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

.field public mCheckedNetId:I

.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mConnectTb:Lcom/android/internal/util/TokenBucket;

.field public mContext:Landroid/content/Context;

.field public final mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

.field public mDnsHandler:Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

.field public mFailCount:I

.field public mLastSnapshot:J

.field public final mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

.field public final mNetworkMetrics:Landroid/util/SparseArray;

.field public final mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

.field public mPolicyManager:Landroid/net/NetworkPolicyManager;

.field public final mWakeupEvents:Lcom/android/internal/util/RingBuffer;

.field public final mWakeupStats:Landroid/util/ArrayMap;

.field public final receiver:Lcom/android/server/connectivity/NetdEventListenerService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 3

    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    const/16 v2, 0x90

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/WakeupEvent;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    invoke-direct {v0}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    new-instance v1, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    invoke-direct {v1}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/net/INetdEventCallback;

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    new-instance v1, Lcom/android/server/connectivity/NetdEventListenerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/NetdEventListenerService$1;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->receiver:Lcom/android/server/connectivity/NetdEventListenerService$1;

    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static getReturnCodeToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "OVERFLOW"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "PROTOCOL"

    return-object p0

    :pswitch_2
    const-string p0, "BADHINTS"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "SYSTEM"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "SOCKTYPE"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "SERVICE"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "NONAME"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "NODATA"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "MEMORY"

    return-object p0

    :pswitch_9
    const-string p0, "FAMILY"

    return-object p0

    :pswitch_a
    const-string p0, "FAIL"

    return-object p0

    :pswitch_b
    const-string p0, "BADFLAGS"

    return-object p0

    :pswitch_c
    const-string p0, "AGAIN"

    return-object p0

    :pswitch_d
    const-string p0, "ADDRFAMILY"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "SUCCESS"

    return-object p0

    :cond_0
    const-string/jumbo p0, "TIMEOUT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final collectPendingMetricsSnapshot(JZ)V
    .locals 4

    const-wide/32 v0, 0xea60

    if-nez p3, :cond_0

    iget-wide v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    div-long/2addr p1, v0

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    iget-object p3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;Landroid/content/Context;Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object p1

    iget-object p2, p1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "8e27594d285ca7c567d87e8cf74766c27647e02b"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getMetricsForNetwork(IJ)Landroid/net/metrics/NetworkMetrics;
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->getNetworkCapabilities(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-wide v4, v0, Landroid/net/metrics/NetworkMetrics;->transports:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(JZ)V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    new-instance p2, Landroid/net/metrics/NetworkMetrics;

    iget-object p3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    invoke-direct {p2, p1, v2, v3, p3}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2
.end method

.method public final declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .locals 3

    monitor-enter p0

    move v0, p2

    move v1, p3

    move-object p2, p4

    move p3, p5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(IJ)Landroid/net/metrics/NetworkMetrics;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object p1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface/range {p1 .. p6}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v6, p4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move/from16 v8, p1

    invoke-virtual {v1, v8, v2, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(IJ)Landroid/net/metrics/NetworkMetrics;

    move-result-object v0

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual {v0, v9, v10, v6}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    iget-object v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v4, v0

    const/4 v5, 0x0

    move/from16 v17, v5

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    :try_start_1
    sget-object v11, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    aget v11, v11, v17

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    int-to-long v11, v6

    move-wide v14, v11

    move/from16 v13, p7

    move/from16 v16, p8

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    goto :goto_1

    :cond_0
    move-wide v14, v2

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v16, p8

    :goto_1
    invoke-interface/range {v7 .. v16}, Landroid/net/INetdEventCallback;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_2
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

    if-eqz v0, :cond_3

    const/16 v2, 0x2711

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;

    move/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v7, p5

    move/from16 v5, p8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;-><init>(IIIILjava/lang/String;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onNat64PrefixEvent(IZLjava/lang/String;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onTcpSocketStatsEvent([I[I[I[I[I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_2

    array-length v0, p1

    array-length v1, p5

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget v3, p1, v2

    aget v4, p2, v2

    aget v5, p3, v2

    aget v6, p4, v2

    aget v7, p5, v2

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(IJ)Landroid/net/metrics/NetworkMetrics;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/net/metrics/NetworkMetrics;->addTcpStatsResult(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_1
    const-string/jumbo p1, "NetdEventListenerService"

    const-string/jumbo p2, "Mismatched lengths of TCP socket stats data arrays"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Empty mac address on WiFi transport, network: "

    const-string/jumbo v3, "Prefix "

    monitor-enter p0

    :try_start_0
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/net/Network;->fromNetworkHandle(J)Landroid/net/Network;

    move-result-object v0

    new-instance v3, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v3}, Landroid/net/metrics/WakeupEvent;-><init>()V

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iput-object v4, v3, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    move/from16 v7, p2

    iput v7, v3, Landroid/net/metrics/WakeupEvent;->uid:I

    move/from16 v9, p3

    iput v9, v3, Landroid/net/metrics/WakeupEvent;->ethertype:I

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "NetdEventListenerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, v3, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    :goto_1
    move-object/from16 v11, p6

    goto :goto_2

    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v2

    iput-object v2, v3, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    goto :goto_1

    :goto_2
    iput-object v11, v3, Landroid/net/metrics/WakeupEvent;->srcIp:Ljava/lang/String;

    move-object/from16 v12, p7

    iput-object v12, v3, Landroid/net/metrics/WakeupEvent;->dstIp:Ljava/lang/String;

    move/from16 v13, p4

    iput v13, v3, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    move/from16 v14, p8

    iput v14, v3, Landroid/net/metrics/WakeupEvent;->srcPort:I

    move/from16 v15, p9

    iput v15, v3, Landroid/net/metrics/WakeupEvent;->dstPort:I

    const-wide/16 v4, 0x0

    cmp-long v2, p10, v4

    if-lez v2, :cond_2

    const-wide/32 v4, 0xf4240

    div-long v4, p10, v4

    iput-wide v4, v3, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    goto :goto_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    :goto_3
    iget-object v2, v3, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/metrics/WakeupStats;

    if-nez v4, :cond_3

    new-instance v4, Landroid/net/metrics/WakeupStats;

    invoke-direct {v4, v2}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v4, v3}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide/from16 p10, v4

    iget-wide v4, v3, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    add-long v4, p10, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v4, v4, v16

    iget v6, v3, Landroid/net/metrics/WakeupEvent;->uid:I

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/os/BatteryStatsInternal;->noteCpuWakingNetworkPacket(Landroid/net/Network;JI)V

    :cond_4
    iget-object v0, v3, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v8, v3, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    const/16 v6, 0x2c

    invoke-static/range {v6 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required in format <nethandle>:<interface>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final writeMobileDataDnsFile()V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/err"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "NetdEventListenerService"

    const-string/jumbo v2, "writeMobileDataDnsFile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "!dir.exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "dir not created"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "end of dir"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/err/mobiledata_dns.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_2
    throw p0
.end method
