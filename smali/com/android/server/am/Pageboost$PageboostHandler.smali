.class public final Lcom/android/server/am/Pageboost$PageboostHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 p0, 0x1

    const-string/jumbo v0, "Record App IO : "

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    :pswitch_1
    sget-object v0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v3, p0

    check-cast v4, Lcom/android/server/pinner/PinnedFile;

    invoke-virtual {v4}, Lcom/android/server/pinner/PinnedFile;->close()V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo p0, "munlockAllFiles() done"

    const-string/jumbo v0, "Pageboost"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-object v6, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

    return-void

    :pswitch_2
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->getString()Ljava/util/LinkedList;

    move-result-object p0

    new-instance v0, Lcom/android/server/am/Pageboost$LRUPolicy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    sput-object v0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$LRUPolicy;->mlockAllFiles()V

    return-void

    :pswitch_3
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo p0, "Pageboost"

    const-string/jumbo v0, "stop alp by timeout"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    return-void

    :pswitch_4
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    return-void

    :pswitch_5
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez p0, :cond_2

    goto/16 :goto_a

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "pkg"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "alp"

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost;->prefetchPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->collectMemUsage(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    return-void

    :pswitch_7
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez p0, :cond_3

    goto/16 :goto_a

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object p0

    if-eqz p0, :cond_1d

    iget v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    const/16 v1, 0x12

    if-eqz v0, :cond_4

    const v0, 0x88b8

    invoke-static {v1, v0, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    return-void

    :cond_4
    const/16 v0, 0x1388

    invoke-static {v1, v0, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    return-void

    :pswitch_8
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_5

    goto/16 :goto_a

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v5, "pkg"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v5, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v5

    if-eqz v5, :cond_1d

    if-ne v1, p0, :cond_7

    iget v1, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    if-eqz v1, :cond_6

    invoke-static {v0, v3}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_6

    move v2, v0

    :cond_6
    iget v0, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    if-eq v0, v2, :cond_1d

    iput v2, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    iput p0, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    return-void

    :cond_7
    if-ne v1, v4, :cond_1d

    iget p0, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    if-ne p0, v2, :cond_1d

    iput v3, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    iput v3, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    return-void

    :pswitch_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$IoRecord;

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$IoRecord;->getResultFromKernel()V

    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->captureFinished(Lcom/android/server/am/Pageboost$IoRecord;)V

    iget-object p0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    if-eqz p0, :cond_1d

    sget-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-static {v0, v1, p0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->storeApp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    return-void

    :pswitch_a
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v1, :cond_8

    goto/16 :goto_a

    :cond_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    sget-boolean v5, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    if-eqz v1, :cond_a

    iget v5, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    if-ne v5, v4, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    sget v5, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    if-ge v4, v5, :cond_a

    move v4, p0

    goto :goto_2

    :cond_a
    :goto_1
    move v4, v3

    :goto_2
    if-eqz v4, :cond_1d

    iget v4, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    const-string/jumbo v5, "Pageboost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pid "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_c

    :goto_3
    const/16 v0, 0xa

    if-ge v3, v0, :cond_c

    :try_start_1
    invoke-static {v2, p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result v4

    if-lez v4, :cond_b

    goto :goto_4

    :cond_b
    const-wide/16 v5, 0x32

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v3, p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo v0, "Pageboost"

    const-string v2, "Failed to sleep"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_4
    if-lez v4, :cond_1d

    invoke-static {v1, v4}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto/16 :goto_a

    :pswitch_b
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_d

    goto/16 :goto_a

    :cond_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "launchtime"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v7, "0,0,0"

    const-string/jumbo v8, "pkg"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "Pageboost"

    const-string v9, "Launcher App Execution"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    if-eqz v8, :cond_15

    sget-object v8, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v8, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v8

    if-eqz v8, :cond_14

    sget-object v9, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v10, v9, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v9, v9, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_14

    :try_start_4
    iget v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    if-nez v9, :cond_e

    invoke-static {v0, v3}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result v9

    if-ne v1, v9, :cond_e

    iput v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    iput v4, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    :cond_e
    iget v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    if-ne v9, p0, :cond_f

    iput v4, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    :cond_f
    if-eqz v1, :cond_11

    iget v4, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    if-eq v1, v4, :cond_11

    iput v1, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    if-lez v2, :cond_10

    const/16 v1, 0x2710

    if-ge v2, v1, :cond_10

    iget v1, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    add-int/2addr v1, p0

    iput v1, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    iget-wide v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    int-to-long v11, v2

    add-long/2addr v9, v11

    iput-wide v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    :cond_10
    new-array v1, v5, [J

    invoke-virtual {v8, v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getIoinfo([J)V

    aget-wide v9, v1, v3

    const-wide/16 v11, -0x1

    cmp-long v4, v9, v11

    if-eqz v4, :cond_12

    const-string v4, ""

    move-object v7, v4

    move v4, v3

    :goto_5
    if-ge v4, v5, :cond_12

    aget-wide v9, v1, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, p0

    goto :goto_5

    :cond_11
    move v2, v3

    :cond_12
    sget-object v1, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v2}, Lcom/android/server/am/Pageboost$PageboostPredictor;->checkPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    add-int/2addr v1, p0

    iput v1, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    const-string/jumbo v1, "Pageboost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Prefetch Hit! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p0

    :cond_13
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v1, v8, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_14
    :goto_6
    sget-object p0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$LRUPolicy;

    iget-object v1, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    iput-object v6, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    monitor-exit v1

    move-object v6, v8

    goto :goto_7

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :cond_15
    :goto_7
    if-eqz v6, :cond_1d

    if-lez v2, :cond_16

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppEntry,"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    return-void

    :cond_16
    if-nez v2, :cond_1d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppReEntry,"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    return-void

    :pswitch_c
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_d
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1d

    invoke-static {p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smremovePackage(Ljava/lang/String;)V

    return-void

    :pswitch_f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1d

    invoke-static {p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smaddPackage(Ljava/lang/String;)V

    return-void

    :pswitch_10
    sget-object p0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez p0, :cond_17

    goto/16 :goto_a

    :cond_17
    sget-object p0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->storeAppLRU(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;)V

    return-void

    :pswitch_11
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_19

    goto :goto_a

    :cond_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_1d

    sget-object v2, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/am/Pageboost$PageboostAppCapture;->record_ongoing:Z

    if-eqz v0, :cond_1b

    iget v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    if-ne v2, v4, :cond_1a

    goto :goto_8

    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    sget v4, Lcom/android/server/am/Pageboost$PageboostAppCapture;->PAGEBOOST_IO_PREFETCH_LEVEL:I

    if-ge v2, v4, :cond_1b

    goto :goto_9

    :cond_1b
    :goto_8
    move p0, v3

    :goto_9
    if-eqz p0, :cond_1d

    const-string/jumbo p0, "Pageboost"

    const-string/jumbo v2, "capturing App IO"

    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    return-void

    :pswitch_12
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$smrealupdatePackages()V

    return-void

    :pswitch_13
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    if-eqz p0, :cond_1d

    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

    if-eqz p0, :cond_1c

    goto :goto_a

    :cond_1c
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppList;

    const-string/jumbo v0, "Pageboost"

    const-string v1, "Launcher Page Up"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcom/android/server/am/Pageboost$PageboostPredictor;->predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V

    return-void

    :pswitch_14
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    if-nez p0, :cond_1e

    :cond_1d
    :goto_a
    return-void

    :cond_1e
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->haltPredict()V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/Pageboost$PageboostAppList;

    const/16 v0, 0x190

    invoke-static {v5, v0, p0}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(IILjava/lang/Object;)V

    return-void

    :pswitch_15
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$smdelayedInitPageboost()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    return-void

    :catch_1
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo p0, "Pageboost"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "failed to handleMessage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
