.class public final Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;
.super Landroid/hardware/contexthub/IEndpointCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/HubInfoRegistry;

.field public final mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubEndpointManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubEndpointManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contexthub/IEndpointCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/HubInfoRegistry;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "df80fdbb6f95a8a2988bc72b7f08f891847b80eb"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final onCloseEndpointSession(IB)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;-><init>(BI)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "onCloseEndpointSession: unknown session ID "

    const-string p2, "ContextHubEndpointManager"

    invoke-static {p1, p0, p2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onEndpointSessionOpenComplete(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "onEndpointSessionOpenComplete: unknown session ID "

    const-string v0, "ContextHubEndpointManager"

    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/EndpointId;Landroid/hardware/contexthub/EndpointId;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    iget-wide v1, p2, Landroid/hardware/contexthub/EndpointId;->hubId:J

    iget-wide v3, p2, Landroid/hardware/contexthub/EndpointId;->id:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    new-instance p2, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    iget-wide v1, p3, Landroid/hardware/contexthub/EndpointId;->hubId:J

    iget-wide v3, p3, Landroid/hardware/contexthub/EndpointId;->id:J

    invoke-direct {p2, v1, v2, v3, v4}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v1

    const-wide v3, 0x416e64726f696400L    # 1.5934355481615067E7

    cmp-long p3, v1, v3

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string p2, "ContextHubEndpointManager"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "onEndpointSessionOpenRequest: invalid destination hub ID: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    goto/16 :goto_4

    :cond_0
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    check-cast p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    if-nez p3, :cond_1

    const-string p2, "ContextHubEndpointManager"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "onEndpointSessionOpenRequest: unknown destination endpoint ID: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    iget-object v2, v0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/HubEndpointInfo;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    const-string p3, "ContextHubEndpointManager"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onEndpointSessionOpenRequest: unknown initiator endpoint ID: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    goto/16 :goto_4

    :cond_2
    iget p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-gt p1, p2, :cond_4

    iget p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    if-ge p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "ContextHubEndpointManager"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "onEndpointSessionOpenRequest: invalid session ID, rejected: sessionId="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    goto/16 :goto_4

    :cond_4
    :goto_0
    const-string/jumbo p2, "onEndpointSessionOpenRequest: Existing session ID: "

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getRequiredPermissions()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContext:Landroid/content/Context;

    iget v3, p3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPid:I

    iget v4, p3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->hasPermissions(Landroid/content/Context;IILjava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p2, "ContextHubEndpointBroker"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onEndpointSessionOpenRequest: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t have permission for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x9

    invoke-virtual {p3, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    goto/16 :goto_4

    :cond_5
    iget-object v1, p3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p3, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    iget-object v2, v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mSessionState:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    sget-object v5, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    if-ne v2, v5, :cond_6

    move v2, v4

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    const-string v5, "ContextHubEndpointBroker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isActive: "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_7
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-direct {p2, v0, v4}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Z)V

    iget-object v2, p3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;

    invoke-direct {v5, p3, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;I)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0xa

    invoke-interface {v2, v5, v7, v8, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->mSessionOpenTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move p2, v3

    move v2, p2

    :goto_2
    if-eqz p2, :cond_9

    if-eqz v2, :cond_8

    invoke-virtual {p3, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->openSessionRequestComplete(I)V

    :cond_8
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    monitor-exit v1

    goto :goto_4

    :cond_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p2, p3, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;I)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :try_start_2
    iget-object p2, p3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    invoke-interface {p2, p1, v0, p4}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string p4, "ContextHubEndpointBroker"

    const-string/jumbo v0, "RemoteException while calling endpoint callback"

    invoke-static {p4, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->releaseWakeLock()V

    move v4, v3

    :goto_3
    if-nez v4, :cond_a

    invoke-virtual {p3, p1, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    :cond_a
    if-eqz v4, :cond_b

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    goto :goto_4

    :cond_b
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    :goto_4
    new-instance p3, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final onEndpointStarted([Landroid/hardware/contexthub/EndpointInfo;)V
    .locals 6

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Landroid/hardware/contexthub/HubEndpointInfo;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    new-instance v4, Landroid/hardware/contexthub/HubEndpointInfo;

    aget-object v5, p1, v3

    invoke-direct {v4, v5}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/hardware/contexthub/EndpointInfo;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/HubInfoRegistry;

    iget-object p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :goto_1
    if-ge v2, v0, :cond_2

    :try_start_0
    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onEndpointStopped([Landroid/hardware/contexthub/EndpointId;B)V
    .locals 6

    array-length v0, p1

    new-array v1, v0, [Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    new-instance v4, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    aget-object v5, p1, v3

    invoke-direct {v4, v5}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(Landroid/hardware/contexthub/EndpointId;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :goto_1
    if-ge v2, v0, :cond_2

    :try_start_0
    aget-object v4, v1, v2

    iget-object v5, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/HubEndpointInfo;

    if-eqz v4, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/contexthub/HubEndpointInfo;

    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;-><init>(B)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onMessageDeliveryStatusReceived(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    iget v0, p2, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    iget-byte p2, p2, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda3;-><init>(IIB)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "onMessageDeliveryStatusReceived: unknown session ID "

    const-string p2, "ContextHubEndpointManager"

    invoke-static {p1, p0, p2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onMessageReceived(ILandroid/hardware/contexthub/Message;)V
    .locals 4

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    iget v0, p2, Landroid/hardware/contexthub/Message;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Landroid/hardware/contexthub/HubMessage$Builder;

    iget v2, p2, Landroid/hardware/contexthub/Message;->type:I

    iget-object v3, p2, Landroid/hardware/contexthub/Message;->content:[B

    invoke-direct {v0, v2, v3}, Landroid/hardware/contexthub/HubMessage$Builder;-><init>(I[B)V

    invoke-virtual {v0, v1}, Landroid/hardware/contexthub/HubMessage$Builder;->setResponseRequired(Z)Landroid/hardware/contexthub/HubMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubMessage$Builder;->build()Landroid/hardware/contexthub/HubMessage;

    move-result-object v0

    iget p2, p2, Landroid/hardware/contexthub/Message;->sequenceNumber:I

    invoke-virtual {v0, p2}, Landroid/hardware/contexthub/HubMessage;->setMessageSequenceNumber(I)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda0;-><init>(ILandroid/hardware/contexthub/HubMessage;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onMessageReceived: unknown session ID "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p2

    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    iput p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    const/4 p2, 0x4

    iput-byte p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0, p1, v0}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageDeliveryStatusToEndpoint(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception while sending message delivery status on session "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
