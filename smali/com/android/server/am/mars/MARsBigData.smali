.class public final Lcom/android/server/am/mars/MARsBigData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public PLEVdata:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mHQM:Landroid/os/SemHqmManager;

.field public mIntentReceiver:Lcom/android/server/am/mars/MARsBigData$1;


# virtual methods
.method public final sendBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v5, "1.0"

    const-string/jumbo v6, "sec"

    const/4 v1, 0x0

    const-string/jumbo v2, "Sluggish"

    const-string/jumbo v4, "ph"

    const-string v7, ""

    const-string v9, ""

    move-object v3, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final sendFGSTypeBigData()V
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget v1, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    sget-object v1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    iget-object v1, v1, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/ForegroundServiceRecord;

    :try_start_0
    const-string/jumbo v3, "PKGN"

    iget-object v4, v2, Lcom/android/server/am/mars/ForegroundServiceRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "UID"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "NUSD"

    iget v5, v2, Lcom/android/server/am/mars/ForegroundServiceRecord;->mForegroundType:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "BUSE"

    iget v2, v2, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FGSN"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$ForegroundServiceMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final updateBigdataInfo()V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/android/server/am/mars/MARsBigData$LevelInfo;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    new-instance v5, Lcom/android/server/am/mars/MARsBigData$LevelInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput v3, v5, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    aput-object v5, v2, v4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v4, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    :try_start_0
    iget-object v6, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v3

    :goto_1
    iget-object v8, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    iget-object v8, v4, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    move v9, v3

    :goto_2
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/MARsPackageInfo;

    iget v11, v10, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-eqz v11, :cond_4

    if-eq v11, v0, :cond_4

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    const/4 v13, 0x3

    if-eq v11, v13, :cond_2

    if-ne v11, v1, :cond_1

    aget-object v10, v2, v13

    iget v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v11, v0

    iput v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    aget-object v10, v2, v12

    iget v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v11, v0

    iput v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    goto :goto_3

    :cond_3
    aget-object v10, v2, v0

    iget v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v11, v0

    iput v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    goto :goto_3

    :cond_4
    aget-object v10, v2, v3

    iget v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v11, v0

    iput v11, v10, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    :goto_3
    add-int/2addr v9, v0

    goto :goto_2

    :cond_5
    add-int/2addr v7, v0

    goto :goto_1

    :cond_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>(Ljava/lang/String;[Lcom/android/server/am/mars/MARsBigData$LevelInfo;)V

    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    return-void

    :goto_4
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
