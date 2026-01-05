.class public final Lcom/android/server/cpu/CpuMonitorService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CACHE_DURATION_MILLISECONDS:J

.field public static final DEBUG:Z

.field public static final DEBUG_MONITORING_INTERVAL_MILLISECONDS:J

.field public static final LATEST_AVAILABILITY_DURATION_MILLISECONDS:J

.field public static final NORMAL_MONITORING_INTERVAL_MILLISECONDS:J

.field public static final STOP_PERIODIC_CPUSET_READING_DELAY_MILLISECONDS:J


# instance fields
.field public final mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

.field public final mCpusetInfosByCpuset:Landroid/util/SparseArray;

.field public mCurrentMonitoringIntervalMillis:J

.field public final mDebugMonitoringIntervalMillis:J

.field public mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mLatestAvailabilityDurationMillis:J

.field public final mLocalService:Lcom/android/server/cpu/CpuMonitorService$1;

.field public final mLock:Ljava/lang/Object;

.field public final mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

.field public final mNormalMonitoringIntervalMillis:J

.field public final mShouldDebugMonitor:Z

.field public final mStopPeriodicCpusetReadingDelayMillis:J


# direct methods
.method public static -$$Nest$mdoDump(Lcom/android/server/cpu/CpuMonitorService;Landroid/util/IndentingPrintWriter;)V
    .locals 6

    const-string v0, "*%s*\n"

    const-string v1, "CpuMonitorService"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CpuInfoReader"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "*%s*\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "mCpusetDir = %s\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "mCpuFreqDir = %s\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "mProcStatFile = %s\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-boolean v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "mIsEnabled = %s\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-boolean v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "mHasTimeInStateFile = %s\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "mLastReadUptimeMillis = %d\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "mMinReadIntervalMillis = %d\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Cpuset categories by CPU core:\n"

    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const-string v4, "CPU core id = %d, %s\n"

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/cpu/CpuInfoReader;->toCpusetCategoriesStr(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Cpu frequency policy directories by policy id:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v1

    :goto_1
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v5, "Policy id = %d, Dir = %s\n"

    invoke-virtual {p1, v5, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v2, "Static cpu frequency policy infos by policy id:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v1

    :goto_2
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v5, "Policy id = %d, %s\n"

    invoke-virtual {p1, v5, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Cpu time in frequency state by policy id:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v1

    :goto_3
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v5, "Policy id = %d, Time(millis) in state by CPU frequency(KHz) = %s\n"

    invoke-virtual {p1, v5, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Last read CPU infos:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v1

    :goto_4
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%s\n"

    invoke-virtual {p1, v5, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Latest cumulative CPU usage stats by CPU core:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v1

    :goto_5
    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "mShouldDebugMonitor = %s\n"

    iget-boolean v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "Yes"

    goto :goto_6

    :cond_6
    const-string/jumbo v2, "No"

    :goto_6
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v0, "mNormalMonitoringIntervalMillis = %d\n"

    iget-wide v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mNormalMonitoringIntervalMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v0, "mDebugMonitoringIntervalMillis = %d\n"

    iget-wide v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mDebugMonitoringIntervalMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v0, "mLatestAvailabilityDurationMillis = %d\n"

    iget-wide v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mLatestAvailabilityDurationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v2, "mCurrentMonitoringIntervalMillis = %d\n"

    iget-wide v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    if-lez v3, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_8
    if-eqz v2, :cond_9

    const-string v2, "CPU availability change callbacks:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda2;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_9

    :catchall_0
    move-exception p0

    goto :goto_b

    :cond_9
    :goto_9
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_b

    const-string v2, "Cpuset infos:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_a
    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const-string v2, "%s\n"

    iget-object v3, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_b
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_b
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "CpuMonitorService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/cpu/CpuMonitorService;->NORMAL_MONITORING_INTERVAL_MILLISECONDS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/cpu/CpuMonitorService;->DEBUG_MONITORING_INTERVAL_MILLISECONDS:J

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/cpu/CpuMonitorService;->CACHE_DURATION_MILLISECONDS:J

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/cpu/CpuMonitorService;->LATEST_AVAILABILITY_DURATION_MILLISECONDS:J

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/cpu/CpuMonitorService;->STOP_PERIODIC_CPUSET_READING_DELAY_MILLISECONDS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    new-instance v0, Lcom/android/server/cpu/CpuInfoReader;

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/cpuset"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/cpufreq"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/stat"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cpu/CpuInfoReader;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;J)V

    new-instance v3, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v4, "CpuMonitorService"

    invoke-direct {v3, v4, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sget-wide v9, Lcom/android/server/cpu/CpuMonitorService;->LATEST_AVAILABILITY_DURATION_MILLISECONDS:J

    sget-wide v11, Lcom/android/server/cpu/CpuMonitorService;->STOP_PERIODIC_CPUSET_READING_DELAY_MILLISECONDS:J

    const/4 v4, 0x0

    sget-wide v5, Lcom/android/server/cpu/CpuMonitorService;->NORMAL_MONITORING_INTERVAL_MILLISECONDS:J

    sget-wide v7, Lcom/android/server/cpu/CpuMonitorService;->DEBUG_MONITORING_INTERVAL_MILLISECONDS:J

    move-object v1, p1

    move-object v2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/cpu/CpuMonitorService;-><init>(Landroid/content/Context;Lcom/android/server/cpu/CpuInfoReader;Landroid/os/HandlerThread;ZJJJJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cpu/CpuInfoReader;Landroid/os/HandlerThread;ZJJJJ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/cpu/CpuMonitorService;I)V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLocalService:Lcom/android/server/cpu/CpuMonitorService$1;

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    iput-boolean p4, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    iput-wide p5, p0, Lcom/android/server/cpu/CpuMonitorService;->mNormalMonitoringIntervalMillis:J

    iput-wide p7, p0, Lcom/android/server/cpu/CpuMonitorService;->mDebugMonitoringIntervalMillis:J

    iput-wide p9, p0, Lcom/android/server/cpu/CpuMonitorService;->mLatestAvailabilityDurationMillis:J

    iput-wide p11, p0, Lcom/android/server/cpu/CpuMonitorService;->mStopPeriodicCpusetReadingDelayMillis:J

    iput-object p2, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    new-instance p3, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;-><init>(I)V

    invoke-virtual {p1, p4, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance p3, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    invoke-direct {p3, p2}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    return-void
.end method


# virtual methods
.method public final checkClientThresholdsAndNotifyLocked(Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    invoke-virtual {v0}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->getAverageAvailableCpuFreqPercent()I

    move-result v0

    :goto_0
    iget-object v1, p1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    if-eqz v1, :cond_3

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    iget p1, p1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v1

    if-gtz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public getCurrentMonitoringIntervalMillis()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CpuMonitorService"

    const-string/jumbo v0, "Stopping periodic cpuset reading on boot complete"

    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/cpu/CpuMonitorService;I)V

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mStopPeriodicCpusetReadingDelayMillis:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    iget-object v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, "CpuMonitorService"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    const-string v1, "Ignoring duplicate CpuInfoReader init request"

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    goto/16 :goto_6

    :cond_0
    iget-object v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    new-instance v5, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_c

    array-length v5, v1

    if-nez v5, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/cpu/CpuInfoReader;->populateCpuFreqPolicyDirsById([Ljava/io/File;)V

    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to parse CPU frequency policy directory paths: %s"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move v0, v4

    goto/16 :goto_6

    :cond_2
    move v5, v4

    :goto_1
    iget-object v6, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v6, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "related_cpus"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/server/cpu/CpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    new-instance v8, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;

    invoke-direct {v8, v7}, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;-><init>(Landroid/util/IntArray;)V

    iget-object v7, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-boolean v7, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v7, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Added static policy info %s for policy id %d"

    invoke-static {v2, v7, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Failed to read related CPU cores from %s"

    invoke-static {v2, v7, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to read static CPU frequency policy info from policy dirs: %s"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget-object v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v0, v0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Missing proc stat file at %s"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpusetCategories()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v0, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to read cpuset information from %s"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    move v1, v4

    :goto_4
    iget-object v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    iget-boolean v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    if-nez v5, :cond_a

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    const-string/jumbo v8, "stats/time_in_state"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, v0, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    iget-boolean v1, v0, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    if-nez v1, :cond_b

    const-string/jumbo v1, "Time in state file not available for any cpufreq policy"

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iput-boolean v3, v0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    move v0, v3

    goto :goto_6

    :cond_c
    :goto_5
    iget-object v0, v0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Missing CPU frequency policy directories at %s"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :goto_6
    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    invoke-virtual {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuInfos()Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    const-class v0, Lcom/android/server/cpu/CpuMonitorService$1;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mLocalService:Lcom/android/server/cpu/CpuMonitorService$1;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "cpu_monitor"

    new-instance v1, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;

    invoke-direct {v1, p0}, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;-><init>(Lcom/android/server/cpu/CpuMonitorService;)V

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mDebugMonitoringIntervalMillis:J

    iput-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    const-string v1, "CpuMonitorService"

    const-string/jumbo v2, "Starting debug monitoring"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_e
    :goto_7
    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_f
    :goto_9
    const-string p0, "CpuMonitorService"

    const-string v0, "Failed to initialize CPU info reader. This happens when the CPU frequency stats are not available or the sysfs interface has changed in the Kernel. Cannot monitor CPU without these stats. Terminating CPU monitor service"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopMonitoringCpuStatsLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    iget-object v1, v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
