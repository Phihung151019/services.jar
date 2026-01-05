.class public final Lcom/android/server/am/AppStartInfoTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final APP_START_INFO_FILE:Ljava/lang/String; = "procstartinfo"

.field static final APP_START_INFO_HISTORY_LENGTH_MS:J

.field static final APP_START_INFO_HISTORY_LIST_SIZE:I = 0x10

.field public static final APP_START_INFO_PERSIST_INTERVAL:J

.field static final APP_START_STORE_DIR:Ljava/lang/String; = "procstartstore"

.field static final MAX_IN_PROGRESS_RECORDS:I = 0x5


# instance fields
.field mAppStartInfoHistoryListSize:I

.field mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

.field public final mCallbacks:Landroid/util/SparseArray;

.field public final mData:Lcom/android/internal/app/ProcessMap;

.field mEnabled:Z

.field public mHandler:Landroid/os/Handler;

.field final mInProgressRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLastAppStartInfoPersistTimestamp:J

.field final mLock:Ljava/lang/Object;

.field mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field mProcStartInfoFile:Ljava/io/File;

.field mProcStartStoreDir:Ljava/io/File;

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mTemporaryInProgressIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpStartInfoList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_PERSIST_INTERVAL:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_HISTORY_LENGTH_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTmpStartInfoList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    return-void
.end method

.method public static addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget v0, v0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p0, v2}, Landroid/app/ApplicationStartInfo;->setPid(I)V

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v2}, Landroid/app/ApplicationStartInfo;->setRealUid(I)V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2}, Landroid/app/ApplicationStartInfo;->setPackageUid(I)V

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/ApplicationStartInfo;->setDefiningUid(I)V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/ApplicationStartInfo;->setProcessName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/ApplicationStartInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean p1, p1, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    if-nez p1, :cond_3

    if-eqz v0, :cond_4

    iget p1, v0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p0, v1}, Landroid/app/ApplicationStartInfo;->setForceStopped(Z)V

    return-void
.end method

.method public static dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    Historical Process Start for userId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    iget-boolean v6, v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v6, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v3

    :goto_1
    iget-object v11, v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    iget-object v11, v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ApplicationStartInfo;

    invoke-virtual {v11}, Landroid/app/ApplicationStartInfo;->getStartupTimestamps()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-virtual {v11}, Landroid/app/ApplicationStartInfo;->getStartType()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    const/4 v12, 0x3

    if-eq v11, v12, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "        Average Start Time in ns for Cold Starts: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const-string/jumbo v11, "No records"

    if-eqz v10, :cond_5

    move-object v6, v11

    goto :goto_3

    :cond_5
    invoke-static {v6}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->calculateAverage(Ljava/util/List;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "        Average Start Time in ns for Warm Starts: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v11

    goto :goto_4

    :cond_6
    invoke-static {v8}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->calculateAverage(Ljava/util/List;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "        Average Start Time in ns for Hot Starts: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v9}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->calculateAverage(Ljava/util/List;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :goto_5
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v6, v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v3

    :goto_6
    if-ge v7, v6, :cond_9

    iget-object v8, v5, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ApplicationStartInfo;

    const-string v9, "#"

    invoke-static {v7, v9}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "        "

    move-object/from16 v11, p3

    invoke-virtual {v8, v0, v10, v9, v11}, Landroid/app/ApplicationStartInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v11, p3

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public final addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ActivityManager"

    const-string/jumbo p1, "Skipping saving the start info due to ongoing loading from storage"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v0, Landroid/app/ApplicationStartInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationStartInfo;-><init>(Landroid/app/ApplicationStartInfo;)V

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    iget v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    invoke-direct {v1, p0, v3}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    iput v2, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object p1, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-boolean v2, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x64

    goto :goto_1

    :cond_3
    iget v2, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMaxCapacity:I

    :goto_1
    if-lt p1, v2, :cond_4

    iget-object p1, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p1, v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addFirst(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    return-object v0
.end method

.method public final addTimestampToStart(IIJLjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p5, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-nez p0, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->addTimestampToStartLocked(IJ)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearProcessStartInfo(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpHistoryProcessStartInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Last Timestamp of Persistence Into Persistent Storage: "

    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity start-info)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v1}, Landroid/icu/text/SimpleDateFormat;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1, v1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppStartInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_2

    invoke-static {p1, p2, p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final forEachPackageLocked(Ljava/util/function/BiFunction;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    return v4

    :cond_2
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getMonotonicTimeMs()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStartInfo(IILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/16 p2, 0x10

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p3, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-eqz p0, :cond_6

    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int v4, p1, p2

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p4, v4, p0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lcom/android/server/am/AppStartInfoTracker;->mTmpStartInfoList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p3}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda0;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    new-instance p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p2, :cond_4

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_4
    :goto_1
    if-ge v4, p0, :cond_5

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    :cond_6
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final handleProcessBackupStart(JLcom/android/server/am/ProcessRecord;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    invoke-static {v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 p3, 0x0

    invoke-virtual {v1, p3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    invoke-virtual {v1, p3, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p1, 0x1

    if-eqz p4, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {v1, p2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    const/4 p1, 0x5

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleProcessContentProviderStart(Lcom/android/server/am/ProcessRecord;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    invoke-static {v1, p1}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadExistingProcessStartInfo()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const-wide v3, 0x10300000003L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    new-instance v5, Lcom/android/internal/os/MonotonicClock;

    sget-object v6, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {v5, v3, v4, v6}, Lcom/android/internal/os/MonotonicClock;-><init>(JLcom/android/internal/os/Clock;)V

    iput-object v5, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_3
    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/AppStartInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v4, 0x10300000001L

    :try_start_1
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    if-eqz v0, :cond_6

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :goto_3
    :try_start_6
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in loading historical app start info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_2

    :catch_1
    :cond_6
    :goto_4
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_5
    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_7
    throw p0
.end method

.method public final loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    const-string v1, ""

    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    move-object v10, v1

    :goto_0
    const/4 v11, -0x1

    if-eq v3, v11, :cond_7

    const/4 v12, 0x1

    if-eq v3, v12, :cond_6

    const/4 v13, 0x2

    if-eq v3, v13, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v14, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    iget v1, v0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    invoke-direct {v14, v0, v1}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    :goto_1
    if-eq v1, v11, :cond_4

    if-eq v1, v12, :cond_3

    if-eq v1, v13, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    :goto_2
    move-wide v11, v3

    goto :goto_3

    :cond_1
    const-wide v5, 0x10800000003L

    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v1

    iput-boolean v1, v14, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/app/ApplicationStartInfo;

    const-wide/16 v5, 0x0

    invoke-direct {v1, v5, v6}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v15, v3

    const-wide v3, 0x20b00000002L

    const/4 v5, 0x0

    move-wide v11, v15

    invoke-virtual/range {v1 .. v7}, Landroid/app/ApplicationStartInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;JLjava/io/ByteArrayInputStream;Ljava/io/ObjectInputStream;Lcom/android/modules/utils/TypedXmlPullParser;)V

    invoke-virtual {v1, v10}, Landroid/app/ApplicationStartInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addFirst(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    move-wide v11, v3

    const-wide v3, 0x10500000001L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v14, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    :goto_3
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    move-wide v3, v11

    const/4 v11, -0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    move-wide v11, v3

    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoInputStream;->end(J)V

    iget v1, v14, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, v0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v10, v1, v14}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    const-wide v3, 0x10900000001L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    :goto_4
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void
.end method

.method public final maybeTrimInProgressRecordsLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onActivityIntentStarted(Landroid/content/Intent;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    invoke-virtual {v1, v2, p2, p3}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->maybeTrimInProgressRecordsLocked()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onActivityLaunched(JJLcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationStartInfo;

    if-eqz p2, :cond_4

    if-nez p5, :cond_2

    goto :goto_1

    :cond_2
    long-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    invoke-static {p2, p5}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppStartInfoTracker;->removePackageLocked(ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public persistProcessStartInfo()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v6, 0x10300000001L

    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v6, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v7, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda2;

    invoke-direct {v7, v5}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda2;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-wide v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v1

    const-wide v8, 0x10300000003L

    invoke-virtual {v5, v8, v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_1
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v1

    move-object v4, v3

    :goto_2
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unable to write historical app start info into persistent storage: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_3
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iput-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    monitor-exit v0

    :goto_4
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public final removePackageLocked(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_3

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public final removeStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;IZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    iget-object v6, v5, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    if-ne v6, p1, :cond_2

    if-eqz p3, :cond_3

    invoke-interface {v6}, Landroid/app/IApplicationStartInfoCompleteListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v5, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public schedulePersistProcessStartInfo(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_3
    sget-wide v2, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_PERSIST_INTERVAL:J

    :goto_0
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
