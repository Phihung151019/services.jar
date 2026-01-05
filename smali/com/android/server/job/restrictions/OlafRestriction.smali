.class public final Lcom/android/server/job/restrictions/OlafRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public isSystemAppCache:Landroid/util/ArrayMap;

.field public mForceDisabled:Z

.field public mForceRestricted:Z

.field public mHandleLockHandler:Lcom/android/server/job/restrictions/OlafRestriction$HandleLockHandler;

.field public mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field public mOlafOn:Z

.field public mOlafTracker:Lcom/android/server/job/restrictions/OlafRestriction$1;

.field public mOlafUid:I

.field public mPowerExemptionManager:Landroid/os/PowerExemptionManager;


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    const-string/jumbo v0, "Olaf status: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    iget-boolean v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceRestricted:Z

    if-eqz v0, :cond_1

    const-string v0, " | F"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceDisabled:Z

    if-eqz p0, :cond_2

    const-string p0, " | D"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string p0, ""

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getOlafStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    return p0
.end method

.method public final isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 8

    iget-boolean p2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceDisabled:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "android"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceRestricted:Z

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    return v7

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    if-ne v1, p2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->isSystemAppCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v4, 0x500000

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_7

    move v1, v7

    goto :goto_0

    :cond_7
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->isSystemAppCache:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v1

    :goto_1
    if-eqz p2, :cond_8

    return v0

    :cond_8
    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object v1, p2, Lcom/android/server/am/FreecessController;->mOlafJobExemptionList:Ljava/util/Set;

    if-nez v1, :cond_9

    sget-object v1, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    sget-object v1, Lcom/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsListManager;

    iget-object v2, v1, Lcom/android/server/am/mars/database/MARsListManager;->mOlafJobRestrictionExemptionList:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v1, v1, Lcom/android/server/am/mars/database/MARsListManager;->mOlafJobRestrictionExemptionList:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p2, Lcom/android/server/am/FreecessController;->mOlafJobExemptionList:Ljava/util/Set;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_9
    :goto_2
    iget-object p2, p2, Lcom/android/server/am/FreecessController;->mOlafJobExemptionList:Ljava/util/Set;

    if-eqz p2, :cond_a

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_3

    :cond_a
    move p2, v0

    :goto_3
    if-eqz p2, :cond_b

    return v0

    :cond_b
    iget-object p2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    invoke-virtual {p2, v6, v7}, Landroid/os/PowerExemptionManager;->isAllowListed(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_c

    return v0

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p2

    const/16 v0, 0x190

    if-ge p2, v0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_4

    :cond_d
    return v7

    :cond_e
    :goto_4
    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    xor-int/2addr p0, v7

    return p0

    :cond_f
    return v0
.end method

.method public final sendOnRestrictionStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mHandleLockHandler:Lcom/android/server/job/restrictions/OlafRestriction$HandleLockHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/job/restrictions/OlafRestriction$HandleLockThread;

    invoke-direct {v0, p0}, Lcom/android/server/job/restrictions/OlafRestriction$HandleLockThread;-><init>(Lcom/android/server/job/restrictions/OlafRestriction;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mHandleLockHandler:Lcom/android/server/job/restrictions/OlafRestriction$HandleLockHandler;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/server/job/restrictions/OlafRestriction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/restrictions/OlafRestriction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/restrictions/OlafRestriction;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string/jumbo p0, "OlafRestriction"

    const-string p1, "Failed to init handler!!!"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
