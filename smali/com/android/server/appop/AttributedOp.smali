.class public final Lcom/android/server/appop/AttributedOp;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAccessEvents:Landroid/util/LongSparseArray;

.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public mInProgressEvents:Landroid/util/ArrayMap;

.field public mPausedInProgressEvents:Landroid/util/ArrayMap;

.field public mRejectEvents:Landroid/util/LongSparseArray;

.field public final parent:Lcom/android/server/appop/AppOpsService$Op;

.field public final persistentDeviceId:Ljava/lang/String;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    return-void
.end method

.method public static add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 10

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    :cond_2
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 7

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    new-instance v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(Landroid/app/AppOpsManager$NoteOpEvent;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final accessed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p6

    move-wide v1, v8

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-wide v8, v1

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    move v3, v2

    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    move v6, v3

    move-object v3, v1

    move v1, v6

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/LegacyHistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    move v3, v2

    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    if-nez p0, :cond_0

    move-object/from16 v5, p3

    :goto_0
    move v4, v3

    move-object v3, v1

    move v1, v4

    move-object v4, p2

    move/from16 v6, p5

    goto :goto_1

    :cond_0
    move-object v5, p0

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    invoke-static {p9, p10}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide p9

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    if-eq p5, v0, :cond_2

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p5, p6, p7, p8}, Landroid/app/AppOpsManager$OpEventProxyInfo;->reinit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {v0, p5, p6, p7, p8}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object p5, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p6, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p6, p9, p10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz p6, :cond_3

    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-object v2, p6

    move-object p6, p0

    move-object p0, v2

    invoke-virtual/range {p0 .. p6}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    return-void

    :cond_3
    iget-object p6, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    new-instance p0, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {p6, p9, p10, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public final createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 15

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-static {v0}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    iget v6, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    iget v7, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    new-instance v8, Landroid/app/AppOpsManager$NoteOpEvent;

    iget-wide v9, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    iget-wide v11, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    sub-long v11, v1, v11

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget-object v13, v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-static {v1}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    new-instance v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result p0

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v2
.end method

.method public final doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :goto_0
    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final finishOrPause(Landroid/os/IBinder;ZZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v2

    const-string v5, "AppOps"

    if-nez v2, :cond_1

    const-string/jumbo v0, "No ops running or paused"

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    const-string/jumbo v0, "No op running or paused for the client"

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p3, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    iget v5, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    sub-int/2addr v5, v3

    iput v5, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-nez v5, :cond_c

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v1, v2}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v4, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    return-void

    :cond_4
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-nez p3, :cond_5

    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    sub-int/2addr v5, v3

    iput v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    :cond_5
    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-eqz v5, :cond_6

    if-eqz p3, :cond_c

    :cond_6
    if-nez p3, :cond_7

    :try_start_0
    iget-object v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_7
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v2, :cond_8

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    :cond_8
    iget-object v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v2, :cond_9

    new-instance v2, Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget-object v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {v2, v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    move-object v11, v2

    goto :goto_1

    :cond_9
    move-object v11, v4

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    sub-long v9, v5, v7

    new-instance v6, Landroid/app/AppOpsManager$NoteOpEvent;

    iget-wide v7, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    invoke-direct/range {v6 .. v11}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    iget v7, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    invoke-static {v5, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v9, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v10, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    iget v13, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    invoke-virtual {v6}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v16

    invoke-virtual {v6}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v14

    iget v6, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    iget v7, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    iget-object v4, v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter v4

    move-object/from16 v19, v5

    :try_start_1
    iget v5, v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    if-ne v5, v3, :cond_b

    invoke-virtual {v2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v4

    goto/16 :goto_5

    :cond_a
    move-object v5, v4

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v3

    move/from16 v21, v7

    move-object v7, v3

    move/from16 v3, v21

    invoke-virtual/range {v7 .. v15}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-object/from16 v18, v10

    move-object/from16 v20, v11

    iget-object v7, v2, Lcom/android/server/appop/LegacyHistoricalRegistry;->mDiscreteRegistry:Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    move v10, v9

    move v9, v8

    move v8, v10

    move-wide/from16 v10, v16

    move-wide/from16 v16, v14

    move-wide v14, v10

    move v11, v12

    move v10, v13

    move v13, v3

    move v12, v6

    invoke-virtual/range {v7 .. v20}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->recordDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_b
    move-object v5, v4

    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-nez p3, :cond_c

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v2, v1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez p2, :cond_c

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v5, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v6, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    iget v10, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    iget v11, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    :cond_c
    :goto_4
    return-void

    :goto_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final isPaused()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onUidStateChanged(I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v7, p1

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :goto_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v15, 0x0

    move v2, v15

    :goto_1
    if-ge v2, v13, :cond_7

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v3, :cond_5

    iget v4, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    if-eq v4, v7, :cond_5

    iget v4, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    iget v5, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    :try_start_0
    iget v6, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    const/4 v8, 0x1

    iput v8, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    iget-object v9, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget-object v10, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    invoke-virtual {v0, v10, v8, v15}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7

    if-eqz v9, :cond_2

    move-object v10, v1

    :try_start_1
    iget-object v1, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    move v11, v2

    :try_start_2
    iget v2, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v16
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    move/from16 v23, v4

    :try_start_3
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v24, v5

    :try_start_4
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    move/from16 v17, v8

    iget v8, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    move/from16 v18, v6

    move-object v6, v9

    iget v9, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v19, v10

    :try_start_5
    iget v10, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move/from16 v20, v11

    const/4 v11, 0x1

    move/from16 v25, v13

    move/from16 v15, v20

    move-object v13, v3

    move/from16 v3, v16

    :try_start_6
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    move-object/from16 v0, p0

    move/from16 v7, p1

    goto :goto_7

    :catch_0
    :goto_2
    move-object/from16 v0, p0

    move/from16 v7, p1

    :catch_1
    move-object/from16 v1, v19

    goto/16 :goto_9

    :catch_2
    :goto_3
    move v15, v11

    :goto_4
    move/from16 v25, v13

    move-object v13, v3

    goto :goto_2

    :catch_3
    :goto_5
    move-object/from16 v19, v10

    goto :goto_3

    :catch_4
    :goto_6
    move/from16 v24, v5

    goto :goto_5

    :catch_5
    move/from16 v23, v4

    goto :goto_6

    :catch_6
    move v15, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v19, v10

    goto :goto_4

    :cond_2
    move-object/from16 v19, v1

    move v15, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v18, v6

    move/from16 v17, v8

    move/from16 v25, v13

    move-object v13, v3

    iget-object v1, v13, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    iget v2, v13, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    iget v8, v13, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    iget v9, v13, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    iget v10, v13, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v11, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v7, p1

    :try_start_7
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    :goto_7
    if-eqz v12, :cond_3

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_8

    :cond_3
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v2, :cond_6

    iget v3, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v6, v18, -0x1

    add-int/2addr v6, v3

    iput v6, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_a

    :catch_7
    move-object/from16 v19, v1

    move v15, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v13

    move-object v13, v3

    :catch_8
    :goto_9
    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "Cannot switch to new uidState "

    const-string v3, "AppOps"

    invoke-static {v7, v2, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v5, v13, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    const/16 v22, 0x0

    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v8, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    move-object/from16 v19, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v21, v5

    move-object/from16 v16, v6

    move-object/from16 v20, v8

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    goto :goto_a

    :cond_5
    move-object/from16 v19, v1

    move v15, v2

    move/from16 v25, v13

    move-object/from16 v1, v19

    :cond_6
    :goto_a
    add-int/lit8 v2, v15, 0x1

    move/from16 v13, v25

    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_7
    :goto_b
    return-void
.end method

.method public final rejected(II)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/appop/AttributedOp;->rejected(IIJ)V

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    iget-object p0, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mInMemoryLock:Lcom/android/server/appop/AppOpsService;

    monitor-enter p0

    :try_start_0
    iget v1, v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Interaction before persistence initialized"

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    const-wide/16 v9, 0x1

    move v7, p1

    move v8, p2

    invoke-virtual/range {v2 .. v10}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final rejected(IIJ)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v3, :cond_0

    new-instance v3, Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    :cond_0
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-wide/from16 v5, p3

    invoke-virtual/range {v4 .. v10}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    new-instance v11, Landroid/app/AppOpsManager$NoteOpEvent;

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    move-wide/from16 v12, p3

    invoke-direct/range {v11 .. v16}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v0, v1, v2, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public final startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    if-nez p11, :cond_0

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p12, :cond_0

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    move v5, v4

    iget v4, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v8, 0x1

    move v7, v5

    move-object v5, v3

    move v3, v7

    move/from16 v7, p2

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    goto :goto_0

    :cond_0
    move/from16 v7, p2

    move/from16 v9, p9

    :goto_0
    const/4 v2, 0x1

    if-eqz p12, :cond_1

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1

    :cond_1
    if-nez p12, :cond_2

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-nez v3, :cond_2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_2
    :goto_1
    if-eqz p12, :cond_3

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-nez v6, :cond_9

    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v6, v6, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    move/from16 p11, v2

    move-object v8, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v16, v8

    new-instance v8, Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-static {v8, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v8

    invoke-virtual {v6}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    const/4 v10, -0x1

    if-eq v11, v10, :cond_5

    iget-object v10, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    invoke-virtual {v10}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v10, :cond_4

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/AppOpsManager$OpEventProxyInfo;->reinit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v10, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x0

    if-eqz v0, :cond_7

    iget-object v6, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    iput-wide v4, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    iput-wide v2, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    iput-object v1, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    iput-object v8, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    iput v7, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    iput v15, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    move/from16 v12, p8

    iput v12, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz v2, :cond_6

    invoke-virtual {v6, v2}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_6
    iput-object v10, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    iput v9, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    move/from16 v14, p10

    iput v14, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    invoke-interface {v1, v0, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :goto_4
    move-object v6, v0

    move-object/from16 v8, v16

    goto :goto_5

    :cond_7
    move/from16 v12, p8

    move/from16 v14, p10

    new-instance v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    iput-wide v2, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartElapsedTime:J

    iput-object v1, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    iput v7, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mVirtualDeviceId:I

    iput-object v8, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    iput v15, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    iput-object v10, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    iput v12, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mFlags:I

    iput v9, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionFlags:I

    iput v14, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    invoke-interface {v1, v0, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_4

    :goto_5
    invoke-virtual {v8, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move-object/from16 v0, p0

    goto :goto_6

    :cond_9
    move/from16 v12, p8

    move/from16 v14, p10

    move/from16 p11, v2

    iget v0, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mUidState:I

    if-eq v15, v0, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/appop/AttributedOp;->onUidStateChanged(I)V

    :goto_6
    iget v1, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-eqz p12, :cond_b

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v15, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/16 v26, 0x1

    move/from16 v20, p7

    move-object/from16 v17, v2

    move/from16 v16, v3

    move-wide/from16 v22, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v24, v9

    move/from16 v21, v12

    move/from16 v25, v14

    move-object v14, v1

    invoke-virtual/range {v14 .. v26}, Lcom/android/server/appop/LegacyHistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    move-object v13, v0

    :goto_7
    const/4 v0, 0x0

    move/from16 p6, p7

    move-object/from16 p4, v0

    move-object/from16 p0, v1

    move-object/from16 p3, v2

    move/from16 p1, v3

    move/from16 p2, v4

    move-object/from16 p5, v13

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    return-void
.end method
