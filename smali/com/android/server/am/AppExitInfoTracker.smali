.class public final Lcom/android/server/am/AppExitInfoTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final APP_EXIT_INFO_FILE:Ljava/lang/String; = "procexitinfo"

.field public static final APP_EXIT_INFO_PERSIST_INTERVAL:J

.field public static final APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

.field static final APP_EXIT_STORE_DIR:Ljava/lang/String; = "procexitstore"

.field static final FOREACH_ACTION_NONE:I = 0x0

.field static final FOREACH_ACTION_REMOVE_ITEM:I = 0x1

.field static final FOREACH_ACTION_STOP_ITERATION:I = 0x2


# instance fields
.field public final mActiveAppStateSummary:Landroid/util/SparseArray;

.field public final mActiveAppTraces:Landroid/util/SparseArray;

.field public mAppExitInfoHistoryListSize:I

.field mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

.field public final mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field public final mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field public final mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

.field public final mData:Lcom/android/internal/app/ProcessMap;

.field public final mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

.field public mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

.field public mLastAppExitInfoPersistTimestamp:J

.field final mLock:Ljava/lang/Object;

.field mProcExitInfoFile:Ljava/io/File;

.field mProcExitStoreDir:Ljava/io/File;

.field public final mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpInfoList:Ljava/util/ArrayList;

.field public final mTmpInfoList2:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$smfindAndRemoveFromSparse2dArray(IILandroid/util/SparseArray;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_2

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  package: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    Historical Process Exit for uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget-object v3, v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v4, v3, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v3, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v0, v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfosLocked(IILjava/util/List;)V

    iget-object v2, v3, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_0

    iget-object v5, v3, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationExitInfo;

    const-string v6, "#"

    invoke-static {v4, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "        "

    invoke-virtual {v5, p0, v7, v6, p3}, Landroid/app/ApplicationExitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, v3, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 11

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ApplicationExitInfo;->setLoggedInStatsd(Z)V

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_1
    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v5

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v6

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v7

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v0

    long-to-int v8, v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v0

    long-to-int v9, v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->hasForegroundServices()Z

    move-result v10

    const/16 v2, 0x175

    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIIIIZ)V

    return-void
.end method

.method public static putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object p4, p0

    check-cast p4, Landroid/util/SparseArray;

    :goto_0
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p4, p0, p3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p4, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;)V
    .locals 4

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V

    return-void
.end method

.method public final addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ActivityManager"

    const-string/jumbo p1, "Skipping saving the exit info due to ongoing loading from storage"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/app/ApplicationExitInfo;)V

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v3, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {p0, v5, v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    aget-object v4, v1, v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v5

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    return-object v0
.end method

.method public clearProcessExitInfo(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpHistoryProcessExitInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Last Timestamp of Persistence Into Persistent Storage: "

    const-string v1, "ACTIVITY MANAGER PROCESS EXIT INFO (dumpsys activity exit-info)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p1, v1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final forEachPackageLocked(Ljava/util/function/BiFunction;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

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

    if-eq v2, v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getExitInfo(Ljava/lang/String;IIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfosLocked(IILjava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_2
    new-instance p1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2, p3, p5}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;-><init>(IILjava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    new-instance p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-static {p5, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-gtz p4, :cond_2

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :try_start_3
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, p4

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_3

    invoke-interface {p5}, Ljava/util/List;->removeLast()Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getExitInfoLocked(IILjava/lang/String;)Landroid/app/ApplicationExitInfo;
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfo(Ljava/lang/String;IIILjava/util/List;)V

    iget-object p0, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    iget-object p0, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ApplicationExitInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p1, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public getProcessStateSummary(II)[B
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_1

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .locals 14

    move-object/from16 v0, p3

    move-wide/from16 v1, p5

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v3

    sub-long v5, p7, v1

    cmp-long v7, v1, v3

    if-gez v7, :cond_8

    cmp-long v3, p7, v3

    if-gtz v3, :cond_8

    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    if-gtz v7, :cond_1

    goto/16 :goto_9

    :cond_1
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".gz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v10, p4

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v10, 0x2000

    :try_start_2
    new-array v11, v10, [B

    invoke-virtual {v8, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    :goto_0
    cmp-long v1, v5, v3

    const/4 v2, 0x0

    if-lez v1, :cond_3

    int-to-long v12, v10

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v8, v11, v2, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    if-gez v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v9, v11, v2, v12}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v1, v12

    sub-long/2addr v5, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v1, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_2
    const/4 v4, 0x1

    move v5, v2

    :goto_3
    array-length v6, v0

    if-ge v5, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    aget-object v8, v0, v5

    invoke-virtual {v6, v8, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-eqz v6, :cond_5

    invoke-virtual {v6, v7, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->appendTraceIfNecessaryLocked(Ljava/io/File;I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;-><init>(I)V

    move-object/from16 p2, p0

    move/from16 p4, p1

    move-object/from16 p6, v0

    move-object/from16 p7, v2

    move/from16 p3, v3

    move-object/from16 p5, v7

    invoke-static/range {p2 .. p7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;)V

    :cond_7
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :goto_5
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_7
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    :cond_8
    :goto_9
    return-void
.end method

.method public handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 9

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(IILjava/lang/String;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v5

    if-eq v5, v4, :cond_0

    if-eq v5, v3, :cond_0

    if-eq v5, v2, :cond_0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    :goto_0
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v7

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p1

    sget-boolean v8, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v6

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    :goto_1
    const-string p1, "AppStateBroadcaster"

    const-string/jumbo v2, "TMO killProcesses"

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    new-instance v2, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;

    invoke-direct {v2, v5, v7, v1}, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    return-void
.end method

.method public handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 8

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(IILjava/lang/String;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v4, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, v4, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    :cond_3
    const/4 p1, 0x0

    if-eqz v2, :cond_4

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void

    :cond_4
    if-eqz v1, :cond_5

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    :cond_6
    return-void
.end method

.method public isFresh(J)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr p1, v2

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public loadExistingProcessExitInfo()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-eq v3, v1, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/AppExitInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v4, 0x10300000001L

    :try_start_1
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
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
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

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

    const-string v5, "Error in loading historical app exit info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_2

    :catch_1
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v2

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :goto_5
    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :cond_5
    throw p0
.end method

.method public final loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 11

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    const-string v0, ""

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v1, p0, v5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    const-wide v5, 0x20b00000002L

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v9

    :goto_1
    if-eq v9, v2, :cond_3

    if-eq v9, v3, :cond_2

    if-eq v9, v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v9, Landroid/app/ApplicationExitInfo;

    invoke-direct {v9}, Landroid/app/ApplicationExitInfo;-><init>()V

    invoke-virtual {v9, p1, v5, v6}, Landroid/app/ApplicationExitInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    iget-object v10, v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-wide v9, 0x10500000001L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v9

    iput v9, v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    :goto_2
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v9

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    iget v2, v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v0, v2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    const-wide v0, 0x10900000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void
.end method

.method public obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget v1, v1, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget v1, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setConnectionGroup(I)V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    invoke-virtual {v0, p2, p3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-boolean p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    invoke-virtual {v0, p1}, Landroid/app/ApplicationExitInfo;->setHasForegroundServices(Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1
.end method

.method public onPackageRemoved(Ljava/lang/String;IZ)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUid(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const/4 p3, -0x1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    :goto_1
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(IILjava/lang/String;Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    iget-object v2, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, v2, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object v4, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_3

    iget-object v5, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    iget-object v5, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, v1, :cond_2

    iget-object v6, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object v6, v0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public persistProcessExitInfo()V
    .locals 9

    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

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

    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v7, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v5}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

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

    :goto_0
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unable to write historical app exit info into persistent storage: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iput-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public final pruneAnrTracesIfNecessaryLocked()V
    .locals 6

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_4

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method public recycleRawRecord(Landroid/app/ApplicationExitInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {p0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeByUserIdLocked(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;-><init>(II)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;)V

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;-><init>(II)V

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;)V

    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final removePackageLocked(IILjava/lang/String;Z)V
    .locals 2

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p4, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p4, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseArray;

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseArray;

    if-nez p4, :cond_2

    goto :goto_4

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_2
    if-ltz p0, :cond_6

    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_5

    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_3

    :cond_5
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    return-void
.end method

.method public final scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1009

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    invoke-virtual {p1, p3}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    invoke-virtual {p1, p4}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 p2, 0x1008

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public schedulePersistProcessExitInfo(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    sget-wide v2, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    :goto_1
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setProcessStateSummary(II[B)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    move v3, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    move v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 3

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WIFEXITED(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/system/OsConstants;->WEXITSTATUS(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    :goto_0
    move p2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WIFSIGNALED(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    goto :goto_3

    :cond_4
    move v0, p2

    :goto_3
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    :cond_6
    :goto_4
    return-void
.end method
