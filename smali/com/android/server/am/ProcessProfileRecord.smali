.class public final Lcom/android/server/am/ProcessProfileRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field public final mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

.field public mCurRawAdj:I

.field public final mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mInitialIdlePssOrRss:J

.field public mLastCachedPss:J

.field public mLastCachedRss:J

.field public mLastCachedSwapPss:J

.field public final mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mLastLowMemory:J

.field public mLastMemInfo:Landroid/os/Debug$MemoryInfo;

.field public mLastMemInfoTime:J

.field public mLastPss:J

.field public mLastPssTime:J

.field public mLastRequestedGc:J

.field public mLastRss:J

.field public mLastStateTime:J

.field public mLastSwapPss:J

.field public mNextPssTime:J

.field public mPendingUiClean:Z

.field public mPid:I

.field public final mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

.field public final mProfilerLock:Ljava/lang/Object;

.field public mPssProcState:I

.field public mPssStatType:I

.field public mReportLowMemory:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSetAdj:I

.field public mSetProcState:I

.field public mThread:Lcom/android/server/am/ApplicationThreadDeferred;

.field public mTrimMemoryLevel:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final abortNextPssTime()V
    .locals 1

    const/4 v0, -0x1

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    return-void
.end method

.method public final addHostingComponentType(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final addPss(JJJZIJ)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v13, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/app/procstats/ProcessState;->addPss(JJJZIJLandroid/util/ArrayMap;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final clearHostingComponentType(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final reportExcessiveCpu()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
