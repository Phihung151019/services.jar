.class public Lcom/android/server/am/AnrHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CONSECUTIVE_ANR_TIME_MS:J

.field public static final EXPIRED_REPORT_TIME_MS:J

.field public static final SELF_ONLY_AFTER_BOOT_MS:J

.field public static final sDefaultThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

.field public static final sMainProcessDumpThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;


# instance fields
.field public final mAnrRecords:Ljava/util/ArrayList;

.field public final mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

.field public mLastAnrTimeMs:J

.field public mProcessingPid:I

.field public final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTempDumpedPids:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AnrHelper;->SELF_ONLY_AFTER_BOOT_MS:J

    new-instance v0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/android/server/am/AnrHelper;->sMainProcessDumpThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 10

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0xa

    const/4 v1, 0x1

    sget-object v7, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v6, v5

    const-wide/16 v4, 0xa

    const/4 v2, 0x2

    sget-object v8, Lcom/android/server/am/AnrHelper;->sMainProcessDumpThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v1, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/AnrHelper;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    iput-object p1, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Z)V

    return-void
.end method

.method public final appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Z)V
    .locals 14

    move-object/from16 v8, p7

    const-string/jumbo v0, "Skip ANR being predumped, pid="

    const-string/jumbo v1, "Skip duplicated ANR, pid="

    const-string/jumbo v2, "Skip zero pid ANR, process="

    :try_start_0
    iget-object v3, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingStarted()V

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v4, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAnrRecordLockStarted()V

    iget-object v11, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAnrRecordLockEnded()V

    if-nez v3, :cond_1

    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    iget-object p0, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_1
    :try_start_2
    iget v2, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    if-ne v2, v3, :cond_2

    const-string p0, "ActivityManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "ActivityManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v12, 0x1

    sub-int/2addr v0, v12

    :goto_1
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AnrHelper$AnrRecord;

    iget v1, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    if-ne v1, v3, :cond_4

    const-string p0, "ActivityManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "Skip queued ANR, pid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    iget-object v0, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->earlyDumpRequestSubmittedWithSize(I)V

    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mEarlyDumpExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v3, v8}, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    iget-object v0, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v1, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrRecordPlacingOnQueueWithSize(I)V

    iget-object v13, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/AnrHelper$AnrRecord;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/AnrHelper$AnrRecord;-><init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;ZLjava/util/concurrent/Future;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    :try_start_3
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_6

    new-instance v0, Lcom/android/server/am/AnrHelper$1;

    invoke-direct {v0, p0, v4, p1}, Lcom/android/server/am/AnrHelper$1;-><init>(Lcom/android/server/am/AnrHelper;Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/am/AnrHelper$AnrConsumerThread;

    invoke-direct {p1, p0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;-><init>(Lcom/android/server/am/AnrHelper;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :goto_3
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    iget-object p1, v8, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->appNotRespondingEnded()V

    throw p0
.end method
