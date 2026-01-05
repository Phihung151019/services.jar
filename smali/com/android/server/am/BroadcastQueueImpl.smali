.class public final Lcom/android/server/am/BroadcastQueueImpl;
.super Lcom/android/server/am/BroadcastQueue;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;

.field public static final QUEUE_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;


# instance fields
.field public final mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

.field public final mBgConstants:Lcom/android/server/am/BroadcastConstants;

.field final mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field final mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

.field public final mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

.field public final mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

.field public mCheckPendingColdStartQueued:Z

.field public final mConstants:Lcom/android/server/am/BroadcastConstants;

.field public final mDelayedBroadcasts:Ljava/util/ArrayList;

.field public final mFgConstants:Lcom/android/server/am/BroadcastConstants;

.field public mLastTestFailureTime:J

.field public final mLocalCallback:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda17;

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mProcessQueues:Landroid/util/SparseArray;

.field public final mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

.field public final mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

.field public mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

.field public final mUidForeground:Landroid/util/SparseBooleanArray;

.field public final mWaitingFor:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;-><init>(I)V

    sput-object v0, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;-><init>(I)V

    sput-object v0, Lcom/android/server/am/BroadcastQueueImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;)V
    .locals 2

    new-instance v0, Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastSkipPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    new-instance v1, Lcom/android/server/am/BroadcastHistory;

    invoke-direct {v1, p1, p3}, Lcom/android/server/am/BroadcastHistory;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastConstants;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mDelayedBroadcasts:Ljava/util/ArrayList;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalCallback:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda17;

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    new-instance p4, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    iget p1, p3, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    iget p2, p3, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    add-int/2addr p1, p2

    new-array p1, p1, [Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    new-instance p2, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {p2}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    iput-boolean p3, p2, Lcom/android/server/utils/AnrTimer$Args;->mFreeze:Z

    const/4 p3, 0x2

    const-string v0, "BROADCAST_TIMEOUT"

    invoke-direct {p1, p4, p3, v0, p2}, Lcom/android/server/utils/AnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    return-void
.end method

.method public static containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z
    .locals 4

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method


# virtual methods
.method public assertHealthLocked()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v4, v1, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    const-string/jumbo v5, "runnableAtPrev"

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isRunnable "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getRunnableAt "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v1, v0

    move v4, v3

    :goto_3
    if-ge v4, v1, :cond_5

    aget-object v5, v0, v4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isActive "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    if-ltz v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isOrphaned "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v0, v1, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Conflicting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with queue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";\n mRunningColdStart.app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v5, v5, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";\n queue.app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v3

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Empty cold start queue "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-wide v4, v0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v8, v0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    sub-long/2addr v4, v8

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    const-wide/16 v8, 0x2

    div-long/2addr v0, v8

    cmp-long v0, v4, v0

    if-lez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Process start timeout expected for app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; startUpTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-wide v4, v1, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_a

    const-string v1, "<none>"

    goto :goto_7

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\n app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_9
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    xor-int/2addr v1, v2

    const-string/jumbo v4, "mRunnableAtInvalidated"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_c
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-static {v1}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-static {v1}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-static {v1}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_9

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method public final checkHealth()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->assertHealthLocked()V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "BroadcastQueue"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;

    new-instance v3, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Ljava/lang/String;)V

    iget-object p0, v2, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;->this$0:Lcom/android/server/DropBoxManagerService;

    const-string/jumbo v1, "broadcast_queue_dump"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final checkPendingColdStartValidityLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->isPendingColdStartValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v1, v1, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearInvalidPendingColdStart()V

    return-void
.end method

.method public final cleanupDisabledPackageReceiversLocked(ILjava/lang/String;Ljava/util/Set;)Z
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;-><init>(II)V

    if-eqz p3, :cond_0

    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    const/4 p3, 0x5

    invoke-direct {p1, p3, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;

    const/4 p2, 0x1

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;-><init>(II)V

    sget-object p2, Lcom/android/server/am/BroadcastQueueImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;

    iget-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {p3, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    move-object p1, p2

    :goto_1
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Z

    move-result p0

    return p0
.end method

.method public final clearInvalidPendingColdStart()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clearing invalid pending cold start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-boolean v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    const-string/jumbo v2, "invalid start with re-enqueued broadcast"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->reEnqueueActiveBroadcast()V

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public final deliveryTimeout(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 4

    const-string/jumbo v0, "deliveryTimeout"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "deliveryTimeoutLocked"

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 8

    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter$RunningBroadcastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring demoteFromRunning; no active broadcast for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v0, "demoteFromRunning"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v1, p1, :cond_3

    const-string v1, "BroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mRunningColdStart has not been cleared; mRunningColdStart.app: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , queue.app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    iput-boolean v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    iput v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    iput v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    iput-boolean v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    aput-object v1, v5, v4

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5

    iget-boolean v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCurReceiversIncremented:Z

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    iget v5, v4, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    sub-int/2addr v5, v3

    iput v5, v4, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    iput-boolean v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCurReceiversIncremented:Z

    :cond_4
    iget-boolean p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_5
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;ZZZLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 21
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v6, Landroid/util/IndentingPrintWriter;

    move-object/from16 v2, p1

    invoke-direct {v6, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->println()V

    if-nez p6, :cond_1a

    const-string/jumbo v2, "\ud83d\udccb Per-process queues:"

    invoke-virtual {v6, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v10, 0x0

    :goto_0
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v11, 0x20

    if-ge v10, v2, :cond_13

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v2, :cond_12

    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz v7, :cond_1

    const-string v7, "FG"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    const-string/jumbo v8, "|"

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v7, "FRZ"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v7, "INSTR"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v7, "PER"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-boolean v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFrozenByMARs:Z

    if-eqz v7, :cond_8

    const-string v7, "(FRZ by MARs)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_9

    const-string/jumbo v7, "state:"

    invoke-virtual {v6, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-boolean v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v3, :cond_a

    const-string/jumbo v3, "runningOomAdjusted:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_a
    iget-boolean v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    if-eqz v3, :cond_b

    const-string/jumbo v3, "activeReEnqueued:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_b
    iget-wide v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v12, 0x0

    cmp-long v3, v7, v12

    if-lez v3, :cond_c

    const-string/jumbo v3, "processStartInitiatedTimestamp:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    const-string/jumbo v3, "e:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " d:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " f:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " fd:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " o:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " a:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " p:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " pd:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " int:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " rt:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " ins:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " m:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " csi:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " adcsi:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " ccu:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " ccn:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " crd:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountRealDeferUntilActive:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " cmtb:"

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountMARsTargetBroadcast:I

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    :goto_2
    iget-object v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_d

    iget-object v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    const-string/jumbo v8, "OUTGOING "

    invoke-virtual {v6, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v7, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    invoke-static {v12, v13, v4, v5, v6}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v6, v11}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    iget-object v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz v7, :cond_e

    const-string v3, "ACTIVE"

    iget v8, v2, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    :cond_e
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v7, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    const-string/jumbo v8, "URGENT"

    iget v3, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v20, v8

    move v8, v3

    move-object/from16 v3, v20

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_3

    :cond_f
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v7, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    const/4 v8, 0x0

    iget v3, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v20, v8

    move v8, v3

    move-object/from16 v3, v20

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_4

    :cond_10
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v7, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    const-string/jumbo v8, "OFFLOAD"

    iget v3, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v20, v8

    move v8, v3

    move-object/from16 v3, v20

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_5

    :cond_11
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_6
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "\ud83e\uddcd Runnable:"

    invoke-virtual {v6, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const-string v3, "(none)"

    if-nez v2, :cond_14

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_14
    :goto_7
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v7

    invoke-static {v7, v8, v4, v5, v6}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v6, v11}, Landroid/util/IndentingPrintWriter;->print(C)V

    iget-boolean v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v7, :cond_15

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    :cond_15
    iget v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    invoke-static {v7}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_7

    :cond_16
    :goto_8
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "\ud83c\udfc3 Running:"

    invoke-virtual {v6, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_19

    aget-object v7, v2, v5

    if-eqz v7, :cond_17

    iget-object v8, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v7, v8, :cond_17

    const-string/jumbo v8, "\ud83e\udd76 "

    invoke-virtual {v6, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    const-string/jumbo v8, "\u3000 "

    invoke-virtual {v6, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_a
    if-eqz v7, :cond_18

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Broadcasts with ignored delivery group policies:"

    invoke-virtual {v6, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Foreground UIDs:"

    invoke-virtual {v6, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v6}, Landroid/util/IndentingPrintWriter;->println()V

    if-eqz p2, :cond_1a

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v2, v6}, Lcom/android/server/am/BroadcastConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {v2, v6}, Lcom/android/server/am/BroadcastConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_c

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1a
    :goto_c
    if-eqz p3, :cond_32

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    iget-object v4, v0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    const-string v7, "Frozen"

    move-object/from16 v5, p6

    move-object v2, v6

    move/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/BroadcastHistory;->dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V

    move-object v6, v2

    iget-object v4, v0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    const-string/jumbo v7, "Pending"

    move/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/BroadcastHistory;->dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V

    move-object v6, v2

    iget v2, v0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    const/4 v4, -0x1

    move v7, v2

    move v8, v4

    const/4 v10, 0x0

    :goto_d
    iget v11, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    invoke-static {v7, v4, v11}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v7

    iget-object v11, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v12, v11, v7

    const-string v13, ": "

    const-string v14, "  #"

    const-string v15, ":"

    const-string v4, "    "

    if-nez v12, :cond_1c

    :cond_1b
    :goto_e
    const/4 v1, 0x0

    goto/16 :goto_10

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    if-eqz v1, :cond_1d

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    goto :goto_f

    :cond_1d
    if-eqz v5, :cond_1e

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    :goto_f
    goto :goto_e

    :cond_1e
    if-nez v10, :cond_1f

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    const-string v9, "  Historical broadcasts:"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_1f
    const-string v9, "  Historical Broadcast #"

    if-eqz v5, :cond_20

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v6, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    if-nez p4, :cond_1b

    const/4 v1, 0x0

    goto :goto_11

    :cond_20
    if-eqz p4, :cond_21

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v6, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    goto :goto_e

    :cond_21
    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-virtual {v9, v1, v5, v5, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v12, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v5, :cond_22

    iget-object v9, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eq v5, v9, :cond_22

    const-string v5, "    targetComp: "

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v12, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22
    iget-object v5, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_23

    const-string v9, "    extras: "

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_23
    :goto_10
    if-ne v7, v2, :cond_31

    :goto_11
    if-nez p5, :cond_2b

    if-nez p6, :cond_2b

    iget v2, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget v5, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    if-eqz p4, :cond_25

    move v10, v1

    move v9, v2

    const/4 v8, -0x1

    :cond_24
    :goto_12
    const/4 v12, -0x1

    goto :goto_14

    :cond_25
    move v9, v2

    move v7, v8

    :goto_13
    if-lez v7, :cond_24

    if-eq v9, v2, :cond_24

    const/4 v12, -0x1

    invoke-static {v9, v12, v5}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v9

    aget-object v16, v11, v9

    if-nez v16, :cond_26

    goto :goto_13

    :cond_26
    add-int/lit8 v7, v7, -0x1

    goto :goto_13

    :goto_14
    invoke-static {v9, v12, v5}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v9

    iget-object v7, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    aget-object v7, v7, v9

    if-nez v7, :cond_27

    move-object/from16 p3, v4

    move v12, v5

    goto/16 :goto_15

    :cond_27
    if-nez v10, :cond_28

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    const-string v10, "  Historical broadcasts summary:"

    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_28
    if-nez p4, :cond_29

    const/16 v11, 0x32

    if-lt v8, v11, :cond_29

    const-string v2, "  ..."

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_29
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v11, v7, v9

    iget-object v1, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v16, v1, v9

    sub-long v11, v11, v16

    invoke-static {v11, v12, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v11, " dispatch "

    invoke-virtual {v6, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v16, v11, v9

    aget-wide v18, v7, v9

    move-object/from16 p3, v4

    move v12, v5

    sub-long v4, v16, v18

    invoke-static {v4, v5, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, " finish"

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    enq="

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    move-object v5, v7

    move/from16 p6, v8

    aget-wide v7, v1, v9

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " disp="

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    aget-wide v4, v5, v9

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " fin="

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    aget-wide v4, v11, v9

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v8, p6

    :goto_15
    if-ne v9, v2, :cond_2a

    goto :goto_16

    :cond_2a
    move-object/from16 v4, p3

    move v5, v12

    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_2b
    :goto_16
    if-eqz p4, :cond_30

    if-eqz p5, :cond_2c

    const/4 v5, 0x1

    return v5

    :cond_2c
    iget-object v1, v0, Lcom/android/server/am/BroadcastHistory;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    move v2, v1

    const/4 v9, 0x0

    const/4 v12, -0x1

    :cond_2d
    sget v3, Lcom/android/server/am/BroadcastHistory;->MAX_ABORTED_BROADCAST_HISTORY:I

    const/4 v4, -0x1

    invoke-static {v2, v4, v3}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mAbortedBroadcastHistory:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_2e

    goto :goto_18

    :cond_2e
    add-int/lit8 v12, v12, 0x1

    if-nez v9, :cond_2f

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    const-string v5, "  Aborted Historical broadcasts [ ]:"

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_17

    :cond_2f
    move v5, v9

    :goto_17
    const-string v7, "  Aborted Historical Broadcast   #"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v6, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v9, v5

    :goto_18
    if-ne v2, v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/am/BroadcastHistory;->mBCBrHistoryRef:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  BOOT_COMPLETED broadcast history"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/BroadcastHistory;->mBCBrHistoryRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :cond_30
    const/4 v5, 0x1

    return v5

    :cond_31
    move-object/from16 v1, p5

    move-object/from16 v5, p6

    const/4 v4, -0x1

    goto/16 :goto_d

    :cond_32
    return p7
.end method

.method public final enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    const/4 v9, 0x1

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Enqueuing "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " receivers"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BroadcastQueue"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "enqueueBroadcast"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v10

    iget-object v2, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    move v3, v12

    :goto_0
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_5

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ResolveInfo;

    :try_start_0
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7, v8, v0}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    move v0, v12

    :goto_1
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v7, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v6}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const v7, 0x186a0

    if-ge v6, v7, :cond_2

    goto :goto_3

    :cond_2
    new-instance v6, Landroid/content/pm/ActivityInfo;

    invoke-direct {v6, v0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_3

    move-object v7, v11

    goto :goto_2

    :cond_3
    new-instance v7, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, v0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v7, v12}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    :goto_2
    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v6

    :cond_4
    :goto_3
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_5
    add-int/2addr v3, v9

    goto :goto_0

    :cond_6
    :goto_4
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v12

    goto :goto_5

    :cond_7
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    monitor-enter v3

    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDeliveryGroupPolicyIgnoredActions:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    move-result v0

    goto :goto_6

    :cond_9
    move v0, v12

    :goto_6
    if-eqz v0, :cond_f

    if-eq v0, v9, :cond_d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown delivery group policy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_b

    goto :goto_8

    :cond_b
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupExtrasMerger()Landroid/os/BundleMerger;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v4, v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    iget-object v2, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    :goto_7
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_e

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    :cond_e
    sget-object v3, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;

    new-instance v5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v4, v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v5, v2}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Z

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v2, v1, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v11, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_f
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    iget-object v2, v0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0, v4, v9}, Lcom/android/server/am/BroadcastHistory;->updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_10
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_11

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :cond_11
    iget-object v2, v1, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_12

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    :cond_12
    move-object v13, v2

    iput-object v13, v4, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    move v5, v12

    move v14, v5

    :goto_9
    iget-object v2, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_29

    iget-object v2, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/BroadcastQueueImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    move-result v7

    if-eqz v7, :cond_17

    sget-boolean v7, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v8, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v8, :cond_17

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v15

    if-nez v15, :cond_17

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v3, v11, v15}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    sget-object v11, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {v11, v8}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v8

    if-eqz v12, :cond_13

    iget-object v11, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz v11, :cond_13

    iget-object v11, v11, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Lcom/android/server/am/ActivityManagerService$12;

    if-eqz v11, :cond_13

    move v11, v9

    goto :goto_a

    :cond_13
    const/4 v11, 0x0

    :goto_a
    iget-object v12, v7, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    if-eqz v12, :cond_14

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    move v3, v9

    goto :goto_b

    :cond_14
    iget-object v7, v7, Lcom/android/server/am/FreecessController;->mPendingIntentsIdle:Ljava/util/ArrayList;

    if-eqz v7, :cond_15

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-eqz v8, :cond_15

    xor-int/lit8 v3, v11, 0x1

    goto :goto_b

    :cond_15
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_16

    move v3, v9

    goto :goto_c

    :cond_16
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_17

    iget-object v3, v4, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v3, v1, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {v3, v4, v6, v9}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    const-string/jumbo v2, "skipped by policy at enqueue: "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    move/from16 v16, v9

    goto/16 :goto_18

    :cond_18
    iget-object v3, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x20000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_23

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    move-result v6

    goto :goto_d

    :cond_19
    const/4 v6, 0x0

    :goto_d
    if-nez v6, :cond_23

    invoke-virtual {v2, v4}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    iget-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/am/BroadcastRecord;

    iget v12, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v14, v11, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-ne v4, v11, :cond_1b

    :cond_1a
    move/from16 v16, v9

    goto/16 :goto_13

    :cond_1b
    iget v15, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v16, v9

    iget v9, v11, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ne v15, v9, :cond_20

    iget v9, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v15, v11, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v9, v15, :cond_20

    iget-object v9, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v15, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v15}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-static {v7, v14}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    iget v9, v11, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    if-nez v9, :cond_20

    iget-wide v14, v11, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v17, 0x0

    cmp-long v9, v14, v17

    if-gtz v9, :cond_20

    iget-object v9, v4, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_1c

    iget-object v14, v4, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object/from16 v17, v6

    goto :goto_12

    :cond_1c
    iget-object v9, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget-object v14, v11, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ne v9, v14, :cond_1d

    move/from16 v9, v16

    goto :goto_f

    :cond_1d
    const/4 v9, 0x0

    :goto_f
    if-eqz v9, :cond_1f

    iget-object v14, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    :goto_10
    if-ltz v14, :cond_1f

    iget-object v15, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v17, v6

    iget-object v6, v11, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const/4 v9, 0x0

    goto :goto_11

    :cond_1e
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v6, v17

    goto :goto_10

    :cond_1f
    move-object/from16 v17, v6

    :goto_11
    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v6, v11, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    if-eqz v9, :cond_21

    iput-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput v5, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-wide v6, v4, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v6, v4, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    iget-wide v6, v11, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v6, v4, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iget-wide v6, v11, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v6, v4, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iget-wide v6, v11, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v6, v4, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-virtual {v2, v11, v12}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_14

    :cond_20
    move-object/from16 v17, v6

    :cond_21
    move/from16 v9, v16

    move-object/from16 v6, v17

    goto/16 :goto_e

    :goto_13
    const/4 v11, 0x0

    :goto_14
    if-eqz v11, :cond_24

    iget-boolean v6, v2, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v6, :cond_27

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v6, v6, v5

    if-nez v6, :cond_27

    invoke-interface {v3, v4, v5}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountRealDeferUntilActive:I

    iget v6, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    if-eq v3, v6, :cond_22

    move/from16 v3, v16

    goto :goto_15

    :cond_22
    const/4 v3, 0x0

    :goto_15
    if-eqz v3, :cond_27

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BroadcastProcessQueue;->markDeferredByMARs(Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_17

    :cond_23
    move/from16 v16, v9

    :cond_24
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v6

    iput-object v4, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput v5, v6, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v2, v4}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    iget-boolean v6, v2, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v6, :cond_26

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v6, v6, v5

    if-nez v6, :cond_26

    invoke-interface {v3, v4, v5}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    iget v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountRealDeferUntilActive:I

    iget v6, v2, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    if-eq v3, v6, :cond_25

    move/from16 v3, v16

    goto :goto_16

    :cond_25
    const/4 v3, 0x0

    :goto_16
    if-eqz v3, :cond_26

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BroadcastProcessQueue;->markDeferredByMARs(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_26
    const/4 v11, 0x0

    :cond_27
    :goto_17
    if-eqz v11, :cond_28

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    move/from16 v14, v16

    :goto_18
    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v16

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_29
    move/from16 v16, v9

    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    :goto_1a
    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2b

    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v6, v6, v5

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v6

    if-nez v6, :cond_2a

    iget-object v6, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    invoke-virtual {v6, v3, v5}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2c
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v2, v1, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v13}, Landroid/util/ArrayMap;->clear()V

    iput-object v3, v4, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3, v13}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    if-nez v14, :cond_2e

    :cond_2d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    :cond_2e
    invoke-static {v10}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final enqueueUpdateRunningList()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const-string/jumbo v1, "isActive"

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const-string/jumbo v1, "re-enqueued broadcast delivery failed"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v6

    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "reEnqueueActiveBroadcast"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastProcessQueue;->reEnqueueActiveBroadcast()V

    return-void
.end method

.method public final finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring finishReceiverActiveLocked; no active broadcast for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "finishReceiver"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v5

    iget-object v1, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    const/4 p0, 0x3

    iget-object p1, v1, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    if-ne v7, p0, :cond_4

    iget p0, v4, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v4, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v3, :cond_3

    iget-boolean p0, v3, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, v2}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;

    move-result-object p0

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    instance-of p2, v6, Lcom/android/server/am/BroadcastFilter;

    if-eqz p2, :cond_2

    check-cast v6, Lcom/android/server/am/BroadcastFilter;

    iget-object p2, v6, Lcom/android/server/am/BroadcastFilter;->receiverId:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/16 p3, 0x40

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p3, v6, Lcom/android/server/am/BroadcastFilter;->receiverId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p3, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object p2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_0
    iget-object p3, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {p3, p1, p2}, Lcom/android/internal/os/TimeoutRecord;->forBroadcastReceiver(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/os/TimeoutRecord;->setExpiredTimer(Ljava/lang/AutoCloseable;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    iget-object p1, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-boolean p0, v2, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    if-eqz p0, :cond_5

    invoke-virtual {p1, v2}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->enabled()Z

    move-result p0

    if-nez p0, :cond_5

    iget-object p0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_5
    :goto_1
    iget-object p0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_6
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v1

    iget-boolean v2, v5, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v2, :cond_2

    iput p2, v5, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput-object p3, v5, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object p4, v5, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-object p2, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p2

    const/high16 p3, 0x8000000

    and-int/2addr p2, p3

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p5, v5, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    :cond_2
    :goto_0
    const-string/jumbo p2, "remote app"

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    iget-boolean p2, v5, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-eqz p2, :cond_4

    add-int/2addr v1, p3

    move v6, v1

    :goto_1
    iget-object p2, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v6, p2, :cond_3

    iget-object p2, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x2

    const-string/jumbo v9, "resultAbort"

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object v2, p0

    iget-object p0, v2, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    iget-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mAbortedBroadcastHistory:[Ljava/lang/String;

    iget p4, p0, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    new-instance p5, Ljava/io/CharArrayWriter;

    invoke-direct {p5}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v3}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {p5}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p2, p4

    iget p2, p0, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    sget p4, Lcom/android/server/am/BroadcastHistory;->MAX_ABORTED_BROADCAST_HISTORY:I

    invoke-static {p2, p3, p4}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result p2

    iput p2, p0, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    goto :goto_2

    :cond_4
    move-object v2, p0

    :goto_2
    invoke-virtual {v2, p1}, Lcom/android/server/am/BroadcastQueueImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return p3

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v2, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_0
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_6
    return v0

    :catch_0
    invoke-virtual {v2, p1}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    invoke-virtual {v2, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return p3

    :cond_7
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring finishReceiverLocked; no active broadcast for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return v0
.end method

.method public final forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p2, p3, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v2, v1

    :cond_0
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_3
    return v2
.end method

.method public final forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v2, v1

    :cond_0
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_3
    return-void
.end method

.method public getOrCreateProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;-><init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1

    :cond_3
    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    return-object v1
.end method

.method public getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_0
    if-eqz p0, :cond_1

    iget-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getRunningSize()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final handleProcessFreezableChanged(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v4, p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/BroadcastQueueImpl;

    invoke-virtual {v4, v3}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, v1, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    iget-object p1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final handleProcessFreezableChangedByMARs(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, v1, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFrozenByMARs:Z

    if-eq p1, p2, :cond_1

    iput-boolean p2, v1, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFrozenByMARs:Z

    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final isPendingColdStartValid()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-wide v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    sub-long/2addr v1, v3

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v3, v0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    return p0
.end method

.method public isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mPowerSaveAllowListSelfLocked:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mPowerSaveAllowListSelfLocked:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p0

    :try_start_1
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v1, p1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v1, :cond_3

    iget-boolean p1, p1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mIsCached:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBroadcastController:Lcom/android/server/am/BroadcastController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    :goto_1
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v2, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget v6, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v7, 0x4a

    invoke-virtual {v2, v7, v6, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    iget-object v3, v2, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/BroadcastHistory;->updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_3
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v1

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    :goto_2
    iget v6, v2, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    iget-object v7, v2, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aput-object v3, v7, v6

    iget v7, v2, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    const/4 v8, 0x1

    invoke-static {v6, v8, v7}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v6

    iput v6, v2, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    iget-object v6, v2, Lcom/android/server/am/BroadcastHistory;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v8, v8, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v2, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    aput-object v7, v9, v6

    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_5

    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    iget-object v6, v2, Lcom/android/server/am/BroadcastHistory;->mBCBrHistoryRef:Ljava/lang/ref/SoftReference;

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/ref/SoftReference;

    new-instance v9, Ljava/io/CharArrayWriter;

    invoke-direct {v9}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v9}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v2, Lcom/android/server/am/BroadcastHistory;->mBCBrHistoryRef:Ljava/lang/ref/SoftReference;

    :cond_5
    iget v6, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget-wide v9, v3, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iget-object v11, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aput-wide v9, v11, v6

    iget-object v9, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    iget-wide v10, v3, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v10, v9, v6

    iget-object v3, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    aput-wide v9, v3, v6

    iget v3, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget v6, v2, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-static {v3, v8, v6}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_3

    :cond_6
    move v2, v5

    :goto_3
    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v6, 0x2

    if-ge v3, v2, :cond_8

    :cond_7
    move v7, v8

    goto/16 :goto_8

    :cond_8
    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v10, v8

    goto :goto_4

    :cond_9
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v10, v6

    goto :goto_4

    :cond_a
    move v10, v5

    :goto_4
    if-eqz v10, :cond_7

    iget-wide v11, v1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v13, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v11, v13

    long-to-int v11, v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v12, v14

    long-to-int v12, v12

    iget-wide v13, v1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    move v7, v8

    iget-wide v8, v1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v13, v8

    long-to-int v13, v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v14, v1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v8, v14

    long-to-int v14, v8

    const-class v8, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerInternal;

    if-eqz v8, :cond_b

    iget v9, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v8, v9}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    goto :goto_5

    :cond_b
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_c

    iget-object v9, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v9

    move/from16 v16, v9

    goto :goto_6

    :cond_c
    move/from16 v16, v5

    :goto_6
    const-string v9, "BOOT_COMPLETED_BROADCAST_COMPLETION_LATENCY_REPORTED action:"

    const-string v15, " dispatchLatency:"

    const-string v4, " completeLatency:"

    invoke-static {v11, v9, v3, v15, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dispatchRealLatency:"

    const-string v9, " completeRealLatency:"

    invoke-static {v12, v13, v4, v9, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v4, " receiversSize:"

    const-string v9, " userId:"

    invoke-static {v14, v2, v4, v9, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userType:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_d

    iget-object v4, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    const-string v2, "BroadcastQueue"

    invoke-static {v3, v4, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x1b5

    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v9 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIII)V

    :goto_8
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v5

    :goto_9
    if-ge v3, v2, :cond_f

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastProcessedEventRecord;

    iget-wide v14, v4, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    const-wide/16 v8, 0xa

    cmp-long v8, v14, v8

    if-gtz v8, :cond_e

    move/from16 v19, v7

    goto :goto_a

    :cond_e
    iget-object v9, v4, Lcom/android/server/am/BroadcastProcessedEventRecord;->mIntentAction:Ljava/lang/String;

    iget v10, v4, Lcom/android/server/am/BroadcastProcessedEventRecord;->mSenderUid:I

    iget v11, v4, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverUid:I

    iget v12, v4, Lcom/android/server/am/BroadcastProcessedEventRecord;->mNumberOfReceivers:I

    iget-object v13, v4, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverProcessName:Ljava/lang/String;

    move/from16 v19, v7

    iget-wide v7, v4, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    iget-object v4, v4, Lcom/android/server/am/BroadcastProcessedEventRecord;->mBroadcastTypes:[I

    move-wide/from16 v16, v7

    const/16 v8, 0x404

    move-object/from16 v18, v4

    invoke-static/range {v8 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIILjava/lang/String;JJ[I)V

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v19

    goto :goto_9

    :cond_f
    move/from16 v19, v7

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-boolean v2, v1, Lcom/android/server/am/BroadcastRecord;->mCounted:Z

    if-eqz v2, :cond_16

    iput-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->mCounted:Z

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    const-string/jumbo v3, "android"

    :goto_b
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerServiceExt;->mBrMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v3, "EMPTY_ACTION"

    :cond_12
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    if-nez v4, :cond_13

    goto :goto_c

    :cond_13
    iget v7, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    iget v8, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    if-ge v7, v8, :cond_14

    iput v8, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    :cond_14
    add-int/lit8 v8, v8, -0x1

    iput v8, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    if-gez v8, :cond_15

    iput v5, v4, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    :cond_15
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_c
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_19

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_19

    move v8, v5

    move v9, v8

    :goto_d
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_18

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_17

    add-int/lit8 v8, v8, 0x1

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v2, v2, v5

    if-ne v2, v6, :cond_17

    add-int/lit8 v9, v9, 0x1

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v12, v2, v4

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastController:Lcom/android/server/am/BroadcastController;

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/BroadcastController;->addBroadcastStatLocked(IILjava/lang/String;Ljava/lang/String;J)V

    :cond_19
    return-void
.end method

.method public final notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v1, p3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    iget-object p1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 p3, -0x1

    const/16 v1, 0x1f

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    check-cast p1, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string p1, "Event reported without a package name, eventType:31"

    const-string/jumbo p3, "UsageStatsService"

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance p3, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p3, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    iput-object v0, p3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1, p3}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget p3, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, p3, v1, v0}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p3, 0x3

    invoke-virtual {p1, v0, p3}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p3, p2}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    iget v1, v0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    iput-boolean v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCurReceiversIncremented:Z

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    return-void
.end method

.method public final onApplicationAttachedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_2

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_0
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    throw p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_0

    iget-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v3, p1, :cond_0

    iget-object v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v3, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    iput-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_3

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    const-string/jumbo v1, "onApplicationCleanupLocked"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_1
    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_3
    return-void
.end method

.method public removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_0

    iget-object p0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p0, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    return-object v0

    :cond_0
    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-object v0

    :cond_2
    iget-object v2, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    :goto_0
    cmp-long v2, v10, v3

    if-gtz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    if-nez v5, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v9, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v1, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v3, p1

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessList;->getUidProcStateLOSP(I)I

    move-result v0

    check-cast v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    iget-object v12, v2, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    iget-object v15, v12, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    sget-boolean v3, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ResponseStatsTracker"

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object v6, v3

    invoke-static {v13, v14}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v6

    move-object v6, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v16, v8

    invoke-static {v0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 p2, v1

    move-object/from16 v1, v16

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "broadcast:%s; srcUid=%d, tgtPkg=%s, tgtUsr=%d, id=%d, state=%s"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_5
    move-object/from16 p2, v1

    :goto_3
    iget-object v1, v12, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;->reset()V

    check-cast v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;

    iput v9, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->sourceUid:I

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iput v3, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUserId:I

    iput v0, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUidProcessState:I

    iput-object v5, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetPackage:Ljava/lang/String;

    iput-wide v10, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->idForResponseEvent:J

    iput-wide v13, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->timestampMs:J

    :goto_4
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v2, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v1}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseFgThresholdState()I

    move-result v1

    if-gt v0, v1, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2, v5, v0}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_5
    return-void

    :cond_9
    iget-object v1, v2, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v2, v5, v0}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    new-instance v7, Lcom/android/server/usage/BroadcastEvent;

    move-object v12, v5

    move v8, v9

    move v9, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/usage/BroadcastEvent;-><init>(IIJLjava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/usage/BroadcastEvent;

    goto :goto_6

    :cond_a
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_6
    iget-object v0, v7, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    invoke-virtual {v0, v13, v14}, Landroid/util/LongArrayQueue;->addLast(J)V

    invoke-virtual {v2, v7}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_7
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const-string/jumbo v3, "isActive"

    invoke-static {v0, v3}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    const-string/jumbo v0, "scheduleReceiverWarmLocked"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v9

    :goto_0
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v5

    iget v0, v4, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    :cond_0
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/am/BroadcastQueueImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_9

    check-cast v0, Landroid/content/pm/ResolveInfo;

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v7, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_5

    :cond_2
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v8

    :try_start_0
    iget-object v12, v3, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v12, v0, v7}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v12

    if-eqz v12, :cond_8

    const-string/jumbo v13, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v3, v12, v11}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    sget-object v3, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    invoke-virtual {v3, v7, v0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->onAppWidgetEnabled(ILjava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    const-string/jumbo v13, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    sget-object v3, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter$WidgetPkgFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    invoke-virtual {v3, v7, v0}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->onAppWidgetDisabled(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string/jumbo v13, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v3, v12, v11}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    goto :goto_3

    :cond_5
    const-string/jumbo v13, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v3, v12, v11}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    sget-object v3, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    invoke-virtual {v3, v7, v0}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->onDeviceAdminEnabled(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string/jumbo v3, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter$DeviceAdminPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    iget-object v6, v3, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v12, v3, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-eqz v12, :cond_7

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_7
    :goto_1
    monitor-exit v6

    goto :goto_3

    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v0

    :cond_8
    :goto_3
    monitor-exit v8

    goto :goto_5

    :goto_4
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_9
    :goto_5
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v20

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const/16 v12, 0x8

    if-eqz v0, :cond_c

    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v0, :cond_c

    if-nez v20, :cond_c

    iput-boolean v10, v2, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v7, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    goto :goto_6

    :cond_a
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v7, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    :goto_6
    long-to-int v0, v7

    iget-object v7, v1, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    iget-object v8, v7, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v8}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->enabled()Z

    move-result v8

    if-eqz v8, :cond_b

    int-to-long v13, v0

    invoke-virtual {v7, v13, v14, v2}, Lcom/android/server/utils/AnrTimer;->start(JLjava/lang/Object;)V

    goto :goto_7

    :cond_b
    iget-object v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v8, v8, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuDelayTimeForPid(I)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->lastCpuDelayTime:J

    iget-object v7, v1, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-static {v7, v12, v0, v11, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    int-to-long v13, v0

    invoke-virtual {v7, v8, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    :cond_c
    iput-boolean v11, v2, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    :goto_7
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const/4 v7, 0x3

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v13, v0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    goto :goto_8

    :cond_d
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v13, v0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    :goto_8
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-static {v8, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-lez v0, :cond_10

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_f

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v13

    invoke-virtual {v0, v7, v13, v14, v3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(IJLcom/android/server/am/ProcessRecord;)V

    goto :goto_9

    :cond_f
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v26

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v23

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v24

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v25

    iget v8, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v21, v0

    move/from16 v22, v7

    move/from16 v28, v8

    invoke-virtual/range {v21 .. v28}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IILjava/lang/String;IJI)V

    :cond_10
    :goto_9
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Scheduling "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to warm "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "BroadcastQueue"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v7, 0x4

    const-string/jumbo v8, "scheduleReceiverWarmLocked"

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    move-object v8, v1

    move-object v1, v2

    move-object v2, v6

    invoke-virtual {v4, v2}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v14

    move v5, v12

    iget-object v12, v3, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_1b

    :try_start_3
    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_12

    iget-object v0, v8, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v7, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v13, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v15, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v24

    iget v15, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const/16 v27, 0x0

    const/16 v26, 0x1

    move/from16 v22, v7

    move-object/from16 v23, v13

    move/from16 v25, v15

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    goto :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_11

    :cond_12
    :goto_a
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iput v0, v1, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    instance-of v0, v2, Lcom/android/server/am/BroadcastFilter;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_15

    :try_start_4
    move-object v0, v2

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v8, v3, v4}, Lcom/android/server/am/BroadcastQueueImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    iget v15, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v7, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v26, v11

    iget-boolean v11, v4, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget v13, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v10, v10, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    move-object/from16 v19, v0

    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/BadParcelableException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v0, :cond_13

    move/from16 v21, v0

    :try_start_6
    iget v0, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v23, v0

    goto :goto_b

    :cond_13
    move/from16 v21, v0

    const/16 v23, -0x1

    :goto_b
    if-eqz v21, :cond_14

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    :goto_c
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v22, v10

    move/from16 v21, v13

    move-object/from16 v13, v19

    const/16 v10, 0x8

    move/from16 v19, v11

    goto :goto_d

    :cond_14
    const/16 v24, 0x0

    goto :goto_c

    :goto_d
    invoke-interface/range {v12 .. v24}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    if-eqz v20, :cond_18

    const-string/jumbo v0, "assuming delivered"

    const/4 v5, 0x1

    invoke-virtual {v8, v1, v5, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    move-object v10, v1

    goto/16 :goto_12

    :catch_1
    move-exception v0

    const/16 v10, 0x8

    goto :goto_11

    :catch_2
    move-exception v0

    move v10, v5

    goto :goto_11

    :cond_15
    move v10, v5

    move/from16 v26, v11

    move-object v6, v2

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8, v3, v4, v6}, Lcom/android/server/am/BroadcastQueueImpl;->notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V

    move-object v6, v2

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v11, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v13, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v15, v15, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    iget-boolean v10, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v10, :cond_16

    move-object/from16 v16, v0

    iget v0, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v23, v0

    goto :goto_e

    :cond_16
    move-object/from16 v16, v0

    const/16 v23, -0x1

    :goto_e
    if-eqz v10, :cond_17

    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v24, v0

    :goto_f
    move/from16 v22, v15

    goto :goto_10

    :cond_17
    const/16 v24, 0x0

    goto :goto_f

    :goto_10
    const/4 v15, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v11

    move/from16 v21, v13

    move-object v13, v14

    move-object/from16 v14, v16

    move/from16 v16, v5

    :try_start_7
    invoke-interface/range {v12 .. v24}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/BadParcelableException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_18
    invoke-static {v9}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return v26

    :catch_3
    move-exception v0

    move-object v14, v13

    :goto_11
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to schedule "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " via "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    const-string v4, "Can\'t deliver broadcast"

    move-object v6, v2

    const/16 v2, 0xd

    const/4 v7, 0x1

    move-object v1, v3

    const/16 v3, 0x1a

    move-object v5, v6

    const/4 v6, 0x1

    move-object v10, v5

    move-object v5, v4

    move-object v11, v10

    const/4 v12, 0x5

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    instance-of v1, v11, Landroid/content/pm/ResolveInfo;

    if-nez v1, :cond_19

    const-string/jumbo v0, "remote app"

    invoke-virtual {v8, v10, v12, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    goto :goto_12

    :cond_19
    iget-object v1, v8, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {v1, v10}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->enabled()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v8, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v1, v5, v10}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1a
    new-instance v1, Lcom/android/server/am/BroadcastRetryException;

    invoke-direct {v1, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1b
    move-object v10, v1

    const/4 v12, 0x5

    const-string/jumbo v0, "missing IApplicationThread"

    invoke-virtual {v8, v10, v12, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    goto :goto_12

    :cond_1c
    move-object v8, v1

    move-object v10, v2

    const/4 v1, 0x2

    invoke-virtual {v8, v10, v1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    :goto_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_13

    :cond_1d
    invoke-virtual {v10}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    move-object v1, v8

    move-object v2, v10

    goto/16 :goto_0

    :cond_1e
    :goto_13
    invoke-static {v9}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    const/16 v27, 0x1

    return v27
.end method

.method public final scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V
    .locals 23

    move-object/from16 v1, p1

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    move-object v10, v0

    goto :goto_0

    :cond_1
    move-object v10, v9

    :goto_0
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    iget-boolean v3, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v3, v4, :cond_2

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v12, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const/16 v17, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    :cond_2
    :try_start_0
    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v13, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v5, :cond_3

    iget v6, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    :goto_1
    move/from16 v21, v6

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    const/4 v6, -0x1

    goto :goto_1

    :goto_2
    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v22, v5

    goto :goto_3

    :cond_4
    move-object/from16 v22, v9

    :goto_3
    const/16 v16, 0x0

    const/16 v18, 0x1

    move/from16 v17, v0

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-interface/range {v10 .. v22}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to schedule result of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " via "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    const/16 v4, 0x1a

    const/4 v7, 0x1

    const-string v5, "Can\'t deliver broadcast"

    const/16 v3, 0xd

    const/4 v8, 0x1

    move-object v6, v5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_5
    :goto_5
    iput-object v9, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->hadResultTo:Z

    return-void
.end method

.method public final setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    const-string/jumbo v8, "setDeliveryState"

    invoke-static {v8}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v9, v9, v4

    invoke-static {v9}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v10

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v11, 0x1

    if-nez v10, :cond_6

    if-ne v6, v9, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v6, :cond_3

    if-eq v6, v11, :cond_2

    if-eq v6, v12, :cond_2

    if-eq v6, v13, :cond_2

    if-eq v6, v15, :cond_1

    if-eq v6, v14, :cond_2

    goto :goto_0

    :cond_1
    iget-object v10, v3, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    aput-wide v16, v10, v4

    goto :goto_0

    :cond_2
    iget-object v10, v3, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    aput-wide v16, v10, v4

    iget v10, v3, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    add-int/2addr v10, v11

    iput v10, v3, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    goto :goto_0

    :cond_3
    iget-object v10, v3, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    const-wide/16 v16, 0x0

    aput-wide v16, v10, v4

    :goto_0
    iget-object v10, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput v6, v10, v4

    iget-object v10, v3, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aput-object v7, v10, v4

    iget v10, v3, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    if-lt v4, v10, :cond_5

    move v15, v10

    :goto_1
    iget-object v14, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    array-length v13, v14

    if-ge v15, v13, :cond_5

    aget v13, v14, v15

    if-eq v13, v11, :cond_4

    if-eq v13, v12, :cond_4

    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x5

    if-eq v13, v14, :cond_4

    const/4 v14, 0x6

    if-eq v13, v14, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v15, v15, 0x1

    iput v15, v3, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    const/4 v13, 0x3

    goto :goto_1

    :cond_5
    :goto_2
    iget v13, v3, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    if-eq v13, v10, :cond_6

    move v10, v11

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v10, 0x0

    :goto_4
    const-string v13, "/beyondCountChanged:"

    const-string v14, "/reason:"

    const-string v15, "/state: "

    if-eqz v1, :cond_9

    const/4 v11, 0x4

    if-ne v6, v11, :cond_7

    iget-object v11, v1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v13}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " scheduled"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v13

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v11, v12, v13}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v11, v3, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    aput-wide v12, v11, v4

    goto :goto_5

    :cond_7
    const-wide/16 v4, 0x40

    if-ne v9, v11, :cond_8

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v4, v5, v11, v12}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    aput-wide v11, v4, p4

    goto :goto_5

    :cond_8
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p4

    goto :goto_5

    :cond_9
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p4

    :goto_5
    invoke-static {v9}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Delivery state of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p5

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " via "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " changed from "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v6, v5, :cond_a

    const-string v6, "BroadcastQueue"

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    invoke-static {v4}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object/from16 v11, p5

    const/4 v5, 0x1

    :goto_6
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v4, v4, p4

    if-eq v4, v5, :cond_d

    const/4 v14, 0x3

    if-eq v4, v14, :cond_d

    const/4 v14, 0x5

    if-eq v4, v14, :cond_d

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_d
    invoke-static {v11}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v20

    iget v4, v3, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    const/16 v4, 0x3e8

    :cond_e
    move/from16 v21, v4

    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    instance-of v4, v11, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_f

    const/16 v23, 0x1

    goto :goto_7

    :cond_f
    const/16 v23, 0x2

    :goto_7
    if-nez v1, :cond_10

    move/from16 v39, v5

    const/16 v24, 0x0

    goto :goto_8

    :cond_10
    iget-boolean v5, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    if-eqz v5, :cond_11

    const/16 v5, 0x14

    move/from16 v39, v5

    const/16 v24, 0x3

    goto :goto_8

    :cond_11
    iget v5, v1, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    move/from16 v39, v5

    const/16 v24, 0x1

    :goto_8
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v5, v5, p4

    iget-wide v12, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v25, v5, v12

    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v12, v7, p4

    sub-long v29, v12, v5

    if-eqz v1, :cond_c

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    if-eqz v5, :cond_12

    const/16 v31, 0x2

    goto :goto_9

    :cond_12
    const/16 v31, 0x1

    :goto_9
    if-eqz v2, :cond_13

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_a
    move-object/from16 v32, v2

    goto :goto_b

    :cond_13
    const/4 v2, 0x0

    goto :goto_a

    :goto_b
    iget-object v2, v3, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v12, 0x2

    goto :goto_c

    :cond_14
    const/4 v12, 0x1

    :goto_c
    iget-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v5, :cond_15

    or-int/lit8 v12, v12, 0x4

    :cond_15
    iget-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v5, :cond_16

    or-int/lit8 v12, v12, 0x8

    :cond_16
    iget-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v5, :cond_17

    or-int/lit8 v12, v12, 0x10

    :cond_17
    iget-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v5, :cond_18

    or-int/lit8 v12, v12, 0x20

    :cond_18
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v5, :cond_19

    or-int/lit8 v12, v12, 0x40

    :cond_19
    iget-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v5, :cond_1a

    or-int/lit16 v12, v12, 0x80

    :cond_1a
    iget-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v5, :cond_1b

    or-int/lit16 v12, v12, 0x100

    :cond_1b
    iget-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v5, :cond_1c

    or-int/lit16 v12, v12, 0x200

    :cond_1c
    iget-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-eqz v5, :cond_1d

    or-int/lit16 v12, v12, 0x400

    :cond_1d
    iget-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v5, :cond_1e

    or-int/lit16 v12, v12, 0x800

    :cond_1e
    move/from16 v34, v12

    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    move-result v5

    move/from16 v35, v5

    goto :goto_d

    :cond_1f
    const/16 v35, 0x0

    :goto_d
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v36

    if-eqz v4, :cond_20

    move-object v4, v11

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v4

    :goto_e
    move/from16 v37, v4

    goto :goto_f

    :cond_20
    move-object v4, v11

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget v4, v4, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_e

    :goto_f
    iget v4, v3, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    const-wide/16 v41, 0x0

    const/16 v19, 0x1db

    const-wide/16 v27, 0x0

    move-object/from16 v33, v2

    move/from16 v38, v4

    move/from16 v40, v5

    invoke-static/range {v19 .. v42}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIJJJILjava/lang/String;Ljava/lang/String;IIIIIIZJ)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    iput-boolean v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    :goto_10
    invoke-virtual/range {p3 .. p4}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v1, v1, p4

    const/4 v5, 0x1

    if-eq v1, v5, :cond_21

    const/4 v14, 0x3

    if-eq v1, v14, :cond_21

    goto :goto_11

    :cond_21
    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v4, v1, p4

    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v6, v1, p4

    sub-long/2addr v4, v6

    invoke-static {v11}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastProcessedEventRecord;

    if-nez v6, :cond_22

    new-instance v6, Lcom/android/server/am/BroadcastProcessedEventRecord;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v12, -0x8000000000000000L

    iput-wide v12, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->calculateTypesForLogging()[I

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mBroadcastTypes:[I

    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mIntentAction:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverProcessName:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v7

    iput v7, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverUid:I

    iget v7, v3, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput v7, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mSenderUid:I

    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-wide v11, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    add-long/2addr v11, v4

    iput-wide v11, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    iget-wide v11, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    iget v1, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mNumberOfReceivers:I

    const/16 v18, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Lcom/android/server/am/BroadcastProcessedEventRecord;->mNumberOfReceivers:I

    :cond_23
    :goto_11
    iget v1, v3, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_25

    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_12

    :cond_24
    const/4 v2, 0x0

    :cond_25
    :goto_12
    if-eqz v10, :cond_2b

    iget v1, v3, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_26

    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    :cond_26
    iget-boolean v1, v3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v1, :cond_27

    iget-boolean v1, v3, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_2b

    :cond_27
    move v11, v2

    :goto_13
    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_2a

    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v1, v1, v11

    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v1

    move/from16 v4, p4

    if-eqz v1, :cond_29

    if-ne v11, v4, :cond_28

    goto :goto_14

    :cond_28
    const/4 v5, 0x1

    goto :goto_15

    :cond_29
    :goto_14
    iget-object v1, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    if-eqz v1, :cond_28

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    :goto_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_2b
    invoke-static {v8}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_0
    return-void
.end method

.method public final shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .locals 5

    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    iget v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    if-ge v3, v4, :cond_1

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    goto :goto_1

    :cond_2
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    return v2

    :cond_4
    :goto_2
    return v1
.end method

.method public final shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v3, v3, v2

    move-object/from16 v4, p1

    iget-object v4, v4, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "already terminal state"

    return-object v0

    :cond_0
    if-eqz v4, :cond_1

    iget-boolean v3, v4, Lcom/android/server/am/ProcessRecord;->mInFullBackup:Z

    if-eqz v3, :cond_1

    const-string/jumbo v0, "isInFullBackup"

    return-object v0

    :cond_1
    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v0, "getReceiverIntent"

    return-object v0

    :cond_3
    instance-of v3, v2, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_4

    move-object v6, v2

    check-cast v6, Lcom/android/server/am/BroadcastFilter;

    iget-object v6, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v6, v6, Lcom/android/server/am/ReceiverList;->pid:I

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eq v6, v7, :cond_4

    const-string v0, "BroadcastFilter for mismatched PID"

    return-object v0

    :cond_4
    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    const-string v6, " is skipped in RestrictedPackage to "

    const-string/jumbo v8, "intent:"

    const-string v9, "BroadcastQueue"

    if-eqz v3, :cond_8

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_5

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v10, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    move-object v13, v0

    move v14, v5

    move/from16 v21, v10

    goto :goto_0

    :cond_5
    move v14, v0

    move/from16 v21, v5

    move-object v3, v7

    move-object v13, v3

    :goto_0
    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_c

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_1

    :cond_6
    move-object/from16 v20, v7

    :goto_1
    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "alarm"

    :goto_2
    move-object v15, v0

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "broadcast"

    goto :goto_2

    :goto_3
    sget-object v11, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    new-instance v12, Landroid/content/ComponentName;

    iget-object v0, v2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v12, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v3, v2, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    iget-object v5, v1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v5}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/16 v19, 0x0

    const/16 v18, 0x1

    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v22, v4

    invoke-virtual/range {v11 .. v22}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "To dynamic Broadcast receiver from Restricted UID"

    return-object v0

    :cond_8
    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_9

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget v10, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v11, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    move-object v14, v3

    move v15, v10

    move/from16 v22, v11

    goto :goto_4

    :cond_9
    move v15, v3

    move/from16 v22, v5

    move-object v4, v7

    move-object v14, v4

    :goto_4
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v3, v10}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_a

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    :cond_a
    move/from16 v23, v5

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_5

    :cond_b
    move-object/from16 v21, v7

    :goto_5
    new-instance v13, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sget-object v12, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    const-string/jumbo v16, "broadcast"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v23}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "To manifest broadcast receiver from Restricted UID"

    return-object v0

    :cond_c
    return-object v7
.end method

.method public final testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-string/jumbo v3, "Test "

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLastTestFailureTime:J

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long p1, v4, v6

    if-lez p1, :cond_0

    iput-wide v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLastTestFailureTime:J

    const-string p0, " failed due to "

    invoke-static {v3, p2, p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return v0

    :cond_1
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " passed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    if-ltz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result v2

    iget-boolean v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    const/4 v4, 0x0

    if-eq v3, v2, :cond_4

    iput-boolean v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v2, :cond_3

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCountRealDeferUntilActive:I

    iget v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    if-eq v1, v2, :cond_2

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v1, v2, v4}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x17

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v1, v2, v4}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    :cond_2
    :goto_0
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v1, v0, v4}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v0, v1, v4}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_d

    if-eqz v3, :cond_c

    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gtz v0, :cond_8

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v4

    :goto_4
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-ltz v1, :cond_a

    :cond_9
    move v4, v2

    :cond_a
    if-eqz v0, :cond_b

    if-nez v4, :cond_e

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_5

    :cond_c
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_5

    :cond_d
    if-eqz v3, :cond_e

    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_e
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    :cond_f
    :goto_6
    return-void
.end method

.method public final updateRunningList()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunningListLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateRunningListLocked()V
    .locals 34

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v2, v2, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v3, v3

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-nez v3, :cond_2

    return-void

    :cond_2
    const-string/jumbo v2, "updateRunningList"

    invoke-static {v2}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    move v9, v1

    :goto_1
    const/4 v10, 0x3

    if-eqz v7, :cond_6

    if-lez v3, :cond_6

    iget-object v11, v7, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v14

    if-nez v14, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result v14

    iget-object v15, v0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v15, v15, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    if-lt v14, v15, :cond_5

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;

    move-result-object v14

    if-eqz v14, :cond_4

    iget-boolean v14, v14, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    goto :goto_2

    :cond_4
    move v14, v1

    :goto_2
    if-nez v14, :cond_5

    goto :goto_3

    :cond_5
    cmp-long v14, v12, v4

    if-lez v14, :cond_7

    if-eqz v6, :cond_7

    iget-object v1, v0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8, v12, v13}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_6
    move v8, v2

    goto/16 :goto_16

    :cond_7
    iget-object v12, v0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    iget-boolean v13, v7, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v13, :cond_8

    iput-boolean v1, v7, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    new-instance v13, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v7, v13, v12, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    :cond_8
    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v12

    if-nez v12, :cond_9

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v13, v7, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget v14, v7, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {v12, v14, v13}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v13, v14, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v13

    invoke-virtual {v0, v12}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    invoke-virtual {v7, v12, v13, v14}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    :cond_9
    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v12

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_a

    iget-object v15, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v7, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v15, v10, v1}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v1, :cond_b

    iput-object v7, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iput-wide v13, v7, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueueImpl;->isPendingColdStartValid()Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_3
    move-object v7, v11

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueueImpl;->clearInvalidPendingColdStart()V

    iput-object v7, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iput-wide v13, v7, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    :cond_d
    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v15

    move-wide/from16 v16, v13

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    aput-object v7, v13, v15

    iget v13, v7, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v13

    if-nez v13, :cond_f

    sget-object v13, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter$RunningBroadcastFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;

    iget v14, v7, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v10, v13, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    monitor-enter v10

    :try_start_0
    iget-object v1, v13, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v13, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_e
    :goto_5
    monitor-exit v10

    goto :goto_7

    :goto_6
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_f
    :goto_7
    iget-object v1, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v1, v7}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const-string v1, "BroadcastQueue.mRunning["

    const-string/jumbo v10, "]"

    invoke-static {v15, v1, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    iget v1, v7, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    if-lez v1, :cond_10

    goto :goto_8

    :cond_10
    iget v1, v7, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    if-lez v1, :cond_11

    goto :goto_8

    :cond_11
    iget v1, v7, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    if-lez v1, :cond_12

    :goto_8
    move v1, v8

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, v7, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v7}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_13
    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    if-eqz v1, :cond_14

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    goto :goto_a

    :cond_14
    iget-object v1, v7, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " starting"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v13

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v1, v10, v13}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :goto_a
    if-eqz v12, :cond_15

    iget-boolean v1, v7, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    or-int/2addr v1, v9

    :try_start_1
    invoke-virtual {v0, v7}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v9
    :try_end_1
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_1 .. :try_end_1} :catch_0

    move v10, v3

    move-wide/from16 v19, v4

    move v4, v8

    :goto_b
    const/4 v3, 0x0

    move v8, v2

    goto/16 :goto_14

    :catch_0
    invoke-virtual {v0, v7}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v10, v3

    move-wide/from16 v19, v4

    move v4, v8

    move v9, v4

    goto :goto_b

    :cond_15
    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v1

    const-string/jumbo v10, "isActive"

    invoke-static {v1, v10}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    iput-boolean v8, v7, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v10

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lcom/android/server/am/BroadcastFilter;

    const/4 v14, 0x2

    if-eqz v13, :cond_16

    const/4 v13, 0x0

    iput-object v13, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const-string v1, "BroadcastFilter for cold app"

    invoke-virtual {v0, v7, v14, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    :goto_c
    move v10, v3

    move-wide/from16 v19, v4

    move v4, v8

    move/from16 v17, v4

    const/4 v3, 0x0

    move v8, v2

    goto/16 :goto_13

    :cond_16
    const/4 v13, 0x0

    invoke-virtual {v0, v7, v1, v10}, Lcom/android/server/am/BroadcastQueueImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17

    iput-object v13, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v7, v14, v10}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    goto :goto_c

    :cond_17
    move-object v10, v12

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v15

    iput-boolean v15, v7, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v15

    iput-boolean v15, v7, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getFlags()I

    move-result v15

    or-int/lit8 v23, v15, 0x4

    new-instance v24, Lcom/android/server/am/HostingRecord;

    const-string/jumbo v25, "broadcast"

    iget-object v15, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v15, :cond_18

    const-string/jumbo v15, "alarm"

    :goto_d
    move-object/from16 v33, v15

    goto :goto_e

    :cond_18
    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v15, :cond_19

    const-string/jumbo v15, "push_message"

    goto :goto_d

    :cond_19
    iget-boolean v15, v1, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v15, :cond_1a

    const-string/jumbo v15, "push_message_over_quota"

    goto :goto_d

    :cond_1a
    const-string/jumbo v15, "unknown"

    goto :goto_d

    :goto_e
    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v24 .. v33}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v19

    cmp-long v10, v19, v16

    if-lez v10, :cond_1b

    move/from16 v25, v8

    goto :goto_f

    :cond_1b
    const/16 v25, 0x0

    :goto_f
    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v15, 0x2000000

    and-int/2addr v10, v15

    if-eqz v10, :cond_1c

    move/from16 v26, v8

    goto :goto_10

    :cond_1c
    const/16 v26, 0x0

    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v14

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-static {v10}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result v10

    if-eqz v10, :cond_1d

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Scheduling "

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to cold "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "BroadcastQueue"

    invoke-static {v10, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v8, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v7, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    const/16 v22, 0x1

    const/16 v27, 0x0

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v27}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_1e

    const/4 v13, 0x0

    iput-object v13, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x5

    const-string/jumbo v8, "startProcessLocked failed"

    invoke-virtual {v0, v7, v1, v8}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    move v8, v2

    move v10, v3

    move-wide/from16 v19, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v17, 0x1

    goto :goto_13

    :cond_1e
    move v8, v2

    move v10, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    iget-object v3, v7, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v12}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v12

    iget-boolean v1, v1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    iget-object v13, v2, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v13

    move/from16 v18, v1

    :try_start_2
    iget-boolean v1, v2, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_1f

    monitor-exit v13

    move-wide/from16 v19, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_15

    :cond_1f
    new-instance v1, Landroid/app/ApplicationStartInfo;

    move-wide/from16 v19, v4

    invoke-virtual {v2}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    invoke-static {v1, v3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    invoke-virtual {v1, v3, v14, v15}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    if-eqz v18, :cond_20

    invoke-virtual {v1, v3}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    goto :goto_11

    :cond_20
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    :goto_11
    invoke-virtual {v1, v12}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    invoke-virtual {v2, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_12
    move/from16 v17, v3

    :goto_13
    move v1, v9

    move/from16 v9, v17

    :goto_14
    if-eqz v9, :cond_21

    invoke-virtual {v0, v7}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_21
    add-int/lit8 v2, v10, -0x1

    move v9, v1

    move v1, v3

    move-object v7, v11

    move v3, v2

    move v2, v8

    move v8, v4

    move-wide/from16 v4, v19

    goto/16 :goto_1

    :goto_15
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_16
    if-eqz v9, :cond_22

    iget-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_22
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueueImpl;->checkPendingColdStartValidityLocked()V

    iget-object v1, v0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_23
    invoke-static {v8}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final waitFor(Ljava/util/function/BooleanSupplier;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
