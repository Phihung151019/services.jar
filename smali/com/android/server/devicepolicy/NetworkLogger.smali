.class public final Lcom/android/server/devicepolicy/NetworkLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public mHandlerThread:Lcom/android/server/ServiceThread;

.field public mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field public final mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mNetdEventCallback:Lcom/android/server/devicepolicy/NetworkLogger$1;

.field public mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

.field public final mPm:Landroid/content/pm/PackageManagerInternal;

.field public final mTargetUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/pm/PackageManagerInternal;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/server/devicepolicy/NetworkLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/NetworkLogger$1;-><init>(Lcom/android/server/devicepolicy/NetworkLogger;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Lcom/android/server/devicepolicy/NetworkLogger$1;

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    iput p3, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mTargetUserId:I

    return-void
.end method


# virtual methods
.method public final discardLogs()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    if-eqz p0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    const-string/jumbo v0, "NetworkLoggingHandler"

    const-string v1, "Discarded all network logs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public final retrieveLogs(J)Ljava/util/List;
    .locals 4

    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-wide p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    iget-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final startNetworkLogging()Z
    .locals 11

    const-string/jumbo v1, "NetworkLogger"

    const-string/jumbo v0, "Starting network logging."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "connmetrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    goto :goto_0

    :goto_1
    if-nez v0, :cond_2

    const-string p0, "Failed to register callback with IIpConnectivityMetrics."

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Lcom/android/server/devicepolicy/NetworkLogger$1;

    invoke-interface {v0, v3, v4}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v4, 0xa

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v5, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v10, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mTargetUserId:I

    const-wide/16 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;-><init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;JI)V

    iput-object v5, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    return v2

    :goto_2
    const-string v0, "Failed to make remote calls to register the callback"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public final stopNetworkLogging()Z
    .locals 4

    const-string/jumbo v0, "NetworkLogger"

    const-string/jumbo v1, "Stopping network logging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->discardLogs()V

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    if-eqz v3, :cond_0

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "connmetrics"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    goto :goto_0

    :goto_1
    if-nez v2, :cond_2

    const-string v2, "Failed to unregister callback with IIpConnectivityMetrics."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->quitSafely()Z

    return v1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v2, v1}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->quitSafely()Z

    :cond_3
    return v0

    :goto_2
    :try_start_2
    const-string v3, "Failed to make remote calls to unregister the callback"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->quitSafely()Z

    :cond_4
    return v1

    :goto_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->quitSafely()Z

    :cond_5
    throw v0
.end method
