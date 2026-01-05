.class public final Lcom/android/server/audio/AudioSystemAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/media/AudioSystem$RoutingUpdateCallback;
.implements Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;


# static fields
.field public static final sDeviceCacheLock:Ljava/lang/Object;

.field public static sRoutingListener:Lcom/android/server/audio/AudioService;

.field public static final sRoutingListenerLock:Ljava/lang/Object;

.field public static sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

.field public static sVolRangeInitReqListener:Lcom/android/server/audio/AudioService;

.field public static final sVolRangeInitReqListenerLock:Ljava/lang/Object;


# instance fields
.field public mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

.field public final mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

.field public mMethodCacheHit:[I

.field public final mRegisteredAttributesMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public static final declared-synchronized getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;
    .locals 5

    const-class v0, Lcom/android/server/audio/AudioSystemAdapter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/audio/AudioSystemAdapter;

    invoke-direct {v1}, Lcom/android/server/audio/AudioSystemAdapter;-><init>()V

    sput-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-static {v1}, Landroid/media/AudioSystem;->setRoutingCallback(Landroid/media/AudioSystem$RoutingUpdateCallback;)V

    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-static {v1}, Landroid/media/AudioSystem;->setVolumeRangeInitRequestCallback(Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;)V

    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v3, v2, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public final getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    const/4 p1, 0x0

    aget p2, p0, p1

    add-int/lit8 p2, p2, 0x1

    aput p2, p0, p1

    monitor-exit v1

    return-object v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final invalidateRoutingCache()V
    .locals 3

    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sDeviceCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onRoutingUpdated()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListener:Lcom/android/server/audio/AudioService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->onRoutingUpdatedFromNative()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_8

    iget-object v4, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/media/IDevicesForAttributesCallback;

    iget-object v5, p0, Lcom/android/server/audio/AudioSystemAdapter;->mRegisteredAttributesMap:Landroid/util/ArrayMap;

    invoke-interface {v4}, Landroid/media/IDevicesForAttributesCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/media/AudioAttributes;

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/audio/AudioSystemAdapter;->mLastDevicesForAttr:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v2

    :cond_2
    if-ge v10, v9, :cond_3

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Landroid/media/AudioDeviceAttributes;

    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioDeviceAttributes;

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    :try_start_2
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioAttributes;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v8, v6, v7}, Landroid/media/IDevicesForAttributesCallback;->onDevicesForAttributesChanged(Landroid/media/AudioAttributes;ZLjava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attribute list must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttributesCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final onVolumeRangeInitializationRequested()V
    .locals 1

    sget-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListener:Lcom/android/server/audio/AudioService;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onVolumeRangeInitRequestFromNative()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    const/4 p0, 0x0

    invoke-static {p1, p2, p3, p0}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result p0

    return p0
.end method

.method public final setForceUse(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    return-void
.end method

.method public final setParameters(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method
