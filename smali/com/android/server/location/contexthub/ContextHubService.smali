.class public final Lcom/android/server/location/contexthub/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallbacksList:Landroid/os/RemoteCallbackList;

.field public final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContext:Landroid/content/Context;

.field public final mContextHubIdToInfoMap:Ljava/util/Map;

.field public final mContextHubInfoList:Ljava/util/List;

.field public final mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mDefaultClientMap:Ljava/util/Map;

.field public mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

.field public final mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

.field public mIsBtMainEnabled:Z

.field public mIsBtScanningEnabled:Z

.field public final mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsWifiAvailable:Z

.field public mIsWifiMainEnabled:Z

.field public mIsWifiScanningEnabled:Z

.field public final mLastRestartTimestampMap:Ljava/util/Map;

.field public final mMetricQueryPendingContextHubIds:Ljava/util/Set;

.field public final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field public final mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

.field public final mSendWifiSettingUpdateLock:Ljava/lang/Object;

.field public final mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field public final mSupportedContextHubPerms:Ljava/util/List;

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V
    .locals 12

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/NanoAppStateManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSendWifiSettingUpdateLock:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    const-string v4, "ContextHubService"

    const-string/jumbo v0, "Starting Context Hub Service init"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-nez p2, :cond_0

    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    const-string p1, "Failed to initialize the Context Hub Service"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getContextHubs()Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string/jumbo p2, "RemoteException while getting Context Hub info"

    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    sub-long/2addr v7, v5

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    const/16 v5, 0x18e

    invoke-virtual {v0, v5}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p2

    invoke-static {p2}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    new-instance p1, Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-direct {p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    new-instance p1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-direct {p1, p2, v0, v5}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    const-class p1, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManagerInternal;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    :try_start_1
    new-instance v8, Lcom/android/server/location/contexthub/HubInfoRegistry;

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-direct {v8, p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V

    new-instance v5, Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-object v9, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    new-instance v10, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v10, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-direct/range {v5 .. v10}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {v5}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->init()V

    const-string p1, "Enabling generic offload API"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v8

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    instance-of p1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p1, :cond_2

    const-string p1, "Generic offload API not supported by HAL"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/hardware/location/ContextHubInfo;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    new-instance v6, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    invoke-direct {v6, p0, v5}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    invoke-virtual {v0, v5, v6}, Lcom/android/server/location/contexthub/IContextHubWrapper;->registerCallback(ILcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "RemoteException while registering service callback for hub (ID = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    new-instance v8, Lcom/android/server/location/contexthub/ContextHubService$1;

    invoke-direct {v8, p0, v5}, Lcom/android/server/location/contexthub/ContextHubService$1;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    iget-object v10, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    goto :goto_3

    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 p2, -0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsLocationSettingNotifications()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "location_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubService$2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_5
    :goto_5
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsWifiSettingNotifications()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    new-instance p1, Lcom/android/server/location/contexthub/ContextHubService$3;

    invoke-direct {p1, p0, v1}, Lcom/android/server/location/contexthub/ContextHubService$3;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    const-string/jumbo v0, "android.net.wifi.WIFI_STATE_CHANGED"

    const-string/jumbo v3, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-static {v0, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "wifi_scan_always_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubService$2;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_7
    :goto_6
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsAirplaneModeSettingNotifications()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubService$2;

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_9
    :goto_7
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsMicrophoneSettingNotifications()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_8

    :cond_a
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mUserManager:Landroid/os/UserManager;

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mUserManager:Landroid/os/UserManager;

    if-nez p1, :cond_b

    const-string/jumbo p1, "Unable to get the UserManager service"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    if-nez p1, :cond_c

    const-string/jumbo p1, "Unable to add a sensor privacy listener for all users"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    invoke-virtual {p1, v2, v0}, Landroid/hardware/SensorPrivacyManagerInternal;->addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V

    :cond_d
    :goto_8
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsBtSettingNotifications()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    new-instance p1, Lcom/android/server/location/contexthub/ContextHubService$3;

    invoke-direct {p1, p0, v2}, Lcom/android/server/location/contexthub/ContextHubService$3;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "ble_scan_always_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$2;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_f
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->scheduleDailyMetricSnapshot()V

    const-string p0, "Finished Context Hub Service init"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getCurrentUserId()I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final checkEndpointDiscoveryPreconditions()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "ContextHubService"

    const-string v0, "Hub endpoint registry failed to initialize"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Endpoint discovery is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const-string/jumbo v1, "RemoteException while calling onTransactionComplete"

    const/4 v2, 0x0

    const-string v3, "ContextHubService"

    if-nez v0, :cond_0

    const/16 p0, 0x8

    :try_start_0
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot start "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " transaction for invalid hub ID "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    :try_start_1
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception p0

    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final cleanupReliableMessageRecordQueue()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toNanos()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .locals 6

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->createClient_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot register client with null callback"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid context hub ID "

    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .locals 14

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->createPendingIntentClient_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/location/ContextHubInfo;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v9, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    const-string/jumbo p0, "Regenerated"

    monitor-enter v4

    :try_start_0
    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v0

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    invoke-virtual {v4, v0, v10, v11, v12}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/contexthub/ContextHubClientBroker;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getHostEndPointId()S

    move-result v6

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iget-object v2, v4, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v3, v4, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v13

    const/4 v7, 0x0

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V

    iget-object p0, v4, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "Registered"

    iget-object v0, v4, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object/from16 v8, p5

    iput-object v8, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "ContextHubClientManager"

    const-string v2, " client with host endpoint ID "

    invoke-static {p0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-short v2, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid context hub ID "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 10

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->disableNanoApp_enforcePermission()V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    iget-object v0, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    const/4 v9, 0x2

    move v5, p1

    move-object v8, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;I)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-string v1, "ContextHubService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p3, v2

    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance p3, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p2}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-wide v4, 0x10900000003L

    const-wide v6, 0x10500000002L

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    const-wide v8, 0x20b00000001L

    invoke-virtual {p2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget-short v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    const-wide v10, 0x10500000001L

    invoke-virtual {p2, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v0

    invoke-virtual {p2, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    iget-boolean v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const-wide v5, 0x10800000005L

    invoke-virtual {p2, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    iget-wide v5, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    const-wide v10, 0x10300000004L

    invoke-virtual {p2, v10, v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_1
    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    const-wide v5, 0x10800000006L

    invoke-virtual {p2, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v0, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-wide v4, 0x10800000007L

    invoke-virtual {p2, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000008L

    iget-boolean p3, p3, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    invoke-virtual {p2, v4, v5, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    const-wide v0, 0x20b00000002L

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    iget-wide v8, p1, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    const-wide v10, 0x10300000001L

    invoke-virtual {p2, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget p3, p1, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p1, p1, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "Dumping ContextHub Service"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Supported permissions: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    if-eqz p2, :cond_8

    iget-object p3, p2, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    monitor-exit p3

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_5
    const-string p2, "=================== NANOAPPS ===================="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    new-instance p3, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "=================== PRELOADED NANOAPPS ===================="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-nez p2, :cond_9

    goto :goto_7

    :cond_9
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0, p3}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getPreloadedNanoappIds(I)[J

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    const-string v2, "Context Hub (id="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, "):"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length p3, v0

    move v2, v1

    :goto_6
    if-ge v2, p3, :cond_a

    aget-wide v3, v0, v2

    const-string v5, "  ID: 0x"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "=================== CLIENTS ===================="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    if-eqz p2, :cond_d

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "=================== ENDPOINTS ===================="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "=================== TRANSACTIONS ===================="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "=================== EVENTS ===================="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 10

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->enableNanoApp_enforcePermission()V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    iget-object v0, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    const/4 v9, 0x1

    move v5, p1

    move-object v8, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;I)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public final findEndpoints(J)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->findEndpoints_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkEndpointDiscoveryPreconditions()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final findEndpointsWithService(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->findEndpointsWithService_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkEndpointDiscoveryPreconditions()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/HubServiceInfo;

    invoke-virtual {v4}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->findNanoAppOnHub_enforcePermission()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final getCallingPackageName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getContextHubHandles()[I
    .locals 4

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubHandles_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aput v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubInfo_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Invalid Context Hub handle "

    const-string v0, " in getContextHubInfo"

    const-string v1, "ContextHubService"

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/location/ContextHubInfo;

    return-object p0
.end method

.method public final getContextHubs()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubs_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getHubs()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getHubs_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const-string p0, "ContextHubService"

    const-string v0, "Hub registry failed to initialize"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Hub discovery is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getNanoAppInstanceInfo_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/location/NanoAppInstanceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getPreloadedNanoAppIds_enforcePermission()V

    const-string/jumbo v0, "hubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getPreloadedNanoappIds(I)[J

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [J

    :cond_0
    return-object p0
.end method

.method public final loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 12

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoApp_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ContextHubService"

    if-nez v0, :cond_1

    const-string p0, "Invalid Context Hub handle "

    const-string p2, " in loadNanoApp"

    invoke-static {p1, p0, p2, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p0, "NanoApp cannot be null in loadNanoApp"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    new-instance v10, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object p2

    invoke-direct {v10, p2}, Landroid/hardware/location/NanoAppBinary;-><init>([B)V

    new-instance v11, Lcom/android/server/location/contexthub/ContextHubService$8;

    invoke-direct {v11, p0, p1, v10}, Lcom/android/server/location/contexthub/ContextHubService$8;-><init>(Lcom/android/server/location/contexthub/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;

    iget-object p2, v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    invoke-virtual {v10}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v6

    move v9, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    .locals 9

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoAppOnHub_enforcePermission()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string p0, "ContextHubService"

    const-string/jumbo p1, "NanoAppBinary cannot be null in loadNanoAppOnHub"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;

    iget-object v2, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {p3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v3

    move v6, p1

    move-object v8, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public final onDiscoveryCallbackFinished()V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->onDiscoveryCallbackFinished_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final onMessageReceiptOldApi(III[B)I
    .locals 8

    if-nez p4, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance v2, Landroid/hardware/location/ContextHubMessage;

    invoke-direct {v2, p1, v3, p4}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    move p1, v3

    :goto_0
    if-ge p1, v1, :cond_2

    iget-object p4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p4, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Landroid/hardware/location/IContextHubCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p4, p2, p3, v2}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "ContextHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") calling remote callback ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ")."

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return v3

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubShellCommand;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/location/contexthub/ContextHubShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/ContextHubService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 7

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->queryNanoApps_enforcePermission()V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;

    iget-object v0, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public final queryNanoAppsInternal(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v5, Lcom/android/server/location/contexthub/ContextHubService$9;

    const/4 v0, 0x1

    invoke-direct {v5, p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubService$9;-><init>(Lcom/android/server/location/contexthub/ContextHubService;II)V

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;

    iget-object v2, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->registerCallback_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Added callback, total callbacks "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .locals 13

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpoint_enforcePermission()V

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    iget-boolean p0, v4, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    if-eqz p0, :cond_1

    iget-object p0, v4, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-wide v11, v4, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long v0, v11, v0

    iput-wide v0, v4, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v0, 0x416e64726f696400L    # 1.5934355481615067E7

    invoke-static {p1, v11, v12, v0, v1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;JJ)Landroid/hardware/contexthub/EndpointInfo;

    move-result-object v5

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    iget-object v2, v4, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContext:Landroid/content/Context;

    iget-object v3, v4, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v9, v4, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v10, v4, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/IEndpointCommunication;Lcom/android/server/location/contexthub/ContextHubEndpointManager;Landroid/hardware/contexthub/EndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->register()V

    iget-object p0, v4, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    iget-object p0, v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p0, v4, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance p2, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    const-string p0, "ContextHubEndpointManager"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Registered endpoint with ID = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "ContextHubEndpointManager"

    const-string p2, "Failed to attach death recipient to client"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->unregister()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "Too many endpoints connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ContextHubEndpointManager failed to initialize"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "ContextHubService"

    const-string p1, "Endpoint callback is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "registerEndpoint must have a non-null callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "ContextHubService"

    const-string p1, "Endpoint manager failed to initialize"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Endpoint registration is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerEndpointDiscoveryCallbackDescriptor(Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpointDiscoveryCallbackDescriptor_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkEndpointDiscoveryPreconditions()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;->checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "HubInfoRegistry"

    const-string/jumbo p2, "RemoteException while adding discovery callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerEndpointDiscoveryCallbackId(JLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpointDiscoveryCallbackId_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkEndpointDiscoveryPreconditions()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/location/contexthub/HubInfoRegistry;->checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;J)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "HubInfoRegistry"

    const-string/jumbo p2, "RemoteException while adding discovery callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final scheduleDailyMetricSnapshot()V
    .locals 4

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ContextHubService"

    const-string v1, "Error when schedule a timer"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final sendAirplaneModeSettingUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onAirplaneModeSettingChanged(Z)V

    return-void
.end method

.method public final sendBtSettingUpdate(Z)V
    .locals 5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    if-eq v2, v0, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v2, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtScanningSettingChanged(Z)V

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    if-eq p1, v1, :cond_8

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtMainSettingChanged(Z)V

    return-void

    :cond_3
    const-string v0, "ContextHubService"

    const-string v1, "BT adapter not available. Getting permissions from user settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "bluetooth_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ble_scan_always_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_5

    move v2, v1

    :cond_5
    if-nez p1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    if-eq v1, v0, :cond_7

    :cond_6
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtMainSettingChanged(Z)V

    :cond_7
    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    if-eq p1, v2, :cond_8

    goto :goto_1

    :cond_8
    return-void

    :cond_9
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtScanningSettingChanged(Z)V

    return-void
.end method

.method public final sendLocationSettingUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onLocationSettingChanged(Z)V

    return-void
.end method

.method public final sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 5

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->sendMessage_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "ContextHubService"

    if-nez p3, :cond_1

    const-string p0, "ContextHubMessage cannot be null in sendMessage"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "ContextHubMessage message body cannot be null in sendMessage"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p0, "Invalid Context Hub handle "

    const-string p2, " in sendMessage"

    invoke-static {p1, p0, p2, v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v2, 0x0

    if-ne p2, v1, :cond_5

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result p2

    const/4 v3, 0x5

    if-ne p2, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    move-result p0

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid OS message params of type "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result p2

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object p3

    invoke-static {v3, v4, p2, p3}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/location/IContextHubClient;

    invoke-interface {p0, p2}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result p0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_1

    :cond_6
    const-string p0, "Failed to send nanoapp message - nanoapp with handle "

    const-string p1, " does not exist."

    invoke-static {p2, p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_8

    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method public final sendMicrophoneDisableSettingUpdateForCurrentUser()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v2, "Mic Disabled Setting: "

    const-string v3, "ContextHubService"

    invoke-static {v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onMicrophoneSettingChanged(Z)V

    return-void
.end method

.method public final sendWifiSettingUpdate(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSendWifiSettingUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez p1, :cond_2

    iget-boolean v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    if-eq v4, v3, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v4, v3}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiSettingChanged(Z)V

    :cond_3
    if-nez p1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    if-eq v3, v1, :cond_5

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v3, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiScanningSettingChanged(Z)V

    :cond_5
    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    if-eq p1, v2, :cond_7

    :cond_6
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiMainSettingChanged(Z)V

    :cond_7
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setTestMode(Z)Z
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->setTestMode_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->setTestMode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final unloadNanoApp(I)I
    .locals 13

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoApp_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    monitor-enter v2

    :try_start_0
    iget-object v0, v2, Lcom/android/server/location/contexthub/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-nez v0, :cond_1

    const-string p0, "Invalid nanoapp handle "

    const-string v0, " in unloadNanoApp"

    const-string v2, "ContextHubService"

    invoke-static {p1, p0, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v9

    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v6

    new-instance v12, Lcom/android/server/location/contexthub/ContextHubService$9;

    const/4 p1, 0x0

    invoke-direct {v12, p0, v9, p1}, Lcom/android/server/location/contexthub/ContextHubService$9;-><init>(Lcom/android/server/location/contexthub/ContextHubService;II)V

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    iget-object p1, v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    move-wide v10, v6

    invoke-direct/range {v3 .. v12}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .locals 11

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoAppFromHub_enforcePermission()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    iget-object v0, v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    move-wide v8, p3

    move v7, p1

    move-object v10, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public final unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->unregisterEndpointDiscoveryCallback_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkEndpointDiscoveryPreconditions()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    return-void
.end method
