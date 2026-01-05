.class public final Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAverageFrozenTimeInSeconds:I

.field public mBinderProxySnapshot:I

.field public mCachedAppFrozenDurations:[J

.field public mCachedAppHighWatermark:I

.field public mCachedInKb:I

.field public mEarliestFrozenTimestamp:J

.field public mFreeInKb:I

.field public mKernelInKb:I

.field public mLatestFrozenTimestamp:J

.field public mLongestFrozenTimeInSeconds:I

.field public mMeanFrozenTimeInSeconds:I

.field public mNumOfFrozenApps:I

.field public mShortestFrozenTimeInSeconds:I

.field public mTotalFrozenDurations:J

.field public mUptimeInSeconds:I

.field public mZramInKb:I

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    return-void
.end method


# virtual methods
.method public final updateCachedAppsSnapshot(J)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    iput-wide v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    iget-object v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object v2, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    if-eqz v3, :cond_0

    array-length v3, v3

    if-ge v3, v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object v3, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object v2, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v3, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;J)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    iget v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    if-lez v2, :cond_2

    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    sub-long v3, p1, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLongestFrozenTimeInSeconds:I

    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    sub-long/2addr p1, v3

    div-long/2addr p1, v5

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mShortestFrozenTimeInSeconds:I

    iget-wide p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    int-to-long v3, v2

    div-long/2addr p1, v3

    div-long/2addr p1, v5

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mAverageFrozenTimeInSeconds:I

    iget-object p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    div-int/lit8 p2, v2, 0x2

    invoke-static {p1, v1, v2, p2}, Lcom/android/internal/util/QuickSelect;->select([JIII)J

    move-result-wide p1

    div-long/2addr p1, v5

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mMeanFrozenTimeInSeconds:I

    :cond_2
    iput v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    invoke-static {}, Lcom/android/internal/os/BinderInternal;->nGetBinderProxyPerUidCounts()Landroid/util/SparseIntArray;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object v3, v3, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v1

    long-to-int p2, v1

    iput p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mFreeInKb:I

    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v1

    long-to-int p2, v1

    iput p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedInKb:I

    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v1

    long-to-int p2, v1

    iput p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mZramInKb:I

    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mKernelInKb:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method
