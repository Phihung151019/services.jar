.class public final Lcom/android/server/am/ProcessServiceRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAllowlistManager:Z

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBoundClientUids:Landroid/util/ArraySet;

.field public mConnectionGroup:I

.field public mConnectionImportance:I

.field public mConnectionService:Lcom/android/server/am/ServiceRecord;

.field public final mConnections:Landroid/util/ArraySet;

.field public mExecServicesFg:Z

.field public final mExecutingServices:Landroid/util/ArraySet;

.field public mFgServiceTypes:I

.field public mHasAboveClient:Z

.field public mHasClientActivities:Z

.field public mHasForegroundServices:Z

.field public mHasTopStartedAlmostPerceptibleServices:Z

.field public mHasTypeNoneFgs:Z

.field public mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

.field public mRepHasForegroundServices:Z

.field public mScheduleServiceTimeoutPending:Z

.field public mSdkSandboxConnections:Landroid/util/ArraySet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mServices:Landroid/util/ArraySet;

.field public mTreatLikeActivity:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z
    .locals 6

    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final clearBoundClientUids()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ConnectionRecord;

    return-object p0
.end method

.method public final getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public final hasNonShortForegroundServices()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTypeNoneFgs:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    const/16 v0, 0x800

    if-eq p0, v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final modifyRawOomAdj(I)I
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    if-eqz p0, :cond_6

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x64

    if-ge p1, p0, :cond_1

    return p0

    :cond_1
    const/16 p0, 0xc8

    if-ge p1, p0, :cond_2

    return p0

    :cond_2
    const/16 p0, 0xfa

    if-ge p1, p0, :cond_3

    return p0

    :cond_3
    const/16 p0, 0x1f4

    if-ge p1, p0, :cond_4

    return p0

    :cond_4
    const/16 p0, 0x384

    if-ge p1, p0, :cond_5

    return p0

    :cond_5
    const/16 p0, 0x3e7

    if-ge p1, p0, :cond_6

    add-int/lit8 p1, p1, 0x1

    :cond_6
    :goto_0
    return p1
.end method

.method public final scheduleServiceTimeoutIfNeededLocked()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iput-wide v0, v4, Lcom/android/server/am/ServiceRecord;->executingStart:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateBoundClientUids()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->clearBoundClientUids()V

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    move v9, v3

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ConnectionRecord;

    iget v11, v10, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget v11, v10, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v12, v10, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    iget-wide v13, v10, Lcom/android/server/am/ConnectionRecord;->flags:J

    invoke-virtual {v2, v11, v12, v13, v14}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    return-void
.end method

.method public final updateHasTopStartedAlmostPerceptibleServices()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    iget-wide v5, v2, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    iget-boolean v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/android/server/am/ProcessServiceRecord;->isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateHostingComonentTypeForBindingsLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v1, 0x200

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    return-void
.end method
