.class public final Lcom/android/server/am/ProcessStateController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

.field public final mOomAdjuster:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;Z)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-direct {v5}, Lcom/android/server/am/ProcessStateController$GlobalState;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    if-eqz p7, :cond_0

    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjusterModernImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    new-instance v0, Lcom/android/server/am/OomAdjuster;

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    return-void
.end method

.method public static addPublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    return v1

    :cond_0
    iget p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget v4, p1, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v2, :cond_2

    iget-boolean p1, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_3

    if-ne v4, v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    iput v4, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    return-void
.end method

.method public static setForegroundServiceType(ILcom/android/server/am/ServiceRecord;)V
    .locals 0

    iput p0, p1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    return-void
.end method

.method public static startService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v6, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v5, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "android.permission.BIND_VOICE_INTERACTION"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-boolean v0, v4, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    :pswitch_1
    iput-boolean v1, v4, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    iget-object v0, v4, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;-><init>(ILcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_5
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_6

    iget-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/android/server/am/ProcessServiceRecord;->isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    :cond_6
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x2de34dfd -> :sswitch_2
        0x542fc942 -> :sswitch_1
        0x56545c98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final runFollowUpUpdate()V
    .locals 11

    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-wide v5, v2

    :goto_0
    if-ltz v4, :cond_4

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-wide v8, v8, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    iget-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-eqz v10, :cond_0

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    cmp-long v10, v8, v0

    if-gtz v10, :cond_1

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-wide v2, v7, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    cmp-long v7, v8, v5

    if-gez v7, :cond_2

    move-wide v5, v8

    goto :goto_1

    :cond_2
    cmp-long v7, v8, v2

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    cmp-long v2, v5, v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v5, v6, v0, v1}, Lcom/android/server/am/OomAdjuster;->scheduleFollowUpOomAdjusterUpdateLocked(JJ)V

    :cond_5
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void
.end method

.method public final runUpdate(ILcom/android/server/am/ProcessRecord;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(ILcom/android/server/am/ProcessRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v3, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    goto :goto_2

    :catchall_0
    move-exception p2

    iput-boolean v3, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    throw p2

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final setWakefulness(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->SCREEN_ON:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
