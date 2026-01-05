.class public final Lcom/android/server/am/AppProfiler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mAllowLowerMemLevel:Z

.field public mAppAgentMap:Ljava/util/Map;

.field public final mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

.field public final mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

.field public mChimera:Lcom/android/server/chimera/ChimeraManagerService;

.field public mFullPssOrRssPending:Z

.field public final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mLastMemUsageReportTime:J

.field public mLastMemoryLevel:I

.field public mLastNumProcesses:I

.field public volatile mLastWriteTime:J

.field public final mLowMemDetector:Lcom/android/server/am/LowMemDetector;

.field public mLowRamStartTime:J

.field public mMemFactorOverride:I

.field public mMemWatchDumpPid:I

.field public mMemWatchDumpProcName:Ljava/lang/String;

.field public mMemWatchDumpUid:I

.field public mMemWatchDumpUri:Landroid/net/Uri;

.field public mMemWatchIsUserInitiated:Z

.field public final mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

.field public final mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

.field public final mPendingPssOrRssProfiles:Ljava/util/ArrayList;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

.field public final mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mProcessCpuThread:Lcom/android/server/am/AppProfiler$ProcessCpuThread;

.field public final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public final mProcessesToGc:Ljava/util/ArrayList;

.field public final mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

.field public mProfileType:I

.field public final mProfilerLock:Ljava/lang/Object;

.field public volatile mPssDeferralTime:J

.field public final mPssDelayConfigListener:Lcom/android/server/am/AppProfiler$1;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public volatile mTestPssOrRssMode:Z


# direct methods
.method public static -$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V
    .locals 32

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iput-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_16

    :cond_0
    move-object v2, v4

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v18, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    :try_start_1
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v6, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v5

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-nez v1, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    move v6, v3

    move-wide/from16 v7, v18

    :goto_1
    if-ge v6, v1, :cond_2

    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v9

    :try_start_2
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v11, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_1

    monitor-exit v9

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v9, v4, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v9

    add-long/2addr v7, v9

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :goto_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    move-wide/from16 v29, v7

    goto :goto_4

    :cond_3
    move-wide/from16 v29, v18

    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v5, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v21

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v23

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v25

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v27

    const-wide/16 v1, 0x400

    mul-long v6, v21, v1

    mul-long v8, v23, v1

    mul-long v10, v25, v1

    mul-long v12, v27, v1

    mul-long v14, v29, v1

    invoke-static/range {v6 .. v15}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v30}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    monitor-exit v5

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_4
    :goto_5
    const/4 v1, 0x3

    new-array v1, v1, [J

    move v2, v3

    :goto_6
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_6

    iget-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-nez v1, :cond_5

    goto :goto_7

    :cond_5
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Collected pss of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processes in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v5

    return-void

    :catchall_4
    move-exception v0

    goto/16 :goto_15

    :cond_6
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessProfileRecord;

    move v7, v2

    iget v2, v6, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    iget v11, v6, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    iget-wide v8, v6, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v10, v6, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v10, :cond_7

    iget v10, v6, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    if-ne v2, v10, :cond_7

    const-wide/16 v14, 0x3e8

    add-long/2addr v14, v8

    cmp-long v10, v14, v12

    if-gez v10, :cond_7

    iget v10, v6, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    goto :goto_8

    :cond_7
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    move v10, v3

    move-object v6, v4

    :goto_8
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v6, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v5, v6, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v15, 0x1

    move/from16 v20, v3

    if-eqz v14, :cond_a

    iget-boolean v3, v14, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    iget-boolean v4, v14, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v4, :cond_8

    move/from16 v3, v20

    goto :goto_9

    :cond_8
    iput-boolean v15, v14, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    :goto_9
    if-nez v3, :cond_9

    goto :goto_b

    :cond_9
    :goto_a
    const/4 v3, 0x0

    goto :goto_d

    :cond_a
    :goto_b
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    monitor-enter v5

    :try_start_7
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_b

    move v3, v15

    goto :goto_c

    :cond_b
    move/from16 v3, v20

    :goto_c
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-eqz v3, :cond_c

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    invoke-static {v10, v1, v3}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v4

    goto :goto_e

    :goto_d
    move-wide/from16 v4, v18

    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    iget-object v14, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v14

    cmp-long v23, v4, v18

    if-eqz v23, :cond_10

    :try_start_8
    iget-object v3, v6, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v3, :cond_f

    iget v3, v6, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    if-ne v3, v2, :cond_f

    iget v3, v6, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    if-ne v3, v10, :cond_f

    move-object v3, v1

    iget-wide v0, v6, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_e

    add-int/lit8 v24, v7, 0x1

    iget-object v0, v6, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget v1, v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v1, :cond_d

    iget v7, v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iget-object v8, v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aput v7, v8, v1

    iget-object v8, v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v9, v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v9, v8, v1

    iput v7, v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    :cond_d
    move-object v0, v3

    move-wide v3, v4

    move-object v1, v6

    aget-wide v5, v0, v20

    aget-wide v7, v0, v15

    const/4 v9, 0x2

    aget-wide v25, v0, v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    sub-long v12, v21, v12

    move-object v9, v14

    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v22, v0

    move-object/from16 v23, v9

    move/from16 v31, v10

    move-wide/from16 v9, v25

    const/16 v21, 0x0

    move-object/from16 v0, p0

    :try_start_a
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/AppProfiler;->recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V

    move/from16 v7, v24

    goto :goto_11

    :catchall_5
    move-exception v0

    goto/16 :goto_13

    :catchall_6
    move-exception v0

    move-object/from16 v23, v9

    goto/16 :goto_13

    :catchall_7
    move-exception v0

    move-object/from16 v23, v14

    goto/16 :goto_13

    :cond_e
    move-object/from16 v22, v3

    :goto_f
    move-wide v3, v4

    move-object v1, v6

    move/from16 v31, v10

    move-object/from16 v23, v14

    const/16 v21, 0x0

    goto :goto_10

    :cond_f
    move-object/from16 v22, v1

    goto :goto_f

    :cond_10
    move-object/from16 v22, v1

    move-object/from16 v21, v3

    move-wide v3, v4

    move-object v1, v6

    move/from16 v31, v10

    move-object/from16 v23, v14

    :goto_10
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    :goto_11
    monitor-exit v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const-wide/32 v5, 0x80000

    cmp-long v0, v3, v5

    if-lez v0, :cond_11

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_11

    iget v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    if-ne v0, v2, :cond_11

    iget v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    move/from16 v10, v31

    if-ne v0, v10, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GL mtrack="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    new-instance v2, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v2}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v10, v2}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", process="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    invoke-static {v2, v10, v1, v0}, Landroid/util/PerfLog;->e(IIILjava/lang/String;)V

    :cond_11
    :goto_12
    move v2, v7

    goto :goto_14

    :goto_13
    :try_start_b
    monitor-exit v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    :catchall_8
    move-exception v0

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v0

    :cond_12
    move-object/from16 v22, v1

    move/from16 v20, v3

    move-object/from16 v21, v4

    goto :goto_12

    :goto_14
    move-object/from16 v0, p0

    move/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v1, v22

    goto/16 :goto_6

    :goto_15
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :goto_16
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mcollectRssInBackground(Lcom/android/server/am/AppProfiler;)V
    .locals 37

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    iput-boolean v12, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_0
    move-object v2, v13

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v4, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-nez v1, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    move v4, v12

    const-wide/16 v5, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v7

    :try_start_2
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    check-cast v8, Landroid/util/SparseArray;

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_1

    monitor-exit v7

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v7, v13}, Landroid/os/Debug;->getRss(I[J)J

    move-result-wide v7

    add-long/2addr v5, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    move-wide/from16 v25, v5

    goto :goto_4

    :cond_3
    const-wide/16 v25, 0x0

    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v17

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v19

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v21

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v23

    const-wide/16 v1, 0x400

    mul-long v27, v17, v1

    mul-long v29, v19, v1

    mul-long v31, v21, v1

    mul-long v33, v23, v1

    mul-long v35, v25, v1

    invoke-static/range {v27 .. v36}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v26}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    monitor-exit v3

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_4
    :goto_5
    move v1, v12

    :goto_6
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_6

    iget-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-nez v3, :cond_5

    goto :goto_7

    :cond_5
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collected rss of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " processes in "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v10

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2

    return-void

    :catchall_4
    move-exception v0

    move-object v4, v2

    goto/16 :goto_10

    :cond_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v4, v2

    :try_start_7
    iget v2, v3, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    iget v5, v3, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    iget-wide v6, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v12, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v12, :cond_7

    iget v12, v3, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    if-ne v2, v12, :cond_7

    const-wide/16 v17, 0x3e8

    add-long v17, v6, v17

    cmp-long v8, v17, v8

    if-gez v8, :cond_7

    iget v8, v3, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    goto :goto_8

    :cond_7
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    move-object v3, v13

    const/4 v8, 0x0

    :goto_8
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v3, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    iget-object v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v12, 0x1

    const-wide/16 v19, 0x0

    if-eqz v9, :cond_9

    iget-boolean v14, v9, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    iget-boolean v15, v9, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v15, :cond_8

    const/4 v14, 0x0

    goto :goto_9

    :cond_8
    iput-boolean v12, v9, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    :goto_9
    if-nez v14, :cond_c

    :cond_9
    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v9, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    monitor-enter v14

    :try_start_8
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mActiveCameraUids:Landroid/util/IntArray;

    invoke-virtual {v9, v4}, Landroid/util/IntArray;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_a

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    :goto_a
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-nez v12, :cond_c

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-eqz v4, :cond_b

    goto :goto_b

    :cond_b
    invoke-static {v8, v13}, Landroid/os/Debug;->getRss(I[J)J

    move-result-wide v14

    goto :goto_c

    :cond_c
    :goto_b
    move-wide/from16 v14, v19

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    iget-object v12, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v12

    cmp-long v4, v14, v19

    if-eqz v4, :cond_e

    :try_start_9
    iget-object v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v4, :cond_e

    iget v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    if-ne v4, v2, :cond_e

    iget v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    if-ne v4, v8, :cond_e

    iget-wide v8, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    cmp-long v4, v8, v6

    if-nez v4, :cond_e

    add-int/lit8 v23, v1, 0x1

    iget-object v1, v3, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget v4, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v4, :cond_d

    iget v6, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iget-object v7, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aput v6, v7, v4

    iget-object v7, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v8, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v8, v7, v4

    iput v6, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    :cond_d
    sub-long v6, v21, v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object v1, v3

    move-wide v3, v14

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/AppProfiler;->recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V

    move/from16 v1, v23

    goto :goto_d

    :catchall_5
    move-exception v0

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    :goto_d
    monitor-exit v12

    goto :goto_f

    :goto_e
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    :cond_f
    const-wide/16 v19, 0x0

    :goto_f
    const/4 v12, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_6

    :catchall_7
    move-exception v0

    :goto_10
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    :goto_11
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;Lcom/android/server/am/LowMemDetector;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    iput v3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    iput v3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    new-instance v2, Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    new-instance v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/AppProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$1;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Lcom/android/server/am/AppProfiler$1;

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    new-instance p1, Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppProfiler$BgHandler;-><init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    iput-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    new-instance p1, Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppProfiler$ProcessCpuThread;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    new-instance p1, Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    const-string/jumbo p2, "onTrim"

    invoke-direct {p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    return-void
.end method


# virtual methods
.method public final addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final clearProfilerLPf()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    return-void
.end method

.method public final doLowMemReportIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    move-object v2, p0

    goto :goto_4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    cmp-long v1, v5, v1

    if-gez v1, :cond_2

    move v0, v7

    goto :goto_1

    :cond_2
    iput-wide v5, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    move-object v4, v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    const/16 v2, 0x7541

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V

    invoke-virtual {v8, v1, v7}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    if-eqz v0, :cond_5

    iget-object p0, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 p1, 0x21

    invoke-virtual {p0, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-object p1, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_4
    iget-object p0, v2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final dumpMemWatchProcessesLPf(Ljava/io/PrintWriter;Z)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "  Mem watch processes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 p2, 0x0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_1

    const-string v7, ", report to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const-string v0, "  mMemWatchDumpProcName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mMemWatchDumpUri="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mMemWatchDumpPid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mMemWatchDumpUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mMemWatchIsUserInitiated="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    return p2
.end method

.method public final dumpProcessesToGc(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    const-string p3, "  Processes that are waiting to GC:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x1

    move v4, p3

    :cond_2
    const-string v6, "    Process "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const-string v6, "      lowMem="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, ", last gced="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    sub-long v6, v0, v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, " ms ago, last lowMem="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    sub-long v5, v0, v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v5, " ms ago"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final forAllCpuStats(Ljava/util/function/Consumer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLastMemoryLevelLocked()I
    .locals 2

    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    return p0
.end method

.method public final getLowRamTimeSinceIdleLPr(J)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    sub-long/2addr p1, v0

    return-wide p1

    :cond_0
    return-wide v2
.end method

.method public final handleAbortDumpHeap(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

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

    :cond_1
    return-void
.end method

.method public final handlePostDumpHeapNotification()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    move-object v3, v4

    :goto_1
    iget-boolean v7, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.android.shell"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.UID"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "com.android.internal.extra.heap_dump.SIZE_BYTES"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v4, "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.internal.extra.heap_dump.PROCESS_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isProfilingPss()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final performAppGcsIfAppropriateLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canGcNowLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsLPf()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final performAppGcsLPf()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget v3, v2, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    if-eqz v3, :cond_0

    :cond_1
    iget-wide v2, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    iget-object v2, v0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v2, :cond_3

    iget-boolean v3, v0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    if-eqz v3, :cond_2

    iput-boolean v1, v0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/app/IApplicationThread$Delegator;->processInBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    return-void

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    return-void
.end method

.method public final printCurrentCpuState(Ljava/lang/StringBuilder;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/16 v1, 0xa

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final profileControlLPf(Lcom/android/server/am/ProcessRecord;ZLandroid/app/ProfilerInfo;I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v2, v2, v0}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v0

    :goto_1
    move-object v6, p3

    move v8, p4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v6, p3

    goto/16 :goto_9

    :catch_0
    move-object v6, p3

    goto/16 :goto_8

    :cond_1
    move-object v7, v2

    goto :goto_1

    :goto_2
    :try_start_2
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;Landroid/content/pm/ApplicationInfo;I)V

    iget-object p3, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p3, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    iput v8, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    if-eqz v1, :cond_2

    iget-object p3, v6, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    move-object p0, v0

    goto :goto_9

    :catch_1
    move-object p3, v2

    :goto_4
    :try_start_4
    iput-object p3, v6, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    :cond_2
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {p3, p2, v6, v8}, Landroid/app/IApplicationThread$Delegator;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_7

    :try_start_5
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    iget-object p2, p2, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object p2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_2
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    iput-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget p1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p0, p1, :cond_7

    move-object p3, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v6, p3

    goto :goto_3

    :cond_3
    move-object v6, p3

    move v8, p4

    if-ne v8, v1, :cond_4

    move v0, v1

    :cond_4
    if-eqz v6, :cond_6

    iget-object p2, v6, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p2, :cond_6

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    :goto_5
    move-object v2, p2

    goto :goto_6

    :cond_5
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_3
    :goto_6
    :try_start_8
    iput-object v2, v6, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    :cond_6
    invoke-virtual {p0, p1, v6, v8}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_7
    move-object p3, v6

    :goto_7
    if-eqz p3, :cond_8

    iget-object p0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_8

    :try_start_9
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :cond_8
    return-void

    :catch_5
    :goto_8
    :try_start_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Process disappeared"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_9
    if-eqz v6, :cond_9

    iget-object p1, v6, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_9

    :try_start_b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    :cond_9
    throw p0
.end method

.method public final recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v12, p7

    iget-object v14, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v15, v1, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    iget v2, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v4, 0x400

    mul-long v18, p3, v4

    mul-long v20, p5, v4

    mul-long v22, v12, v4

    mul-long v24, p9, v4

    move/from16 v27, p2

    move/from16 v26, p11

    move-wide/from16 v28, p12

    move/from16 v16, v2

    move-object/from16 v17, v3

    invoke-static/range {v15 .. v29}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    move-wide/from16 v2, p14

    iput-wide v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    const/4 v8, 0x1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    move/from16 v9, p11

    move-wide/from16 v10, p12

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    iget-wide v4, v1, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    iput-wide v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    :cond_0
    iput-wide v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    iput-wide v12, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    const/16 v4, 0xe

    move/from16 v5, p2

    if-lt v5, v4, :cond_1

    iput-wide v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    iput-wide v12, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    :cond_1
    iput-wide v6, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v4, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/util/Pair;

    :cond_2
    if-eqz v4, :cond_3

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v18, v4

    if-ltz v4, :cond_6

    iget-object v4, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v4, :cond_6

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v5, " exceeded pss limit "

    const-string/jumbo v6, "Process "

    const-string v7, "ActivityManager"

    if-nez v4, :cond_5

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but debugging not enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; reporting"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mChimera:Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz v0, :cond_7

    iget v1, v14, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v2, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/chimera/ChimeraManagerService;->checkProcessInHeimdall(IILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v12, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v13, v1, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    iget v14, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v28, 0x400

    mul-long v22, p3, v28

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move/from16 v25, p2

    move/from16 v24, p5

    move-wide/from16 v26, p6

    invoke-static/range {v13 .. v27}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    move-wide/from16 v2, p8

    iput-wide v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p3

    move/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    iget-wide v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v6, v1, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    :cond_0
    iput-wide v6, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    const/16 v2, 0xe

    move/from16 v3, p2

    if-lt v3, v2, :cond_1

    iput-wide v6, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    if-nez v5, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/util/Pair;

    :cond_2
    if-eqz v5, :cond_3

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_6

    iget v5, v1, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    invoke-static {v5, v4, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v4

    mul-long v4, v4, v28

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    iget-object v4, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v4, :cond_6

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v5, " exceeded pss limit "

    const-string/jumbo v6, "Process "

    const-string v7, "ActivityManager"

    if-nez v4, :cond_5

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but debugging not enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; reporting"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mChimera:Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz v0, :cond_7

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/chimera/ChimeraManagerService;->checkProcessInHeimdall(IILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final requestPssAllProcsLPr(JZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v3, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppProfiler;ZJ)V

    const/4 p1, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final scheduleAppGcsLPf()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    add-long v8, v4, v6

    cmp-long p0, v2, v8

    if-gez p0, :cond_0

    add-long v2, v4, v6

    :cond_0
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public final setAgentAppLPf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "App agent map has too many entries, cannot add "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setTestPssMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final setupProfilerInfoLocked(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)Landroid/app/ProfilerInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    iget-object v6, v6, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6, v2}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    iget-object v6, v6, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v6, :cond_4

    iget-object v8, v6, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v8, :cond_1

    iget-boolean v6, v6, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    :goto_0
    new-instance v6, Landroid/app/ProfilerInfo;

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    iget-object v8, v8, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-direct {v6, v8}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    :goto_1
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    iget-object v8, v8, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v8, v8, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-eqz v8, :cond_2

    move-object v7, v8

    :cond_2
    move-object/from16 v20, v7

    move-object v7, v6

    move-object/from16 v6, v20

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    iget-object v6, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v6, :cond_4

    new-instance v8, Landroid/app/ProfilerInfo;

    iget-object v9, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v17}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    move-object v6, v7

    move-object v7, v8

    goto :goto_2

    :cond_4
    move-object v6, v7

    :goto_2
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v7, :cond_5

    new-instance v10, Landroid/app/ProfilerInfo;

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v19}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    move-object v7, v10

    goto :goto_3

    :cond_5
    iget-object v8, v7, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-nez v8, :cond_6

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/app/ProfilerInfo;->setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;

    move-result-object v7

    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    iget-object v8, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    iget-object v8, v8, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    iget-object v4, v4, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    :cond_7
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    :goto_4
    if-ltz v3, :cond_c

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-nez v4, :cond_c

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveInstrumentation;

    iget-boolean v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-nez v5, :cond_b

    iget-object v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v8, :cond_b

    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v5

    :try_start_1
    iget-object v8, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v9, v8

    if-nez v9, :cond_8

    iget-object v8, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4}, Lcom/android/server/am/ProcessStateController;->setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V

    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_8
    array-length v9, v8

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_a

    aget-object v11, v8, v10

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4}, Lcom/android/server/am/ProcessStateController;->setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V

    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_8

    :goto_7
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_b
    :goto_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_d

    invoke-interface {v1, v6}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    :cond_e
    return-object v7

    :goto_9
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "content://com.android.shell.heapdump/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_javaheap.bin"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    iget v1, p1, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android"

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppProfiler$RecordPssRunnable;

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/android/server/am/AppProfiler$RecordPssRunnable;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "android package not found."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p1, v0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    iget p3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez p0, :cond_3

    :goto_0
    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/IApplicationThread$Delegator;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Process disappeared"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateCpuStatsNow()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "settings_enable_monitor_phantom_procs"

    invoke-static {v1, v4}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    sub-long v9, v5, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->hasGoodLastStats()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "true"

    const-string/jumbo v8, "events.cpu"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v8

    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v9

    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v11

    iget-object v12, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v12

    add-int v13, v7, v8

    add-int/2addr v13, v9

    add-int/2addr v13, v10

    add-int/2addr v13, v11

    add-int/2addr v12, v13

    if-nez v12, :cond_1

    const/4 v12, 0x1

    :cond_1
    mul-int/lit8 v13, v13, 0x64

    div-int/2addr v13, v12

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v12

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v12

    mul-int/lit8 v9, v9, 0x64

    div-int/2addr v9, v12

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v12

    mul-int/lit8 v11, v11, 0x64

    div-int/2addr v11, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v14 .. v19}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0xaa1

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_2

    :goto_1
    move-object/from16 v21, v4

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    if-eqz v1, :cond_4

    if-eqz v7, :cond_4

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, v8}, Lcom/android/server/am/PhantomProcessList;->updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V

    :cond_4
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_e

    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->startAddingCpuStatsLocked()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move v9, v3

    move-wide v14, v10

    move v10, v9

    :goto_4
    if-ge v3, v1, :cond_d

    :try_start_2
    iget-object v11, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11, v3}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v11

    iget-boolean v2, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-nez v2, :cond_5

    move/from16 v16, v1

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-wide/from16 v22, v14

    goto/16 :goto_a

    :cond_5
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    move/from16 v16, v1

    iget v1, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    iget v2, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    add-int/2addr v2, v9

    iget v9, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int v18, v10, v9

    if-eqz v1, :cond_a

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v10, v9, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    if-eqz v10, :cond_7

    move/from16 v19, v2

    iget-boolean v2, v10, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    move-object v1, v10

    move-object v2, v11

    move-wide v10, v14

    move-object v14, v9

    goto :goto_7

    :goto_5
    move-object/from16 v21, v4

    goto/16 :goto_b

    :cond_7
    move/from16 v19, v2

    :goto_6
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v2

    move-object/from16 v30, v9

    move v9, v2

    move-object v2, v11

    move-wide v10, v14

    move-object/from16 v14, v30

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    iput-object v1, v14, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    :goto_7
    iget v9, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v15, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move/from16 v20, v3

    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-boolean v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_8

    move-object/from16 v21, v4

    :try_start_3
    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    move-wide/from16 v22, v3

    int-to-long v3, v9

    add-long v3, v22, v3

    iput-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    move-wide/from16 v22, v3

    int-to-long v3, v15

    add-long v3, v22, v3

    iput-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    goto :goto_8

    :cond_8
    move-object/from16 v21, v4

    :goto_8
    iget-object v1, v14, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    add-int/2addr v9, v15

    int-to-long v3, v9

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v3

    iget-object v1, v14, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v14, v15, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    :cond_9
    move-wide/from16 v22, v10

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_a
    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object v2, v11

    move-wide v10, v14

    iget-object v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    if-eqz v1, :cond_b

    iget-boolean v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    if-nez v3, :cond_c

    :cond_b
    iget v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v9

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    :cond_c
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    iget-object v9, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-boolean v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v9, :cond_9

    iget-wide v14, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    move-wide/from16 v22, v10

    int-to-long v9, v3

    add-long/2addr v14, v9

    iput-wide v14, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    iget-wide v9, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    int-to-long v3, v4

    add-long/2addr v9, v3

    iput-wide v9, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    :goto_9
    iget v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    int-to-long v3, v1

    iget v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    int-to-long v9, v1

    iget-object v1, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iget-wide v14, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    iget v11, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-wide/from16 v24, v3

    int-to-long v3, v11

    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move-object/from16 v26, v1

    int-to-long v1, v2

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    filled-new-array/range {v24 .. v29}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7598

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move/from16 v10, v18

    move/from16 v9, v19

    :goto_a
    add-int/lit8 v3, v20, 0x1

    move/from16 v1, v16

    move-object/from16 v4, v21

    move-wide/from16 v14, v22

    goto/16 :goto_4

    :cond_d
    move-object/from16 v21, v4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v11

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v12

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v13

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v14

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v15

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v16

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/power/stats/BatteryStatsImpl;->addCpuStatsLocked(IIIIIIII)V

    iget-object v1, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mStepDetailsProvider:Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/power/stats/BatteryHistoryStepDetailsProvider;->mHasHistoryStepDetails:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_d

    :goto_b
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :catchall_4
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_d

    :cond_e
    move-object/from16 v21, v4

    :goto_c
    iget-wide v1, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    const-wide/32 v3, 0x1b7740

    sub-long v3, v5, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_f

    iput-wide v5, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    :cond_f
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    return-void

    :catchall_5
    move-exception v0

    goto :goto_e

    :goto_d
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0

    :goto_e
    monitor-exit v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0
.end method

.method public final updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/32 v2, 0x36ee80

    if-nez p5, :cond_5

    iget-wide v4, p2, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    cmp-long p5, p3, v4

    if-gtz p5, :cond_1

    iget-wide v4, p2, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    add-long/2addr v4, v2

    iget-wide v6, p2, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    iget-boolean p5, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    sget v8, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    if-eqz p5, :cond_0

    const-wide/16 v8, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x3a98

    :goto_0
    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long p5, p3, v4

    if-gtz p5, :cond_1

    goto :goto_1

    :cond_1
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-nez p5, :cond_4

    iget-wide v4, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v6, 0x0

    cmp-long p5, v4, v6

    if-lez p5, :cond_3

    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p5

    if-lez p5, :cond_3

    iget-wide v6, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    :cond_3
    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-virtual {p5, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    iput p1, p2, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    iput v1, p2, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    iget-object p5, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-boolean p5, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    iget-object v4, p2, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v5, p2, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerService;->mBootCompletedTimestamp:J

    iget-object v7, p2, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerService;->mLastIdleTime:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v7, p2, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    add-long/2addr v5, v7

    sget-object v7, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p1, v7, p1

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_9

    iget v8, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge p1, v8, :cond_6

    move v8, p1

    :cond_6
    iget-object v9, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v9, v9, p1

    if-ge v8, v9, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    iput p1, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iput v8, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    if-eqz v0, :cond_8

    iput v7, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_3

    :cond_8
    iget-object v1, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v7, v1, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v7

    iput v1, v4, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    :cond_9
    :goto_3
    if-eqz p5, :cond_b

    if-eqz v0, :cond_a

    sget-object p0, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    :cond_a
    sget-object p0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    :cond_b
    if-eqz v0, :cond_d

    if-eqz p0, :cond_c

    sget-object p0, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_c
    sget-object p0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    :cond_d
    if-eqz p0, :cond_e

    sget-object p0, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_e
    sget-object p0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4
    aget-wide p0, p0, p1

    long-to-float p0, p0

    mul-float/2addr p0, v7

    float-to-long p0, p0

    cmp-long p5, p0, v2

    if-lez p5, :cond_f

    goto :goto_5

    :cond_f
    move-wide v2, p0

    :goto_5
    add-long/2addr p3, v2

    invoke-static {p3, p4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    iput-wide p0, p2, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-void
.end method

.method public final writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-wide v0, 0x10b00000020L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const-wide v5, 0x10900000001L

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    const-wide v8, 0x20b00000001L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    const-wide v5, 0x20b00000002L

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    const-wide v11, 0x10500000001L

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {p1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    const-wide v12, 0x10900000002L

    invoke-virtual {p1, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const-wide v11, 0x10900000003L

    invoke-virtual {p1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide v5, 0x10900000006L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10500000003L

    iget v6, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10500000004L

    iget v6, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10800000005L

    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_2
    return-void
.end method

.method public final writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const-wide v5, 0x20b0000000cL

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/4 v8, -0x1

    const-wide v9, 0x10b00000001L

    invoke-virtual {v4, p1, v9, v10, v8}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-boolean v4, v7, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    const-wide v8, 0x10800000002L

    invoke-virtual {p1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x10300000003L

    invoke-virtual {p1, v8, v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v8, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    const-wide v10, 0x10300000004L

    invoke-virtual {p1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v7, v7, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    const-wide v9, 0x10300000005L

    invoke-virtual {p1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
