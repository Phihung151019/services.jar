.class public final Lcom/android/server/job/controllers/BackgroundJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public final mBroadcastReceiver:Lcom/android/server/job/controllers/BackgroundJobsController$1;

.field public final mForceAppStandbyListener:Lcom/android/server/job/controllers/BackgroundJobsController$2;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageStoppedState:Landroid/util/SparseArrayMap;

.field public final mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Background"

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
    sput-boolean v0, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mBroadcastReceiver:Lcom/android/server/job/controllers/BackgroundJobsController$1;

    new-instance p1, Lcom/android/server/job/controllers/BackgroundJobsController$2;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$2;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/job/controllers/BackgroundJobsController$2;

    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class p1, Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/AppStateTrackerImpl;

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method


# virtual methods
.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 3

    const-string v0, "Aconfig flags:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v1, "android.content.pm.stay_stopped"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "Stopped packages:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Ljava/lang/Object;I)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 7

    const-wide v0, 0x20b00000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v6, p1, v2, v3}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v3, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v3, p0, p1, v6}, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Ljava/lang/Object;I)V

    invoke-virtual {v2, p2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    :cond_0
    return-void
.end method

.method public final isPackageStoppedLocked(ILjava/lang/String;)Z
    .locals 4

    const-string v0, "JobScheduler.Background"

    const-string/jumbo v1, "Pulled stopped state of "

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v2, p2, p1}, Lcom/android/server/pm/Computer;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string p0, "Couldn\'t determine stopped state for unknown package: "

    invoke-static {p0, p2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final startTrackingLocked()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/job/controllers/BackgroundJobsController$2;

    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_UNSTOPPED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mBroadcastReceiver:Lcom/android/server/job/controllers/BackgroundJobsController$1;

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final updateJobRestrictionsLocked(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mUpdateJobFunctor:Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    iput p2, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mActiveState:I

    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mUpdateTimeElapsed:J

    iget-object p2, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    const/4 p2, 0x0

    iput p2, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    iput p2, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    const-wide/16 v1, 0x0

    sget-boolean p2, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    if-lez p1, :cond_1

    invoke-virtual {v5, p1, v0}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    :goto_1
    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    sub-long/2addr v1, v3

    :cond_2
    if-eqz p2, :cond_3

    iget p1, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Job status updated: %d/%d checked/total jobs, %d us"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler.Background"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_4
    return-void
.end method

.method public final updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z
    .locals 8

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/BackgroundJobsController;->isPackageStoppedLocked(ILjava/lang/String;)Z

    move-result v2

    iget-boolean v3, p1, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {p0, v4, v3}, Lcom/android/server/job/controllers/BackgroundJobsController;->isPackageStoppedLocked(ILjava/lang/String;)Z

    move-result v3

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v5

    :goto_2
    iget-object v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-nez v2, :cond_4

    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    move v6, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v6, v5

    :goto_4
    iget-boolean v7, p1, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    move-result p0

    const/4 v7, 0x5

    if-le p0, v7, :cond_5

    move p0, v5

    goto :goto_5

    :cond_5
    move p0, v4

    :goto_5
    const/high16 v7, 0x400000

    if-nez v2, :cond_9

    if-nez p0, :cond_9

    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    and-int/2addr p0, v5

    if-nez p0, :cond_8

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p0

    if-nez p0, :cond_6

    iget-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz p0, :cond_7

    :cond_6
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    and-int/2addr p0, v7

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    move p0, v4

    goto :goto_7

    :cond_8
    :goto_6
    move p0, v5

    :goto_7
    invoke-virtual {v3, v0, v1, p0}, Lcom/android/server/AppStateTrackerImpl;->areJobsRestricted(ILjava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_9

    move p0, v5

    goto :goto_8

    :cond_9
    move p0, v4

    :goto_8
    if-nez p4, :cond_a

    invoke-virtual {v3, v0}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result p4

    goto :goto_9

    :cond_a
    if-ne p4, v5, :cond_b

    move p4, v5

    goto :goto_9

    :cond_b
    move p4, v4

    :goto_9
    if-eqz p4, :cond_c

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "App "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " became active but still in NEVER bucket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p1, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    :cond_c
    iput-boolean v6, p1, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    invoke-virtual {p1, v7, p2, p3, p0}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p2

    if-eqz p2, :cond_d

    iput-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    move p0, v5

    goto :goto_a

    :cond_d
    move p0, v4

    :goto_a
    iget-boolean p2, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eq p4, p2, :cond_e

    iput-boolean p4, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    move v4, v5

    :cond_e
    or-int/2addr p0, v4

    return p0
.end method
