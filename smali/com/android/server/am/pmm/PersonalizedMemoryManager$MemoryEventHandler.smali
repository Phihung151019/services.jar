.class public final Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    sget-object p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    iget-object p1, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    const-string/jumbo v0, "getDmaBufSizeKb()="

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isListenerAppInstalled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsReporting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    if-eqz v3, :cond_3

    const-string p1, "DmaBufLeakDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", getLargestDmaBufProcess()="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isCameraRunning()="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mLeakThreshold="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mIsListenerAppInstalled="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_6

    iget-wide v6, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastLeakTime:J

    const-wide/32 v8, 0x927c0

    add-long/2addr v6, v8

    cmp-long v0, v1, v6

    if-lez v0, :cond_9

    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    move-result-wide v6

    long-to-float v0, v6

    invoke-virtual {p0, v0}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->hasLeak(F)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v6, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v1, v2, p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;JLandroid/content/Context;)V

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    invoke-interface {p1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :cond_6
    :try_start_4
    iget-wide v6, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastCheckTime:J

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    cmp-long p1, v1, v6

    if-lez p1, :cond_9

    iput-wide v1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastCheckTime:J

    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->hasLeak(F)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_1
    :try_start_6
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_3
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :cond_8
    :goto_4
    monitor-exit p0

    return-void

    :cond_9
    :goto_5
    monitor-exit p0

    :goto_6
    return-void

    :goto_7
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method
