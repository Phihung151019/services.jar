.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;ZJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$1:Z

    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$3:J

    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$4:J

    iput-wide p9, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$5:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$1:Z

    iget-wide v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$2:J

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$3:J

    iget-wide v7, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$4:J

    iget-wide v12, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$5:J

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    sget v9, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v9, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v11, v10, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget-boolean v14, v10, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    move v15, v2

    move-wide/from16 v16, v3

    if-eqz v14, :cond_4

    const/4 v4, 0x5

    if-lt v11, v4, :cond_5

    const/16 v4, 0xa

    if-gt v11, v4, :cond_5

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v4, v4, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-wide v10, v9, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v12}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-wide v12, v9, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    :goto_0
    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_1
    iget-wide v12, v9, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    goto :goto_0

    :goto_1
    iget-wide v2, v9, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_5

    cmp-long v4, v10, p0

    if-eqz v4, :cond_5

    const-wide/16 v14, 0x3

    mul-long/2addr v14, v10

    const-wide/16 v18, 0x2

    div-long v14, v14, v18

    cmp-long v4, v12, v14

    if-lez v4, :cond_5

    add-long v14, v10, v16

    cmp-long v4, v12, v14

    if-lez v4, :cond_5

    const/16 v4, 0x80

    const-string v9, "Kill"

    invoke-static {v4, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v9}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, " in idle maint: pss="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v9, " in idle maint: rss="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v9}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, ", swapPss="

    const-string v14, ", initialPss="

    invoke-static {v4, v9, v2, v3, v14}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v2, ", initialRss="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", period="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v2, ", lowRamPeriod="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v2, "ActivityManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    move-object v2, v0

    new-instance v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda21;

    move-wide v5, v10

    move-wide v3, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;JJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move-object v2, v0

    const-wide/16 p0, 0x0

    const/16 v0, 0xe

    if-ge v11, v0, :cond_5

    if-ltz v11, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    move-wide/from16 v4, p0

    :try_start_2
    iput-wide v4, v9, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget v10, v10, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    :goto_4
    return-void
.end method
