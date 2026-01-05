.class public Lcom/android/server/location/contexthub/ContextHubEndpointManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mEndpointLock:Ljava/lang/Object;

.field public final mEndpointMap:Ljava/util/Map;

.field public final mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

.field public mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

.field public mMaxSessionId:I

.field public mMinSessionId:I

.field public mNextEndpointId:J

.field public mNextSessionId:I

.field public final mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

.field public final mReservedSessionIds:Ljava/util/Set;

.field public final mSessionIdLock:Ljava/lang/Object;

.field public mSessionIdsValid:Z

.field public final mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointLock:Ljava/lang/Object;

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public getNumAvailableSessions()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    sub-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNumRegisteredClients()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public final halCloseEndpointSessionNoThrow(BI)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0, p2, p1}, Landroid/hardware/contexthub/IEndpointCommunication;->closeEndpointSession(IB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ContextHubEndpointManager"

    const-string p2, "Exception while calling HAL closeEndpointSession"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final init()V
    .locals 6

    const-string v0, "Invalid session ID range: range array size = "

    iget-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    if-nez v1, :cond_4

    :try_start_0
    new-instance v1, Landroid/hardware/contexthub/HubInfo;

    invoke-direct {v1}, Landroid/hardware/contexthub/HubInfo;-><init>()V

    const-wide v2, 0x416e64726f696400L    # 1.5934355481615067E7

    iput-wide v2, v1, Landroid/hardware/contexthub/HubInfo;->hubId:J

    new-instance v2, Landroid/hardware/contexthub/ContextHubInfo;

    invoke-direct {v2}, Landroid/hardware/contexthub/ContextHubInfo;-><init>()V

    const-string v3, ""

    iput-object v3, v2, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v2, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v2, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v2, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Landroid/hardware/contexthub/HubInfo$HubDetails;->contextHubInfo(Landroid/hardware/contexthub/ContextHubInfo;)Landroid/hardware/contexthub/HubInfo$HubDetails;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-direct {v4, v5, p0}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubEndpointManager;)V

    invoke-virtual {v2, v4, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->registerEndpointHub(Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    const/16 v2, 0x400

    :try_start_1
    invoke-interface {v1, v2}, Landroid/hardware/contexthub/IEndpointCommunication;->requestSessionIdRange(I)[I

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    new-instance v1, Ljava/lang/InstantiationException;

    invoke-direct {v1, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    aget v0, v1, v3

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    iput v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid session ID range: max="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    const-string v1, "Exception while calling HAL requestSessionIdRange"

    const-string v2, "ContextHubEndpointManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Received null IEndpointCommunication"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    const-string v0, "Failed to register ContextHubService as message hub"

    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ContextHubEndpointManager"

    const-string p2, "Exception while invoking callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Registration History:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterHub()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0}, Landroid/hardware/contexthub/IEndpointCommunication;->unregister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ContextHubEndpointManager"

    const-string v1, "Failed to unregister from HAL on init failure"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
