.class public final Lcom/android/server/location/contexthub/HubInfoRegistry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallbackLock:Ljava/lang/Object;

.field public final mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mEndpointDiscoveryCallbacks:Ljava/util/List;

.field public final mHubEndpointInfos:Landroid/util/ArrayMap;

.field public mHubsInfo:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V
    .locals 2

    const-string v0, "HubInfoRegistry"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedHubs()V

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedEndpoints()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance p0, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    invoke-virtual {p2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void

    :cond_0
    const-string/jumbo p0, "PowerManager was null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/InstantiationError;

    invoke-direct {p1, p0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    const-string p1, "Failed to update hub and endpoint cache"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, p1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    iget-object v3, v3, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    invoke-interface {v3}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback is already registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    const-string v0, "HubInfoRegistry"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Hubs"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/HubInfo;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Endpoints"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public final invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v7, p1

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, p1, v8

    invoke-virtual {v5, v9}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->isMatch(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;I)V

    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    iget-object v5, v5, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-interface {p2, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final refreshCachedEndpoints()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getEndpoints()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HubInfoRegistry"

    const-string/jumbo v2, "RemoteException while getting Hub info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v3, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final refreshCachedHubs()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getHubs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HubInfoRegistry"

    const-string/jumbo v2, "RemoteException while getting Hub info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 3

    const-string/jumbo v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    iget-object v1, v1, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    invoke-interface {v1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
