.class public final Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPendingSequenceNumbers:Ljava/util/Set;

.field public final mRemoteEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field public final mRemoteInitiated:Z

.field public final mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

.field public mSessionOpenTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

.field public mSessionState:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/HubEndpointInfo;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->PENDING:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mSessionState:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mPendingSequenceNumbers:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRemoteEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    iput-boolean p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRemoteInitiated:Z

    return-void
.end method


# virtual methods
.method public final addReliableMessageToHistory(Landroid/hardware/contexthub/HubMessage;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Message already exists in history (inserted @ "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubEndpointBroker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final isInReliableMessageHistory(Landroid/hardware/contexthub/HubMessage;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v4

    cmp-long v3, v1, v6

    if-ltz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mRxMessageHistoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
