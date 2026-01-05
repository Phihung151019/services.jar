.class public final Lcom/android/server/job/controllers/PrefetchController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mEstimatedLaunchTimeChangedListener:Lcom/android/server/job/controllers/PrefetchController$1;

.field public final mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

.field public final mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

.field public mLaunchTimeAllowanceMs:J

.field public mLaunchTimeThresholdMs:J

.field public final mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

.field public final mPrefetchChangedListeners:Landroid/util/ArraySet;

.field public final mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

.field public final mTrackedJobs:Landroid/util/SparseArrayMap;

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static -$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    const-string/jumbo v2, "Not caching launch time since we haven\'t seen any prefetch jobs for "

    sget-boolean v3, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "JobScheduler.Prefetch"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Estimated launch time for "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " changed to "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    sub-long v9, v7, v9

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from now)"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v10, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/util/ArraySet;

    if-nez v9, :cond_1

    if-eqz v3, :cond_3

    const-string v0, "JobScheduler.Prefetch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v2, v0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v6, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(IJJLjava/lang/String;)V

    move-object v13, v0

    move-wide v14, v2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v13, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, v13, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    check-cast v1, Lcom/android/server/job/controllers/FlexibilityController$1;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v6, v7

    move-wide/from16 v16, v11

    move v11, v0

    move-object v0, v1

    move-object v1, v9

    move-wide v8, v4

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/job/controllers/FlexibilityController$1;->onPrefetchCacheUpdated(Landroid/util/ArraySet;ILjava/lang/String;JJJ)V

    move-object v7, v1

    add-int/lit8 v0, v11, 0x1

    move-wide v11, v4

    move-wide v4, v8

    move-object v9, v7

    move-wide/from16 v7, p3

    goto :goto_0

    :cond_2
    move/from16 v1, p1

    move-object/from16 v6, p2

    move-object v7, v9

    move-object v0, v13

    move-wide v2, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(IJJLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v7}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_3
    :goto_1
    monitor-exit v10

    return-void

    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Prefetch"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/PrefetchController$1;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimeChangedListener:Lcom/android/server/job/controllers/PrefetchController$1;

    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/PrefetchController$PcHandler;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-void
.end method


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "PrefetchController"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    const-string/jumbo v2, "pc_launch_time_threshold_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "pc_launch_time_allowance_ms"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 9

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const-string v2, "Cached launch times:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    move v5, v2

    :goto_1
    iget-object v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v3, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v4, v6}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v6, " ("

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long/2addr v7, v0

    const/16 v6, 0x13

    invoke-static {v7, v8, p1, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    const-string v6, " from now)"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;-><init>(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public getLaunchTimeAllowanceMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    return-wide v0
.end method

.method public getLaunchTimeThresholdMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    return-wide v0
.end method

.method public final getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    sub-long/2addr p3, v3

    cmp-long p3, v1, p3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p1, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    const-wide p3, 0x7fffffffffffffffL

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide p3
.end method

.method public getPcConstants()Lcom/android/server/job/controllers/PrefetchController$PcConstants;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    return-object p0
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 13

    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, v1, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-nez p2, :cond_0

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v1, v6, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v1, v6, v2, v3}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result p2

    if-nez p2, :cond_1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(IJJLjava/lang/String;)V

    move-object v8, p1

    move-object v7, v0

    :goto_0
    move-wide v9, v2

    move-wide v11, v4

    goto :goto_1

    :cond_1
    move-object v7, p0

    move-object v8, p1

    goto :goto_0

    :goto_1
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    :cond_2
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-static {p2, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final maybeUpdateConstraintForPkgLocked(IJJLjava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    const/4 p6, 0x0

    if-nez p1, :cond_0

    return p6

    :cond_0
    move v0, p6

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p6, v1, :cond_1

    invoke-virtual {p1, p6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    move-result p0

    or-int/2addr v0, p0

    add-int/lit8 p6, p6, 0x1

    move-object p0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p0, "JobScheduler.Prefetch"

    const-string/jumbo p1, "Told app removed but given null package name."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public final onConstantsUpdatedLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onSystemServicesReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public final onUidBiasChangedLocked(III)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-ne p3, v2, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq p3, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    return-void
.end method

.method public final prepareForUpdatedConstantsLocked()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    return-void
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    const-string/jumbo v2, "pc_launch_time_allowance_ms"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "pc_launch_time_threshold_ms"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x36ee80

    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    const-wide/32 v4, 0x5265c00

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-wide v2, v1, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_2

    iput-wide p1, v1, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    iput-boolean v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    const-wide/16 v2, 0xa

    div-long/2addr p1, v2

    iget-object p0, v1, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    return-void

    :cond_1
    const-wide/32 v2, 0x1b7740

    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v2, 0x6ddd00

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-wide v2, v1, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_2

    iput-wide p1, v1, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    iput-boolean v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final startTrackingLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    check-cast v0, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimeChangedListener:Lcom/android/server/job/controllers/PrefetchController$1;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z
    .locals 3

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v2, 0x28

    if-ne v0, v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    goto :goto_1

    :cond_0
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1, v0}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const/high16 p2, 0x800000

    invoke-virtual {p1, p2, p4, p5, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public final updateThresholdAlarmLocked(IJJLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p6, p2, p3}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    sub-long v4, v2, p2

    iget-wide v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    cmp-long p0, v4, v6

    if-lez p0, :cond_1

    add-long/2addr p2, v6

    sub-long/2addr v2, p2

    invoke-static {p1, p6}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    add-long/2addr p4, v2

    invoke-virtual {v1, p4, p5, p0}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p1, p6}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {p1, p6}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public final willBeLaunchedSoonLocked(ILjava/lang/String;J)Z
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    add-long/2addr p3, v0

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    sub-long/2addr p3, v0

    cmp-long p0, p1, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
