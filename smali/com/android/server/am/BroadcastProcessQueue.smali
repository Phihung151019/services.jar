.class public final Lcom/android/server/am/BroadcastProcessQueue;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public app:Lcom/android/server/am/ProcessRecord;

.field public final constants:Lcom/android/server/am/BroadcastConstants;

.field public lastCpuDelayTime:J

.field public lastProcessState:I

.field public mActive:Lcom/android/server/am/BroadcastRecord;

.field public mActiveAssumedDeliveryCountSinceIdle:I

.field public mActiveCountConsecutiveNormal:I

.field public mActiveCountConsecutiveUrgent:I

.field public mActiveCountSinceIdle:I

.field public mActiveFirstLaunch:Z

.field public mActiveIndex:I

.field public mActiveReEnqueued:Z

.field public mActiveViaColdStart:Z

.field public mActiveWasStopped:Z

.field public mCachedToShortString:Ljava/lang/String;

.field public mCachedToString:Ljava/lang/String;

.field public mCountAlarm:I

.field public mCountDeferred:I

.field public mCountEnqueued:I

.field public mCountForeground:I

.field public mCountForegroundDeferred:I

.field public mCountInstrumented:I

.field public mCountInteractive:I

.field public mCountMARsTargetBroadcast:I

.field public mCountManifest:I

.field public mCountOrdered:I

.field public mCountPrioritizeEarliestRequests:I

.field public mCountPrioritized:I

.field public mCountPrioritizedDeferred:I

.field public mCountRealDeferUntilActive:I

.field public mCountResultTo:I

.field public mCurReceiversIncremented:Z

.field public mForcedDelayedDurationMs:J

.field public mLastDeferredStates:Z

.field public final mOutgoingBroadcasts:Ljava/util/ArrayList;

.field public final mPending:Ljava/util/ArrayDeque;

.field public final mPendingOffload:Ljava/util/ArrayDeque;

.field public final mPendingUrgent:Ljava/util/ArrayDeque;

.field public mProcessFreezable:Z

.field public mProcessFrozenByMARs:Z

.field public mProcessInstrumented:Z

.field public mProcessPersistent:Z

.field public mProcessStartInitiatedTimestampMillis:J

.field public mRunnableAt:J

.field public mRunnableAtInvalidated:Z

.field public mRunnableAtReason:I

.field public mTimeoutScheduled:Z

.field public mUidForeground:Z

.field public final processName:Ljava/lang/String;

.field public processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

.field public runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

.field public runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

.field public runningOomAdjusted:Z

.field public runningTraceTrackName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    return-void
.end method

.method public static assertHealthLocked(Ljava/util/ArrayDeque;)V
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v0, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x927c0

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string/jumbo v1, "waitingTime"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 6

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_3

    iput-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p1, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_1
    if-ne v2, p0, :cond_2

    return-object p1

    :cond_2
    return-object p0

    :cond_3
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :cond_4
    iput-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p1, v3, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    return-object p0
.end method

.method public static isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isQueueEmpty(Ljava/util/ArrayDeque;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "CONTAINS_RESTRICTED_BY_MARS"

    return-object p0

    :pswitch_2
    const-string p0, "FROZEN_BY_MARS"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "PERCEPTIBLE_APP"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "TOP_PROCESS"

    return-object p0

    :pswitch_5
    const-string p0, "CORE_UID"

    return-object p0

    :pswitch_6
    const-string p0, "FOREGROUND"

    return-object p0

    :pswitch_7
    const-string p0, "CONTAINS_MANIFEST"

    return-object p0

    :pswitch_8
    const-string p0, "CONTAINS_INSTRUMENTED"

    return-object p0

    :pswitch_9
    const-string p0, "CONTAINS_RESULT_TO"

    return-object p0

    :pswitch_a
    const-string p0, "CONTAINS_INTERACTIVE"

    return-object p0

    :pswitch_b
    const-string p0, "CONTAINS_PRIORITIZED"

    return-object p0

    :pswitch_c
    const-string p0, "CONTAINS_ALARM"

    return-object p0

    :pswitch_d
    const-string p0, "CONTAINS_ORDERED"

    return-object p0

    :pswitch_e
    const-string p0, "CONTAINS_FOREGROUND"

    return-object p0

    :pswitch_f
    const-string p0, "INFINITE_DEFER"

    return-object p0

    :pswitch_10
    const-string p0, "FORCE_DELAYED"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "PERSISTENT"

    return-object p0

    :pswitch_12
    const-string p0, "INSTRUMENTED"

    return-object p0

    :pswitch_13
    const-string p0, "BLOCKED"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "MAX_PENDING"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "NORMAL"

    return-object p0

    :pswitch_16
    const-string p0, "CACHED"

    return-object p0

    :pswitch_17
    const-string p0, "EMPTY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 2

    if-ne p0, p1, :cond_0

    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_2

    iput-object v0, v1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    return-object p0
.end method


# virtual methods
.method public addPrioritizeEarliestRequest()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    return v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 p0, 0x0

    return p0
.end method

.method public final describeStateLocked(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "runnable at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "not runnable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, " because "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    iget-wide v0, p5, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    invoke-static {v0, v1, p2, p3, p4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const/16 v0, 0x20

    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {p5}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {p4, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p5, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v1, v1, p6

    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-string v1, " at "

    invoke-virtual {p4, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p5, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v1, v1, p6

    invoke-static {v1, v2, p2, p3, p4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    const-string p2, " for registered "

    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast p1, Landroid/content/pm/ResolveInfo;

    const-string p2, " for manifest "

    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p1, p5, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget p1, p1, p6

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    const-string p2, "    blocked until "

    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p1, ", currently at "

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p5, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p1, " of "

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_3
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/16 p1, 0x16

    const-string p2, "    MARs target : "

    if-ne p0, p1, :cond_4

    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p5, p6}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result p0

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    return-void

    :cond_4
    const/16 p1, 0x17

    if-ne p0, p1, :cond_6

    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p5, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez p0, :cond_5

    invoke-virtual {p5, p6}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_6
    return-void
.end method

.method public final forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;->test(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final getActive()Lcom/android/server/am/BroadcastRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p0, v0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    return-object v0
.end method

.method public final getActiveIndex()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    return p0
.end method

.method public final getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    return-object p0

    :cond_0
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public final getRunnableAt()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    return-wide v0
.end method

.method public final isActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDeferredUntilActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    :cond_0
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isProcessWarm()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRunnable()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final makeActiveNextPending()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iput-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v5, v3, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    iget v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    iget v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    invoke-virtual {v1, v4}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    iput-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    iput-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public final markDeferredByMARs(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 1

    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->mWasDeferredByMARs:Ljava/util/ArrayList;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/16 v0, 0x17

    if-ne p0, v0, :cond_1

    iget-boolean p0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez p0, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->mWasDeferredByMARs:Ljava/util/ArrayList;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    :cond_3
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    :cond_5
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v0, :cond_7

    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    :cond_8
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    :cond_9
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    :cond_a
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    :cond_b
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    :cond_c
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    :cond_d
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountRealDeferUntilActive:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountRealDeferUntilActive:I

    :cond_e
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountMARsTargetBroadcast:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountMARsTargetBroadcast:I

    :cond_f
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    return-void
.end method

.method public final onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    :cond_3
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    :cond_5
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v0, :cond_7

    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    :cond_8
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    :cond_9
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    :cond_a
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    :cond_b
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    :cond_c
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    :cond_d
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountRealDeferUntilActive:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountRealDeferUntilActive:I

    :cond_e
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountMARsTargetBroadcast:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountMARsTargetBroadcast:I

    :cond_f
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    return-void
.end method

.method public peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    iget-object p0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final queueForNextBroadcast()Ljava/util/ArrayDeque;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v4, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object p0

    return-object p0
.end method

.method public final queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;
    .locals 4

    invoke-static {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-static {p2}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    if-gtz p0, :cond_2

    if-lt p3, p4, :cond_4

    :cond_2
    iget-wide p3, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iget-wide v2, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long p0, p3, v2

    if-gtz p0, :cond_4

    iget p0, v1, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object p3, v1, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget p3, p3, v0

    if-ge p0, p3, :cond_3

    return-object p1

    :cond_3
    return-object p2

    :cond_4
    return-object p1
.end method

.method public final reEnqueueActiveBroadcast()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring reEnqueueActiveBroadcast; no active broadcast for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v1

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput v1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public final setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eq v2, p2, :cond_0

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    if-eq v2, p3, :cond_1

    iput-boolean p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    move p3, v0

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    or-int/2addr p2, p3

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz p3, :cond_2

    move p3, v0

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    iget-boolean v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eq v2, p3, :cond_3

    iput-boolean p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    move p3, v0

    goto :goto_3

    :cond_3
    move p3, v1

    :goto_3
    or-int/2addr p2, p3

    iget-boolean p1, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eq p3, p1, :cond_4

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    or-int p0, p2, v0

    return p0

    :cond_5
    iget-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    move p1, v0

    goto :goto_5

    :cond_6
    move p1, v1

    :goto_5
    iget-boolean p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    if-eqz p2, :cond_7

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    move p2, v0

    goto :goto_6

    :cond_7
    move p2, v1

    :goto_6
    or-int/2addr p1, p2

    iget-boolean p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz p2, :cond_8

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    move p2, v0

    goto :goto_7

    :cond_8
    move p2, v1

    :goto_7
    or-int/2addr p1, p2

    iget-boolean p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz p2, :cond_9

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    goto :goto_8

    :cond_9
    move v0, v1

    :goto_8
    or-int p0, p1, v0

    return p0
.end method

.method public shouldBeDeferred()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    :cond_0
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_2

    const/16 v1, 0x16

    if-eq p0, v1, :cond_2

    const/16 v1, 0x17

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "?"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BroadcastProcessQueue{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    return-object p0
.end method

.method public final traceProcessRunningBegin()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final updateRunnableAt()V
    .locals 14

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    if-eqz v1, :cond_1d

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget v7, v7, v1

    if-ge v6, v7, :cond_2

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return-void

    :cond_2
    iget-wide v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    iget-object v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    if-lez v8, :cond_3

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_3
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    const/16 v8, 0xa

    if-le v6, v7, :cond_4

    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_4
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    if-lez v6, :cond_5

    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_5
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    if-lez v6, :cond_6

    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_6
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz v6, :cond_7

    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_7
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz v6, :cond_8

    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x12

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x2

    if-eqz v6, :cond_9

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-ne v6, v7, :cond_9

    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_9
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz v6, :cond_a

    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_a
    const/16 v6, 0x3e8

    const/16 v10, 0x13

    iget v11, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    if-ne v11, v6, :cond_b

    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_b
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    if-lez v6, :cond_c

    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_c
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    if-lez v6, :cond_d

    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_d
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    iget v12, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    const/16 v13, 0xd

    if-le v6, v12, :cond_e

    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v13, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_e
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    if-lez v6, :cond_f

    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_f
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    const/16 v12, 0xf

    if-eqz v6, :cond_16

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    const/4 v7, 0x1

    if-nez v6, :cond_11

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_1

    :cond_10
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_11
    :goto_1
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    if-ne v1, v6, :cond_12

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountRealDeferUntilActive:I

    if-eq v0, v1, :cond_1b

    const/16 v0, 0x17

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_2

    :cond_13
    iget-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_14

    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v13, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_2

    :cond_14
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_15

    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v12, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_2

    :cond_15
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_2

    :cond_16
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFrozenByMARs:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountMARsTargetBroadcast:I

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    if-ne v0, v1, :cond_17

    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x16

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_2

    :cond_17
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    if-lez v0, :cond_18

    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v12, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_2

    :cond_18
    invoke-static {v11}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_2

    :cond_19
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_1a

    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_2

    :cond_1a
    iget-wide v0, v9, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    :cond_1b
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget v1, v9, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    if-lt v0, v1, :cond_1c

    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    :cond_1c
    :goto_3
    return-void

    :cond_1d
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return-void
.end method
