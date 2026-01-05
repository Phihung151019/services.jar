.class public final Lcom/android/server/AppStateTrackerImpl$MyHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_10

    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v2, v2, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v4, v3, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    if-nez v4, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v3, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v2}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v4

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v6, v1, :cond_5

    aget-object v2, v0, v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v6}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    iget v2, v1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_5

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v6, v2, :cond_5

    aget-object v3, v0, v6

    invoke-virtual {v3, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->removeAlarmsForUid(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_3
    iget v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v7}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    iget v2, v1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_5

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v2, v0

    :goto_2
    if-ge v6, v2, :cond_5

    aget-object v3, v0, v6

    invoke-virtual {v3, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->removeAlarmsForUid(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :pswitch_4
    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v2, v2, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v3, v3, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v3, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {v0, v6, v1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_5
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v7, :cond_3

    goto :goto_4

    :cond_3
    move v7, v6

    :goto_4
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v1, v0

    :goto_5
    if-ge v6, v1, :cond_5

    aget-object v2, v0, v6

    invoke-virtual {v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v1

    array-length v2, v1

    :goto_7
    if-ge v6, v2, :cond_6

    aget-object v3, v1, v6

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_6
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_7
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    return-void

    :pswitch_8
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v1

    array-length v2, v1

    :goto_8
    if-ge v6, v2, :cond_7

    aget-object v3, v1, v6

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_7
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_9
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v1

    array-length v2, v1

    :goto_9
    if-ge v6, v2, :cond_8

    aget-object v3, v1, v6

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_8
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_a
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v1

    array-length v2, v1

    :goto_a
    if-ge v6, v2, :cond_9

    aget-object v3, v1, v6

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_9
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_b
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v1

    array-length v2, v1

    :goto_b
    if-ge v6, v2, :cond_a

    aget-object v3, v1, v6

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    invoke-virtual {v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllAlarms()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_a
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_c
    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v2

    array-length v8, v2

    move v9, v6

    :goto_c
    if-ge v9, v8, :cond_d

    aget-object v10, v2, v9

    iget v11, v1, Landroid/os/Message;->arg1:I

    iget-object v12, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v11}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v13

    invoke-virtual {v10, v11, v13}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUidPackage(IZ)V

    invoke-virtual {v3, v11, v12}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v10, v11, v12}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUidPackage(ILjava/lang/String;)V

    :cond_b
    invoke-virtual {v3, v11, v12}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v13

    const-string v14, "/"

    const-string/jumbo v15, "Package "

    const-string v6, "AppStateTracker"

    if-nez v13, :cond_c

    const-string v13, " toggled into fg service restriction"

    invoke-static {v11, v15, v12, v14, v13}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v11, v12, v7}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    const/4 v6, 0x0

    goto :goto_d

    :cond_c
    const-string v13, " toggled out of fg service restriction"

    invoke-static {v11, v15, v12, v14, v13}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_d
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_d
    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v2

    array-length v8, v2

    :goto_e
    if-ge v6, v8, :cond_f

    aget-object v9, v2, v6

    iget v10, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v10}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateJobsForUid(IZ)V

    invoke-virtual {v9, v10}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAlarmsForUid(I)V

    if-eqz v11, :cond_e

    invoke-virtual {v9, v10}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAlarmsForUid(I)V

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_f
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0, v7, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    :goto_f
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_10
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final removeUid(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p0, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
