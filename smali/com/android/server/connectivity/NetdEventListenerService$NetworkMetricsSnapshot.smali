.class public final Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public stats:Ljava/util/List;

.field public timeMs:J


# direct methods
.method public static collect(JLandroid/util/SparseArray;Landroid/content/Context;Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .locals 17

    move-object/from16 v0, p4

    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    move-wide/from16 v3, p0

    iput-wide v3, v2, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/metrics/NetworkMetrics;

    invoke-virtual {v6}, Landroid/net/metrics/NetworkMetrics;->getPendingStats()Landroid/net/metrics/NetworkMetrics$Summary;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, v2, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_SupportMoaiNetdCallBack"

    invoke-virtual {v7, v8, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sget-object v8, Lcom/android/server/connectivity/NetdEventListenerService;->sInstance:Lcom/android/server/connectivity/NetdEventListenerService;

    const-string v8, "CSC Feature value: "

    const-string/jumbo v9, "NetdEventListenerService"

    invoke-static {v8, v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v7, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "netd_stats_callback"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_2

    iget v7, v6, Landroid/net/metrics/NetworkMetrics$Summary;->netId:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v7}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->getNetworkCapabilities(I)Landroid/net/NetworkCapabilities;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-nez v8, :cond_2

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/net/metrics/NetworkMetrics$Summary;->isUpdated()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v9, v6, Landroid/net/metrics/NetworkMetrics$Summary;->netId:I

    iget-wide v7, v6, Landroid/net/metrics/NetworkMetrics$Summary;->transports:J

    long-to-int v10, v7

    invoke-virtual {v6}, Landroid/net/metrics/NetworkMetrics$Summary;->getDnsLatency()I

    move-result v11

    invoke-virtual {v6}, Landroid/net/metrics/NetworkMetrics$Summary;->getDnsErrorRate()I

    move-result v12

    invoke-virtual {v6}, Landroid/net/metrics/NetworkMetrics$Summary;->getDnsDelayedResponse()I

    move-result v13

    invoke-virtual {v6}, Landroid/net/metrics/NetworkMetrics$Summary;->getTcpAverageLoss()I

    move-result v14

    invoke-virtual {v6}, Landroid/net/metrics/NetworkMetrics$Summary;->getTcpRtt()I

    move-result v15

    invoke-virtual {v6}, Landroid/net/metrics/NetworkMetrics$Summary;->getTcpSentAckDiff()I

    move-result v16

    sget-object v6, Lcom/android/server/connectivity/NetdEventListenerService;->sInstance:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v6, :cond_2

    iget-object v6, v6, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    const/4 v7, 0x6

    aget-object v8, v6, v7

    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface/range {v8 .. v16}, Landroid/net/INetdEventCallback;->onNetworkMetricsUpdated(IIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    add-int/2addr v4, v1

    goto/16 :goto_0

    :cond_3
    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/net/metrics/NetworkMetrics$Summary;

    invoke-virtual {v4}, Landroid/net/metrics/NetworkMetrics$Summary;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%tT.%tL: %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
