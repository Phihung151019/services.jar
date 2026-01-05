.class public final Lcom/android/server/job/controllers/ComponentController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/job/controllers/ComponentController$1;

.field public final mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

.field public final mServiceProcessCache:Landroid/util/SparseArrayMap;


# direct methods
.method public static -$$Nest$mupdateComponentStateForPackage(Lcom/android/server/job/controllers/ComponentController;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ComponentController;->clearComponentsForPackageLocked(ILjava/lang/String;)V

    new-instance v1, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/server/job/controllers/ComponentController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentStatesLocked(Ljava/util/function/Predicate;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Component"

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
    sput-boolean v0, Lcom/android/server/job/controllers/ComponentController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance p1, Lcom/android/server/job/controllers/ComponentController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/ComponentController$1;-><init>(Lcom/android/server/job/controllers/ComponentController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController;->mBroadcastReceiver:Lcom/android/server/job/controllers/ComponentController$1;

    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    new-instance p1, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;-><init>(Lcom/android/server/job/controllers/ComponentController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController;->mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    return-void
.end method


# virtual methods
.method public final clearComponentsForPackageLocked(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 5

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v2, p2

    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, "-"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 0

    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentEnabledStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/ComponentController;->clearComponentsForPackageLocked(ILjava/lang/String;)V

    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    return-void
.end method

.method public final startTrackingLocked()V
    .locals 10

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/job/controllers/ComponentController;->mBroadcastReceiver:Lcom/android/server/job/controllers/ComponentController$1;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/server/job/controllers/ComponentController;->mBroadcastReceiver:Lcom/android/server/job/controllers/ComponentController$1;

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final updateComponentEnabledStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 7

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result v2

    const-string v3, "JobScheduler.Component"

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Job exists for non-existent package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v2

    :goto_0
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    :goto_1
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController;->mServiceProcessCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, v1, v0, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v2

    :goto_2
    sget-boolean v0, Lcom/android/server/job/controllers/ComponentController;->DEBUG:Z

    if-eqz v0, :cond_3

    if-nez p0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " component not present"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final updateComponentStatesLocked(Ljava/util/function/Predicate;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController;->mComponentStateUpdateFunctor:Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;

    iget-object v1, v0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    iget-object p1, v0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, v0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_0
    return-void
.end method
