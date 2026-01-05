.class public final Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;
.super Lcom/android/server/utils/AlarmQueue;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    const/4 v5, 0x0

    const-wide/32 v6, 0x57e40

    const-string v3, "*job.prefetch*"

    const-string/jumbo v4, "Prefetch threshold"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method


# virtual methods
.method public final isForUser(ILjava/lang/Object;)Z
    .locals 0

    check-cast p2, Landroid/content/pm/UserPackage;

    iget p0, p2, Landroid/content/pm/UserPackage;->userId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 12

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/content/pm/UserPackage;

    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget v4, v10, Landroid/content/pm/UserPackage;->userId:I

    iget-object v9, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v9, v5, v6}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "JobScheduler.Prefetch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarm expired for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Landroid/content/pm/UserPackage;->userId:I

    iget-object v11, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " at the wrong time"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget v4, v10, Landroid/content/pm/UserPackage;->userId:I

    iget-object v9, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(IJJLjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget v4, v10, Landroid/content/pm/UserPackage;->userId:I

    iget-object v9, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(IJJLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object v3, v3, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    iget v4, v10, Landroid/content/pm/UserPackage;->userId:I

    iget-object v9, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
