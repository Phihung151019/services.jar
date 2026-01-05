.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 22

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/blob/BlobStoreManagerService;

    move-object/from16 v2, p2

    check-cast v2, Lcom/android/server/blob/BlobStoreSession;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Failed to commit: too many committed blobs. count: "

    iget-object v3, v2, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, v2, Lcom/android/server/blob/BlobStoreSession;->mState:I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v3, 0x2

    if-eq v4, v3, :cond_c

    const/4 v3, 0x3

    if-eq v4, v3, :cond_b

    const/4 v3, 0x4

    if-eq v4, v3, :cond_0

    const/4 v0, 0x5

    if-eq v4, v0, :cond_c

    const-string v0, "BlobStore"

    iget-object v3, v2, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget v2, v2, Lcom/android/server/blob/BlobStoreSession;->mState:I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid session state: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    iget-object v3, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget v4, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    iget-object v5, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v8, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;

    const/4 v9, 0x2

    invoke-direct {v8, v5, v4, v6, v9}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-virtual {v1, v8}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    sget v5, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    const/4 v6, 0x1

    if-lt v4, v5, :cond_1

    const-string v5, "BlobStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; blob: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    iget v0, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-wide v4, v2, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    iget v7, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    iget-wide v8, v2, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v10

    const/4 v12, 0x4

    const/16 v6, 0x12a

    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    monitor-exit v3

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_1
    iget-object v0, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v4, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/server/blob/BlobMetadata;

    iget-object v4, v1, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    iget-wide v8, v2, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    iget-object v5, v2, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-direct {v0, v4, v8, v9, v5}, Lcom/android/server/blob/BlobMetadata;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V

    invoke-virtual {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->addBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    goto :goto_0

    :goto_1
    iget-object v0, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    iget-object v8, v4, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v9, v4, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    move v10, v7

    :goto_2
    if-ge v10, v9, :cond_4

    iget-object v11, v4, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/blob/BlobMetadata$Committer;

    iget v12, v11, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v12, v5, :cond_3

    iget-object v12, v11, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    monitor-exit v8

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v11, 0x0

    :goto_3
    const-wide/16 v8, 0x0

    if-nez v11, :cond_5

    move-wide v12, v8

    goto :goto_4

    :cond_5
    :try_start_5
    iget-wide v12, v11, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    :goto_4
    new-instance v14, Lcom/android/server/blob/BlobMetadata$Committer;

    iget-object v15, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    iget v0, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-virtual {v2}, Lcom/android/server/blob/BlobStoreSession;->getBlobAccessMode()Lcom/android/server/blob/BlobAccessMode;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v5, v12, v8

    if-eqz v5, :cond_6

    sget-wide v8, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    add-long/2addr v8, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v5, v8, v20

    if-gez v5, :cond_7

    :cond_6
    move/from16 v16, v0

    goto :goto_5

    :cond_7
    move/from16 v16, v0

    move-wide/from16 v18, v12

    :goto_5
    invoke-direct/range {v14 .. v19}, Lcom/android/server/blob/BlobMetadata$Committer;-><init>(Ljava/lang/String;ILcom/android/server/blob/BlobAccessMode;J)V

    invoke-virtual {v4, v14}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoLocked()V

    iget v0, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    iget-wide v8, v4, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v19

    const/16 v21, 0x1

    const/16 v15, 0x12a

    move/from16 v16, v0

    move-wide/from16 v17, v8

    invoke-static/range {v15 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    invoke-virtual {v2, v7}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catch_0
    move-exception v0

    if-nez v11, :cond_8

    :try_start_7
    invoke-virtual {v4, v14}, Lcom/android/server/blob/BlobMetadata;->removeCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v4, v11}, Lcom/android/server/blob/BlobMetadata;->addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V

    :goto_6
    const-string v5, "BlobStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error committing the blob: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v9, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    iget-wide v10, v2, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v12

    const/4 v14, 0x2

    const/16 v8, 0x12a

    invoke-static/range {v8 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    invoke-virtual {v2, v6}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    iget-wide v5, v2, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    iget-wide v7, v4, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_9

    invoke-virtual {v1, v4}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    iget-object v0, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    iget-object v5, v4, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_7
    iget-wide v5, v2, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    iget-wide v7, v4, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_a

    invoke-virtual {v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    :cond_a
    iget v0, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-wide v4, v2, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_a

    :goto_8
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :goto_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :cond_b
    iget-object v0, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    :cond_c
    iget-object v4, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_a
    invoke-virtual {v1, v2}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    iget v0, v2, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->getUserSessionsLocked(I)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-wide v2, v2, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_a
    iget-object v2, v1, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    invoke-virtual {v1}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsLocked()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_c

    :catch_1
    :goto_b
    :try_start_c
    monitor-exit v2

    return-void

    :goto_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method
