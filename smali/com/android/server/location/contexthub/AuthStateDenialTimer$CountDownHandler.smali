.class public final Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/AuthStateDenialTimer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    iget-boolean v1, v0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mCancelled:Z

    if-eqz v1, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    iget-wide v0, v0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mStopTimeInFuture:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    iget-object v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mClient:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iget-wide v1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mNanoAppId:J

    iget-object p0, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    :try_start_2
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
