.class public final Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/psitracker/PSITracker;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/psitracker/PSITracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mCollector:Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    if-eqz p0, :cond_8

    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    monitor-enter p1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;

    invoke-static {v0}, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->saveAvailableMemRecord2db(Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo p0, "PSITrackerCollector"

    const-string/jumbo p1, "finish save PSIAvailableMemRecords successfully!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-wide/16 v3, 0x0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p1}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v6, v3

    :cond_3
    :goto_2
    if-ge v1, v5, :cond_7

    :try_start_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v1, v1, 0x1

    check-cast v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    iget v9, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    const/16 v10, 0x190

    if-lt v9, v10, :cond_4

    iget-object v9, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v8, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v8}, Lcom/android/server/chimera/SystemRepository;->getMemmoryOfPid(I)J

    move-result-wide v8

    add-long/2addr v3, v8

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_4
    iget v9, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    const/16 v10, 0x2710

    if-ge v9, v10, :cond_6

    const/16 v10, 0x1388

    if-lt v9, v10, :cond_5

    const/16 v10, 0x176f

    if-le v9, v10, :cond_6

    :cond_5
    const/16 v10, 0x4b0

    if-eq v9, v10, :cond_6

    const/16 v10, 0x4b1

    if-ne v9, v10, :cond_3

    :cond_6
    iget-object v9, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v8, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v8}, Lcom/android/server/chimera/SystemRepository;->getMemmoryOfPid(I)J

    move-result-wide v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-long/2addr v6, v8

    goto :goto_2

    :goto_3
    move-wide v6, v3

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    iget-wide v8, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-string/jumbo p1, "PSITracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " getAvailable memInfo.totalMem = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  available = "

    const-string v5, " runningSize = "

    invoke-static {v1, v0, v8, v9, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " cachedSize = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mCollector:Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-wide v8, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->availMem:J

    iput-wide v6, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->running:J

    iput-wide v3, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->cached:J

    iput-wide v0, p1, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->checkTime:J

    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mCollector:Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    const-string/jumbo v1, "save PSIAvailableMemRecord...\n ("

    iget-object v3, v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    monitor-enter v3

    :try_start_4
    const-string/jumbo v4, "PSITrackerCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mCollector:Lcom/android/server/chimera/psitracker/PSITrackerCollector;

    iget-object p1, p1, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    if-eqz p1, :cond_8

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    :goto_5
    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method
