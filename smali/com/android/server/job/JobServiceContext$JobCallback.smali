.class public final Lcom/android/server/job/JobServiceContext$JobCallback;
.super Landroid/app/job/IJobCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field public final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobServiceContext;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final acknowledgeGetTransferredDownloadBytesMessage(IIJ)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    iget-object p2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-wide p3, p1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    monitor-exit p2

    return-void

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final acknowledgeGetTransferredUploadBytesMessage(IIJ)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    iget-object p2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-wide p3, p1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    monitor-exit p2

    return-void

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final acknowledgeStartMessage(IZ)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    const-string/jumbo v0, "finished start"

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    return-void
.end method

.method public final acknowledgeStopMessage(IZ)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    return-void
.end method

.method public final completeWork(II)Z
    .locals 9

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    iget-object v7, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobWorkItem;

    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v8

    if-ne v8, p2, :cond_2

    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {p2}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p1, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final dequeueWork(I)Landroid/app/job/JobWorkItem;
    .locals 7

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :try_start_2
    iget p0, p1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x3

    if-eq p0, v4, :cond_7

    const/4 v4, 0x4

    if-ne p0, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    :cond_3
    if-nez v3, :cond_5

    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string/jumbo v4, "last work dequeued"

    const/16 v6, 0xa

    invoke-virtual {p0, v5, v6, v4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    const-string/jumbo p0, "last work dequeued"

    invoke-virtual {p1, p0, v5}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    :goto_0
    if-eqz v3, :cond_6

    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p1, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_6
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_7
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final handleAbandonedJob(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "abandonedJob:"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, v0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    iget p0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v5, 0x2

    if-eq p0, v5, :cond_1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_3
    iget-object p0, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    :try_start_4
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mIsAbandoned:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/32 v0, 0x20000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final jobFinished(IZ)V
    .locals 6

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string/jumbo v3, "app called jobFinished"

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {p0, v4, v5, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    const-string/jumbo p0, "app called jobFinished"

    invoke-virtual {p1, p0, p2}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(Ljava/lang/String;Z)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setNotification(IILandroid/app/Notification;I)V
    .locals 10

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object p1, v1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p0, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne v4, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobNotificationCoordinator;->enqueueNotification(Lcom/android/server/job/JobServiceContext;Ljava/lang/String;IIILandroid/app/Notification;I)V

    iget-boolean p0, v1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    iget p0, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    :cond_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :try_start_3
    const-string p0, "JobServiceContext"

    const-string p2, "Calling UID isn\'t the same as running job\'s UID..."

    invoke-static {p0, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string p2, "Can\'t post notification on behalf of another app"

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final updateEstimatedNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    iget-object p2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_estimated_network_bytes_updated"

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    sget-object p0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-static {p3, p4}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    sget-object p0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-static {p5, p6}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    iget-wide v0, p1, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    cmp-long p0, p3, v2

    if-eqz p0, :cond_2

    cmp-long p0, v0, p3

    if-gez p0, :cond_1

    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_increased"

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_decreased"

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    iget-wide v0, p1, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_4

    cmp-long p0, p5, v2

    if-eqz p0, :cond_4

    cmp-long p0, v0, p5

    if-gez p0, :cond_3

    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_increased"

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    if-lez p0, :cond_4

    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_decreased"

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    iput-wide p3, p1, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    iput-wide p5, p1, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateTransferredNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    iget-object p2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_transferred_network_bytes_updated"

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    sget-object p0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-static {p3, p4}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    sget-object p0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-static {p5, p6}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    iget-wide v0, p1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    cmp-long p0, p3, v2

    if-eqz p0, :cond_2

    cmp-long p0, v0, p3

    if-gez p0, :cond_1

    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_increased"

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_decreased"

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    iget-wide v0, p1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_4

    cmp-long p0, p5, v2

    if-eqz p0, :cond_4

    cmp-long p0, v0, p5

    if-gez p0, :cond_3

    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_increased"

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    if-lez p0, :cond_4

    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_decreased"

    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    iput-wide p3, p1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    iput-wide p5, p1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
