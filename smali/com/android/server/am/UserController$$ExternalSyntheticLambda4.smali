.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/IProgressListener;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;IILandroid/os/IProgressListener;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$1:Landroid/content/pm/UserInfo;

    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$3:I

    iput-object p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$4:Landroid/os/IProgressListener;

    iput p6, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$5:I

    iput p7, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserController;

    iget-object v2, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$1:Landroid/content/pm/UserInfo;

    iget v3, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$2:I

    iget v4, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$3:I

    iget-object v5, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$4:Landroid/os/IProgressListener;

    iget v6, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$5:I

    iget v0, v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->f$6:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "User #"

    new-instance v8, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    const/4 v9, 0x1

    if-ne v4, v9, :cond_0

    move v11, v9

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    iget v12, v2, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v13, "updateStartedUserArrayStarting"

    invoke-virtual {v8, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget-object v14, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/UserState;

    const/4 v15, 0x5

    if-nez v14, :cond_1

    new-instance v14, Lcom/android/server/am/UserState;

    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {v14, v7}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    iget-object v7, v14, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v10, Lcom/android/server/am/UserController$UserProgressListener;

    invoke-direct {v10}, Landroid/os/IProgressListener$Stub;-><init>()V

    invoke-virtual {v7, v10}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    iget-object v7, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    move v7, v9

    move v10, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_1
    iget v10, v14, Lcom/android/server/am/UserState;->state:I

    if-eq v10, v15, :cond_2

    iget-object v10, v1, Lcom/android/server/am/UserController;->mDoNotAbortShutdownUserIds:Landroid/util/ArraySet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    move-object v3, v8

    goto/16 :goto_c

    :cond_3
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v12}, Lcom/android/server/am/UserController;->addUserToUserLru(I)V

    if-eqz v5, :cond_4

    iget-object v13, v14, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v13, v5}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    :cond_4
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v7, :cond_5

    const-string/jumbo v5, "setUserState"

    invoke-virtual {v8, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v5

    iget v7, v14, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v5, v12, v7}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_5
    const-string/jumbo v5, "updateConfigurationAndProfileIds"

    invoke-virtual {v8, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v11, :cond_9

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iput v12, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {}, Landroid/app/ActivityManager;->invalidateGetCurrentUserIdCache()V

    iget-boolean v13, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v12}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v15

    if-ne v15, v9, :cond_6

    const/16 v7, 0xf

    :cond_6
    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    if-eqz v13, :cond_8

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/KeyguardManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    invoke-virtual {v5, v12}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "ActivityManager"

    const-string/jumbo v7, "Locking the device before moving on with the user switch"

    invoke-static {v5, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v7}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    const-string/jumbo v13, "lockDeviceNowAndWaitForKeyguardShown"

    invoke-virtual {v7, v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v13, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    new-instance v9, Lcom/android/server/am/UserController$Injector$2;

    invoke-direct {v9, v13}, Lcom/android/server/am/UserController$Injector$2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v16, v7

    const-string/jumbo v7, "onSwitchCallback"

    invoke-virtual {v15, v7, v9}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v15}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    :try_start_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v7, v10

    const-wide/16 v9, 0x14

    invoke-virtual {v13, v9, v10, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_3

    :cond_7
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "User controller expected a callback while waiting to show the keyguard. Timed out after 20 seconds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0

    :cond_8
    move v7, v10

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_9
    move v7, v10

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateProfileRelatedCaches()V

    iget v5, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v1, v5}, Lcom/android/server/am/UserController;->addUserToUserLru(I)V

    :goto_3
    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    :cond_a
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget v4, v14, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    const-string/jumbo v4, "updateStateStopping"

    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget v4, v14, Lcom/android/server/am/UserState;->lastState:I

    invoke-virtual {v14, v4}, Lcom/android/server/am/UserState;->setState(I)V

    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    iget v5, v14, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v4, v12, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_4
    const/4 v10, 0x1

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_b
    const/4 v9, 0x5

    if-ne v4, v9, :cond_c

    const-string/jumbo v4, "updateStateShutdown"

    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/android/server/am/UserState;->setState(I)V

    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    iget v5, v14, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v4, v12, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_8
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_c
    move v10, v7

    :goto_5
    iget v4, v14, Lcom/android/server/am/UserState;->state:I

    if-nez v4, :cond_d

    const-string/jumbo v4, "updateStateBooting"

    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v12, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    :goto_6
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v4, v4, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v9, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;

    invoke-direct {v9, v4, v12, v11, v10}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZZ)V

    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v4, v4, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v5, v4, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    new-instance v9, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;

    invoke-direct {v9, v4, v12}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/MultiTaskingController;I)V

    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v4, "sendMessages"

    invoke-virtual {v8, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v11, :cond_e

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5, v12, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x1e

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v12, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, v3, v12, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/UserController;->getUserSwitchTimeoutMs()I

    move-result v5

    move-object/from16 p0, v8

    int-to-long v7, v5

    invoke-virtual {v4, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    :cond_e
    move-object/from16 p0, v8

    :goto_7
    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_f

    const/4 v4, 0x0

    goto :goto_8

    :cond_f
    move v4, v10

    :goto_8
    if-nez v12, :cond_10

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v9, 0x1

    goto :goto_9

    :cond_10
    const/4 v9, 0x0

    :goto_9
    if-nez v4, :cond_11

    if-eqz v9, :cond_12

    :cond_11
    invoke-virtual {v1, v12, v6, v0}, Lcom/android/server/am/UserController;->sendUserStartedBroadcast(III)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v11, :cond_13

    const-string/jumbo v2, "moveUserToForeground"

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v14}, Lcom/android/server/am/UserController;->moveUserToForeground(ILcom/android/server/am/UserState;)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_a

    :cond_13
    move-object/from16 v3, p0

    const-string/jumbo v2, "finishUserBoot"

    invoke-virtual {v3, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$10;)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_a
    if-nez v4, :cond_15

    if-eqz v9, :cond_14

    goto :goto_b

    :cond_14
    return-void

    :cond_15
    :goto_b
    const-string/jumbo v2, "sendRestartBroadcast"

    invoke-virtual {v3, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v1, v12, v6, v0}, Lcom/android/server/am/UserController;->sendUserStartingBroadcast(III)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :goto_c
    :try_start_a
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is shutting down - will start after full shutdown"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    new-instance v1, Lcom/android/server/am/UserController$PendingUserStart;

    invoke-direct {v1, v12, v4, v5}, Lcom/android/server/am/UserController$PendingUserStart;-><init>(IILandroid/os/IProgressListener;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    monitor-exit v13

    return-void

    :goto_d
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method
