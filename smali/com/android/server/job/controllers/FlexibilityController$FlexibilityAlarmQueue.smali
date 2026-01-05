.class Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AlarmQueue;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-wide v6, p1, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    const/4 v5, 0x1

    const-string v3, "*job.flexibility_check*"

    const-string v4, "Flexible Constraint Check"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method


# virtual methods
.method public final isForUser(ILjava/lang/Object;)Z
    .locals 0

    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    iget p0, p2, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    sget-boolean v6, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "JobScheduler.Flex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alarm fired for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v6, v6, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-virtual {v6, v5, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->calculateNumDroppedConstraints(Lcom/android/server/job/controllers/JobStatus;J)V

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    :cond_1
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v6, v5}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    const/high16 v7, 0x200000

    invoke-virtual {v5, v7, v2, v3, v6}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const-string/jumbo v7, "last alarm set: "

    const-string/jumbo v8, "deadline proximity met: "

    const-string/jumbo v9, "scheduleDropNumConstraintsAlarm: "

    const-string v10, "Got invalid latest when scheduling alarm. prefetch="

    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v11, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v3

    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    move-wide v5, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide v12

    move-wide v14, v3

    move-wide v3, v5

    cmp-long v1, v12, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gtz v1, :cond_1

    const-string v1, "JobScheduler.Flex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " periodic="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    if-eq v3, v4, :cond_0

    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget v4, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_0
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    move v10, v5

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/FlexibilityController;->getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide v12

    sget-boolean v1, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v10, "JobScheduler.Flex"

    move/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " numApplied: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " numRequired: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " numSatisfied: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    move-object/from16 v17, v7

    iget v7, v9, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    invoke-virtual {v9, v2}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v9

    and-int/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " curTime: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " earliest: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " latest: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " nextTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move/from16 v16, v1

    move-object/from16 v17, v7

    :goto_0
    sub-long v3, v5, v14

    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-wide v9, v1, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    cmp-long v1, v3, v9

    if-gez v1, :cond_5

    if-eqz v16, :cond_3

    const-string v1, "JobScheduler.Flex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    if-eq v3, v4, :cond_4

    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget v4, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v10, 0x0

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_4
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v11

    return-void

    :cond_5
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v12, v3

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    monitor-exit v11

    return-void

    :cond_6
    sub-long v3, v5, v12

    cmp-long v1, v3, v9

    if-gtz v1, :cond_8

    if-eqz v16, :cond_7

    const-string v1, "JobScheduler.Flex"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-wide v3, v1, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    sub-long v12, v5, v3

    invoke-virtual {v0, v12, v13, v2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    monitor-exit v11

    return-void

    :cond_8
    invoke-virtual {v0, v12, v13, v2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    monitor-exit v11

    return-void

    :goto_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
