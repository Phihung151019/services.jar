.class public Lcom/android/server/location/contexthub/ContextHubTransactionManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

.field public static final RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

.field public static final RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

.field public static final RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;


# instance fields
.field public final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field public final mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mReliableMessageLock:Ljava/lang/Object;

.field public final mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

.field public mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mReliableMessageTransactionMap:Ljava/util/Map;

.field public mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mTransactionLock:Ljava/lang/Object;

.field public final mTransactionQueue:Ljava/util/ArrayDeque;

.field public final mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

.field public final mTransactionRecordLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x3fffffff    # 1.9999999f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    return-void
.end method

.method public static completeMessageTransaction$1(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ContextHubTransactionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Successfully completed reliable message transaction with message sequence number = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and result = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget v0, p1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x7

    if-ne v0, v4, :cond_1

    move v2, v3

    :cond_1
    const/16 v0, 0x2710

    if-nez v1, :cond_5

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction$1()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Transaction queue is full (capacity = 10000)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    iget v2, p1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_6
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Reliable message transaction queue is full (capacity = 10000)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final getTransactionAndHandleNext(Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;->acceptTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction$1()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    :cond_3
    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public numReliableMessageTransactionPending()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onMessageDeliveryResponse(IZ)V
    .locals 4

    const-string v0, "Could not find reliable message transaction with message sequence number = "

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    if-nez v2, :cond_0

    const-string p0, "ContextHubTransactionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    invoke-static {v2, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->completeMessageTransaction$1(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final processMessageTransactions$1()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const-wide v8, 0x7fffffffffffffffL

    :cond_1
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v10, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v12

    iget v14, v11, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    if-nez v14, :cond_2

    iget-object v15, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    check-cast v15, Ljava/util/HashSet;

    invoke-virtual {v15, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v12, v11, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    const-wide v15, 0x7fffffffffffffffL

    iget-wide v6, v11, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    cmp-long v6, v6, v4

    const/4 v7, 0x1

    if-gtz v6, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    cmp-long v12, v12, v4

    if-gtz v12, :cond_4

    const/4 v13, 0x3

    if-le v14, v13, :cond_4

    move v13, v7

    goto :goto_3

    :cond_4
    move v13, v3

    :goto_3
    if-nez v6, :cond_8

    if-eqz v13, :cond_5

    goto :goto_4

    :cond_5
    if-lez v12, :cond_6

    if-gtz v14, :cond_7

    :cond_6
    invoke-virtual {v0, v11, v4, v5}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startMessageTransaction$1(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;J)V

    :cond_7
    iget-wide v6, v11, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-wide v8, v11, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide v8, v6

    goto :goto_1

    :cond_8
    :goto_4
    invoke-virtual {v0, v11, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V

    const/4 v6, 0x6

    invoke-static {v11, v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->completeMessageTransaction$1(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V

    move v10, v7

    goto :goto_1

    :cond_9
    const-wide v15, 0x7fffffffffffffffL

    if-nez v10, :cond_1

    cmp-long v2, v8, v15

    if-gez v2, :cond_a

    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v8, v4

    sget-object v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

    invoke-virtual {v4}, Ljava/time/Duration;->toNanos()J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_a
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    iget v0, p1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :goto_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTransactionAndStartNext$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction$1()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final startMessageTransaction$1(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;J)V
    .locals 6

    iget v0, p1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v1

    const-string v2, "ContextHubTransactionManager"

    iget v3, p1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Successfully "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string/jumbo v4, "started"

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "retried"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reliable message transaction with message sequence number = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not start reliable message transaction with message sequence number = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, p1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    iget-wide v1, p1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, p1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final startNextTransaction$1()V
    .locals 8

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v2

    if-nez v2, :cond_2

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    if-eqz v1, :cond_1

    const/4 v6, 0x5

    if-eq v1, v6, :cond_0

    const-wide/16 v6, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x1e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v3, v5, v6, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v3, "ContextHubTransactionManager"

    const-string v4, "Error when schedule a timer"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    monitor-enter v1

    :try_start_1
    invoke-static {v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    iput-boolean v0, v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    :goto_2
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    const-string/jumbo v2, "Transaction History:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
