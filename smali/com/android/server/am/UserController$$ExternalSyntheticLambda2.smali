.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    const/4 v1, 0x4

    invoke-direct {v6, v1, v2, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {p0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchOnBeforeUserSwitching-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {}, Lcom/android/server/am/UserController;->getUserSwitchTimeoutMs()I

    move-result v1

    int-to-long v4, v1

    iget-object v7, v2, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/UserController;Ljava/util/concurrent/atomic/AtomicBoolean;JLcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V

    invoke-virtual {v7, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v4}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(II)V

    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    const/4 v4, 0x6

    invoke-direct {v0, v4, v3, v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "onBeforeUserSwitching"

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/am/UserController;->informUserSwitchObservers(Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/UserState;

    invoke-static {v1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "ActivityManager"

    const-string/jumbo v0, "User\'s CE storage got locked unexpectedly, leaving user locked."

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "User: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " CE storage got locked unexpectedly while unlocking!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget v2, p0, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v3, "finishUserUnlocking"

    const-string/jumbo v4, "Start getUserManager().onBeforeUnlockUser"

    const/4 v5, 0x1

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UM.onBeforeUnlockUser-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    const/4 v6, 0x2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v7, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v5

    new-instance v8, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "prepareUserData-"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v9, v6, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(ILandroid/content/pm/UserInfo;)V

    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-class v4, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManagerInternal;->markCeStoragePrepared(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "reconcileAppsData-"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v4, :cond_2

    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    iput-object v4, v3, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_2
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v1, v6, v7}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget v2, p0, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v3, "finishUserUnlocking"

    const-string v4, "End getUserManager().onBeforeUnlockUser"

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v3

    if-nez v3, :cond_3

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    iget-object v2, p0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v0, "finishUserUnlocking"

    const-string/jumbo v2, "sendToTarget USER_UNLOCK_MSG"

    invoke-static {v1, p0, v5, v0, v2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const-string/jumbo v2, "Locking CE storage for user #"

    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string p0, "ActivityManager"

    const-string/jumbo v0, "User was restarted, skipping key eviction"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->lockCeStorage(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserController$4;

    iget-object v3, v2, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    iget-object v3, v3, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;

    iget v5, v2, Lcom/android/server/am/UserController$4;->val$userStartMode:I

    const/4 v6, 0x1

    invoke-direct {v4, v1, v5, v6, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;-><init>(IIILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_5
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_STOPPING"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v4, Lcom/android/server/am/UserController$3;

    invoke-direct {v4, v1, p0}, Lcom/android/server/am/UserController$3;-><init>(ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;)V

    new-instance p0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {p0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "clearBroadcastQueueForUser-"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-[stopUser]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    :try_start_5
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v6}, Lcom/android/server/am/BroadcastQueueImpl;->cleanupDisabledPackageReceiversLocked(ILjava/lang/String;Ljava/util/Set;)Z

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "broadcast-ACTION_USER_STOPPING-"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-[stopUser]"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/UserController;->asyncTraceBegin(ILjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo p0, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 v6, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
