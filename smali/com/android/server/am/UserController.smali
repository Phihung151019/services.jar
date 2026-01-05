.class public Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public volatile mAllowUserUnlocking:Z

.field public mBackgroundUserScheduledStopTimeSecs:I

.field public final mCompletedEventTypes:Landroid/util/SparseIntArray;

.field public volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

.field public mCurrentProfileIds:[I

.field public volatile mCurrentUserId:I

.field public mDelayUserDataLocking:Z

.field public final mDoNotAbortShutdownUserIds:Landroid/util/ArraySet;

.field public final mHandler:Landroid/os/Handler;

.field public mInitialized:Z

.field public final mInjector:Lcom/android/server/am/UserController$Injector;

.field public mIsBroadcastSentForSystemUserStarted:Z

.field public mIsBroadcastSentForSystemUserStarting:Z

.field public final mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

.field public volatile mLastUserUnlockingUptime:J

.field public final mLock:Ljava/lang/Object;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaxRunningUsers:I

.field public final mPendingTargetUserIds:Ljava/util/ArrayDeque;

.field public final mPendingUserStarts:Ljava/util/List;

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public mStartedUserArray:[I

.field public final mStartedUsers:Landroid/util/SparseArray;

.field public mStopUserOnSwitch:I

.field public final mSwitchingFromUserMessage:Landroid/util/SparseArray;

.field public final mSwitchingToUserMessage:Landroid/util/SparseArray;

.field public volatile mTargetUserId:I

.field public mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mUserLifecycleListener:Lcom/android/server/am/UserController$1;

.field public final mUserLru:Ljava/util/ArrayList;

.field public final mUserProfileGroupIds:Landroid/util/SparseIntArray;

.field public final mUserSwitchObservers:Landroid/os/RemoteCallbackList;

.field public mUserSwitchUiEnabled:Z


# direct methods
.method public static -$$Nest$smasyncTraceEnd(ILjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ActivityManager"

    const-string v0, "%s - asyncTraceEnd(%d)"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/UserController;->mBackgroundUserScheduledStopTimeSecs:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    filled-new-array {v1}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mSwitchingFromUserMessage:Landroid/util/SparseArray;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mSwitchingToUserMessage:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    iput v0, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mDoNotAbortShutdownUserIds:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/am/UserController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;)V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mUserLifecycleListener:Lcom/android/server/am/UserController$1;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Handler;

    iget-object v4, p1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p1, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    iget-object v4, p1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/UserState;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    iget-object v4, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v5, Lcom/android/server/am/UserController$UserProgressListener;

    invoke-direct {v5}, Landroid/os/IProgressListener$Stub;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p1, p1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    return-void
.end method

.method public static asyncTraceBegin(ILjava/lang/String;)V
    .locals 3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ActivityManager"

    const-string v2, "%s - asyncTraceBegin(%d)"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public static getUserSwitchTimeoutMs()I
    .locals 2

    const-string/jumbo v0, "debug.usercontroller.user_switch_timeout_ms"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/16 v0, 0xbb8

    return v0
.end method

.method public static showEventLog(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/EventLogTags;->writeBootProgressAmsState(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "!@AM_BOOT_PROGRESS , uid : "

    const-string v1, ", state:  "

    const-string v2, ", progress : "

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", step : "

    const-string v0, ", description : "

    invoke-static {p2, p1, p3, v0, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "ActivityManager"

    invoke-static {p0, p4, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addUserToUserLru(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eq p1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V
    .locals 9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "android.intent.extra.USER"

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x50000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    return-void
.end method

.method public final varargs checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot control users : unauthorized"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v4, v4, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "Permission denial: "

    const-string v0, "() from pid="

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    aget-object p1, p2, v1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "one of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final checkGetCurrentUserPermissions()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Permission Denial: getCurrentUser() from pid="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requires android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final checkHasManageUsersPermission(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v0, "android.permission.MANAGE_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "You need MANAGE_USERS permission to call "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public completeUserSwitch(II)V
    .locals 2

    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;-><init>(IIILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {p2, v1, p0, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->run()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 11

    new-instance v6, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v6}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "continueUserSwitch-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-to-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x7580

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x82

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/am/UserState;->switching:Z

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    if-eqz p2, :cond_3

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq p2, v4, :cond_3

    if-eqz v3, :cond_3

    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/UserManagerInternal;->onEphemeralUserStop(I)V

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Stopping background guest or ephemeral user "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :cond_3
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v2, "no_run_in_background"

    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    iget-object v8, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    if-nez v2, :cond_8

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->isStopUserOnSwitchEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p2, v7}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_2
    if-ge v7, v9, :cond_9

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v2, "no_run_in_background"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "ActivityManager"

    const-string/jumbo v3, "Stopping profile %d on user switch"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    :try_start_4
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    monitor-exit v10

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_8
    :goto_4
    :try_start_5
    const-string v0, "ActivityManager"

    const-string/jumbo v3, "Stopping user %d and its profiles on user switch"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    xor-int/lit8 v3, v2, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_9
    :goto_5
    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :goto_6
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :goto_7
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 3

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispatchUserSwitch-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-to-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x757f

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/UserState;->switching:Z

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(II)V

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;II)V

    const-string/jumbo p1, "onUserSwitching"

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/am/UserController;->informUserSwitchObservers(Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public dispatchUserSwitchComplete(II)V
    .locals 5

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispatchUserSwitchComplete-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserSwitchComplete-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p2}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendUserSwitchBroadcasts-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->endUserSwitch()V

    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x10b0000000eL

    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const-wide v6, 0x10500000001L

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    const-wide v8, 0x20b00000001L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget-object v10, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10b00000002L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget v10, v5, Lcom/android/server/am/UserState;->state:I

    if-eqz v10, :cond_1

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    const/4 v11, 0x4

    if-eq v10, v11, :cond_0

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    move v10, v11

    goto :goto_1

    :cond_1
    move v10, v3

    :goto_1
    const-wide v11, 0x10e00000001L

    invoke-virtual {p1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v5, v5, Lcom/android/server/am/UserState;->switching:Z

    const-wide v10, 0x10800000002L

    invoke-virtual {p1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v8, v5

    if-ge v4, v8, :cond_3

    aget v5, v5, v4

    const-wide v8, 0x20500000002L

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_3
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-wide v8, 0x20500000003L

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_5

    move v4, v3

    :goto_4
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    const-wide v8, 0x20b00000004L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    const-wide v10, 0x10500000002L

    invoke-virtual {p1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    const-wide v5, 0x10500000005L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_5
    iget-object v4, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    array-length v5, v4

    if-ge v3, v5, :cond_6

    aget v4, v4, v3

    const-wide v5, 0x20500000006L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final endUserSwitch()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->setPerformancePowerMode(Z)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/16 v2, -0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/util/ObjectUtils;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-static {}, Landroid/app/ActivityManager;->invalidateGetCurrentUserIdCache()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->switchUser(I)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final enforceShellRestriction(I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Shell does not have permission to access user "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$10;)V
    .locals 9

    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x757e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    iget v1, p1, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v2, "finishUserBoot"

    const-string/jumbo v3, "NULL"

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ActivityManager"

    const-string v2, "Finishing user boot "

    invoke-static {v0, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v5, v5, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    if-nez v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/16 v2, 0xf0

    const/16 v7, 0xc

    invoke-static {v2, v7, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    const-wide/32 v7, 0x1d4c0

    cmp-long v2, v5, v7

    if-lez v2, :cond_2

    const-string/jumbo v2, "SystemServerTiming"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "finishUserBoot took too long. elapsedTimeMs="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6e

    invoke-virtual {v2, v5, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerService$10;I)V

    :cond_3
    iget p2, p1, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v2, "finishUserBoot"

    const-string/jumbo v4, "send LOCKED BOOT COMPLETED"

    invoke-static {v0, p2, v1, v2, v4}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    goto :goto_1

    :cond_5
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "User "

    const-string v3, " (parent "

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): attempting unlock because parent is unlocked"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    goto :goto_1

    :cond_6
    const-string p0, "ActivityManager"

    const-string/jumbo v1, "User "

    const-string v2, " (parent "

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): delaying unlock because parent is locked"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget p0, p1, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo p1, "finishUserBoot"

    const-string/jumbo p2, "NULL"

    const/4 v1, 0x2

    invoke-static {v0, p0, v1, p1, p2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public finishUserStopped(Lcom/android/server/am/UserState;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Delayed locking enabled while KeyEvictedCallbacks not empty, userId:"

    const-string/jumbo v3, "Removing user state from UserController.mStartedUsers for user #"

    iget-object v4, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/16 v5, 0x757a

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v9, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x5

    const/4 v12, 0x0

    if-ne v9, v1, :cond_3

    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    if-eq v1, v11, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as a result of user being stopped"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    if-eqz p2, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callbacks:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    move/from16 v1, p2

    :goto_0
    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/UserController;->updateUserToLockLU(IZ)I

    move-result v1

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_2

    move v2, v10

    move v3, v12

    goto :goto_2

    :cond_2
    move v2, v10

    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v4

    move v3, v10

    move v2, v12

    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v6, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v6}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    if-eqz v2, :cond_6

    const-string v9, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Removing user state from UserManager.mUserStates for user #"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " as a result of user being stopped"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v9}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/pm/UserManagerInternal;->removeUserState(I)V

    iget-object v9, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v9, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v9, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "stopPackagesOfStoppedUser-"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "-[stopUser]"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v9, "finish user"

    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v13, v4, v9, v10}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopUserPackages(ILjava/lang/String;Z)V

    iget-object v9, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v9}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.USER_STOPPED"

    invoke-direct {v14, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x50000000

    invoke-virtual {v14, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.extra.user_handle"

    invoke-virtual {v14, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v13, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    const/16 v17, 0x0

    const/16 v21, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v9}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    if-eqz v9, :cond_5

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v10, "android.intent.action.PROFILE_INACCESSIBLE"

    invoke-virtual {v0, v4, v9, v10}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    :cond_5
    :goto_3
    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v12

    :catch_0
    :goto_4
    if-ge v10, v9, :cond_8

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v10, v10, 0x1

    check-cast v13, Landroid/app/IStopUserCallback;

    if-eqz v2, :cond_7

    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "stopCallbacks.userStopped-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "-[stopUser]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-interface {v13, v4}, Landroid/app/IStopUserCallback;->userStopped(I)V

    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_4

    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "stopCallbacks.userStopAborted-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "-[stopUser]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-interface {v13, v4}, Landroid/app/IStopUserCallback;->userStopAborted(I)V

    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_8
    const/16 v7, 0xc8

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "systemServiceManagerOnUserStopped-"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "-[stopUser]"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0x7587

    invoke-static {v9, v4}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v9, "Cleanup"

    invoke-virtual {v2, v4, v9}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    iget-object v9, v2, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_2
    iget-object v2, v2, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "taskSupervisorRemoveUser-"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "-[stopUser]"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v9, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10

    :try_start_3
    iget-object v9, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v9, v9, Lcom/android/server/wm/RootWindowContainer;->mUserVisibleRootTasks:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->delete(I)V

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/PackageConfigPersister;->removeUser(I)V

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    :cond_9
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v5, v11, v6}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_a
    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {v3, v0, v1, v8, v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_c
    :goto_5
    if-ge v12, v5, :cond_d

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v12, v12, 0x1

    check-cast v6, Lcom/android/server/am/UserController$PendingUserStart;

    iget v7, v6, Lcom/android/server/am/UserController$PendingUserStart;->userId:I

    if-ne v7, v4, :cond_c

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resumePendingUserStart for"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v0, v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_d
    iget-object v0, v0, Lcom/android/server/am/UserController;->mPendingUserStarts:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_7

    :goto_6
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_e
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v1, v4, v11}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_f
    :goto_7
    return-void

    :goto_8
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public final finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .locals 11

    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/16 v0, 0x7578

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(II)I

    iget v0, p1, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v1, "finishUserUnlockedCompleted"

    const-string/jumbo v2, "NULL"

    const/4 v10, 0x2

    invoke-static {v4, v0, v10, v1, v2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "UserController event: finishUserUnlockedCompleted("

    const-string v2, ")"

    invoke-static {v4, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v4}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "dev.boot."

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".user_unlocked"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FAIL-finishUserUnlockedCompleted"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ActivityManager"

    const-string p1, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlockedCompleted"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v1, p1, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v2, "finishUserUnlockedCompleted"

    const-string/jumbo v3, "OK StorageManager.isUserKeyUnlocked"

    const/4 v5, 0x1

    invoke-static {v4, v1, v5, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Initializing user #"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->run()V

    :cond_3
    move v9, v4

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_3

    const-string/jumbo v2, "android.intent.action.USER_INITIALIZE"

    const/high16 v3, 0x11000000

    invoke-static {v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object v3, v1

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object v5, v3

    new-instance v3, Lcom/android/server/am/UserController$2;

    invoke-direct {v3, v5}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move v9, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    :goto_0
    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_5

    const-string p1, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Stopping pre-created user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    return-void

    :cond_5
    move-object v2, p0

    iget-object p0, v2, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    const/4 v4, 0x3

    invoke-direct {v3, v9, v4, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object p0, v2, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v9, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "ActivityManager"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Skipping BOOT_COMPLETED for private profile user #"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Posting BOOT_COMPLETED user #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_9

    iget-object p0, v2, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v0, v0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    :try_start_1
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 p0, 0xf0

    const/16 v3, 0xd

    invoke-static {p0, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo p0, "android.intent.action.BOOT_COMPLETED"

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo p0, "android.intent.extra.user_handle"

    invoke-virtual {v3, p0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, -0x77000000

    invoke-virtual {v3, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;

    move v4, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget p0, p1, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo p1, "finishUserUnlockedCompleted"

    const-string/jumbo v0, "send BOOT COMPLETED and complete NULL"

    invoke-static {v9, p0, v10, p1, v0}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getCurrentProfileIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    if-eq v2, v1, :cond_1

    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentUserId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRunningUsersLU()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget v5, v5, Lcom/android/server/am/UserState;->state:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getStartedUserState(I)Lcom/android/server/am/UserState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UserState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getUsers()[I
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput v0, p0, v0

    return-object p0
.end method

.method public final handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v7, p3

    move/from16 v8, p5

    move-object/from16 v9, p7

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    if-ne v10, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v10}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    invoke-static {v7}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v10, :cond_3

    :cond_2
    :goto_0
    return v7

    :cond_3
    const/4 v1, -0x2

    const/4 v11, -0x3

    if-eq v7, v1, :cond_5

    if-ne v7, v11, :cond_4

    goto :goto_1

    :cond_4
    move v12, v7

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    move v12, v1

    :goto_2
    const/4 v13, 0x3

    if-eqz v2, :cond_15

    const/16 v1, 0x3e8

    if-eq v2, v1, :cond_15

    const/16 v1, 0x1482

    if-eq v2, v1, :cond_15

    invoke-virtual {v0, v10, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v14

    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v1

    const-string/jumbo v15, "android.permission.INTERACT_ACROSS_PROFILES"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    if-eqz v14, :cond_6

    move v11, v3

    goto/16 :goto_7

    :cond_6
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v1, v3

    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move/from16 v16, v4

    const/4 v4, 0x0

    move v11, v1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    :goto_3
    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    const/16 v17, 0x0

    if-ne v8, v11, :cond_9

    :goto_4
    move/from16 v4, v17

    goto :goto_7

    :cond_9
    if-eq v8, v13, :cond_a

    :goto_5
    move/from16 v3, p1

    goto :goto_6

    :cond_a
    if-nez v14, :cond_b

    goto :goto_5

    :cond_b
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, v1, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move/from16 v3, p1

    invoke-static {v1, v15, v3, v2, v9}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    :goto_6
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v4, 0x0

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    if-eqz v8, :cond_7

    if-ne v8, v13, :cond_e

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    if-ne v8, v1, :cond_f

    move v4, v14

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown mode: "

    invoke-static {v8, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    if-nez v4, :cond_15

    const/4 v1, -0x3

    if-ne v7, v1, :cond_10

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_11

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, " asks to run as user "

    const-string v3, " but is calling from uid "

    invoke-static {v7, v1, v3, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, "; this requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v8, v11, :cond_14

    const-string v1, " or "

    if-eqz v8, :cond_12

    if-eq v8, v13, :cond_12

    const/4 v2, 0x1

    if-ne v8, v2, :cond_13

    if-eqz v14, :cond_13

    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-eqz v14, :cond_14

    if-ne v8, v13, :cond_14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    move v10, v12

    :goto_8
    if-nez p4, :cond_17

    if-ltz v10, :cond_16

    goto :goto_9

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Call does not support special user #"

    invoke-static {v10, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_9
    const/16 v1, 0x7d0

    if-ne v2, v1, :cond_19

    if-ltz v10, :cond_19

    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {v0, v1, v10}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Shell does not have permission to access user "

    const-string v2, "\n "

    invoke-static {v10, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_a
    return v10
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/4 v4, 0x6

    const/16 v5, 0xc8

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/16 v8, 0x1388

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    move/from16 v21, v9

    goto/16 :goto_17

    :sswitch_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v11}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, Landroid/content/pm/UserInfo;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v3

    check-cast v13, Landroid/content/pm/UserInfo;

    iget v3, v12, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/UserController;->mSwitchingFromUserMessage:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v4, v1, Lcom/android/server/am/UserController;->mSwitchingToUserMessage:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v1, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "Showing user switch dialog on UserController, it could cause a race condition if it\'s shown by CarSystemUI as well"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v2, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    invoke-virtual {v2, v6}, Lcom/android/server/am/UserController$Injector;->dismissUserSwitchingDialog(Ljava/lang/Runnable;)V

    new-instance v10, Lcom/android/server/am/UserSwitchingDialog;

    iget-object v0, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v2, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v10 .. v16}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v2, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    invoke-virtual {v10, v3}, Lcom/android/server/am/UserSwitchingDialog;->show(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V

    monitor-exit v1

    return v9

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :sswitch_1
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    iget-object v1, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return v9

    :sswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->processScheduledStopOfBackgroundUser(Ljava/lang/Integer;)V

    return v9

    :sswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->reportOnUserCompletedEvent(Ljava/lang/Integer;)V

    return v9

    :sswitch_4
    iget v2, v0, Landroid/os/Message;->arg1:I

    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/UserController;->completeUserSwitch(II)V

    return v9

    :sswitch_5
    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v10}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    iget v0, v0, Landroid/os/Message;->arg1:I

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2, v11}, Lcom/android/server/am/UserController$Injector;->setPerformancePowerMode(Z)V

    invoke-virtual {v1, v0, v11}, Lcom/android/server/am/UserController;->startUser(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/UserController;I)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v9

    :sswitch_6
    iget v0, v0, Landroid/os/Message;->arg1:I

    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    move v3, v9

    :goto_1
    if-ge v3, v2, :cond_2

    :try_start_5
    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IUserSwitchObserver;

    invoke-interface {v4, v0}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x7585

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(II)I

    const-string/jumbo v5, "Unlocked"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    iget v2, v0, Landroid/os/Message;->arg1:I

    iget v3, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_3

    goto :goto_2

    :cond_3
    const/16 v8, 0x3e8

    :goto_2
    invoke-virtual {v1, v2, v10, v8}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    iget-object v1, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v4, v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    return v9

    :sswitch_8
    iget v2, v0, Landroid/os/Message;->arg1:I

    const-string/jumbo v5, "SYSTEM_USER_UNLOCK_MSG"

    const-string/jumbo v6, "NULL"

    invoke-static {v2, v3, v9, v5, v6}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x7584

    invoke-static {v6, v2}, Landroid/util/EventLog;->writeEvent(II)I

    const-string/jumbo v6, "Unlocking"

    invoke-virtual {v5, v2, v6}, Lcom/android/server/SystemServiceManager;->onUser(ILjava/lang/String;)V

    const-string/jumbo v5, "SYSTEM_USER_UNLOCK_MSG"

    const-string v6, "Done mSystemServiceManager.onUserUnlocking"

    invoke-static {v2, v3, v11, v5, v6}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    const/4 v8, 0x0

    invoke-direct {v6, v2, v8, v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget v6, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x5

    invoke-virtual {v5, v6, v8, v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v4, v11}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "finishUserUnlocked-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/UserState;

    iget-object v0, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const/16 v0, 0x7577

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(II)I

    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v8, "finishUserUnlocked"

    const-string/jumbo v12, "NULL"

    invoke-static {v6, v0, v9, v8, v12}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v8, "finishUserUnlocked"

    const-string/jumbo v12, "Try StorageManager.isUserKeyUnlocked"

    invoke-static {v6, v0, v11, v8, v12}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "UserController event: finishUserUnlocked("

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dev.boot."

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".user_unlocked"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "FAIL-finishUserUnlocked"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ActivityManager"

    const-string v5, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlocked"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "dumpstate.process"

    const-string/jumbo v1, "unlockfail"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bugreport.mode"

    const-string/jumbo v1, "booting_delay"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bugreportm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    move v5, v10

    goto/16 :goto_10

    :cond_5
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v8, "finishUserUnlocked"

    const-string/jumbo v12, "OK StorageManager.isUserKeyUnlocked"

    invoke-static {v6, v0, v11, v8, v12}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v12, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v5, :cond_6

    monitor-exit v8

    goto :goto_3

    :catchall_3
    move-exception v0

    goto/16 :goto_13

    :cond_6
    invoke-virtual {v5, v10, v7}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0

    if-nez v0, :cond_7

    monitor-exit v8

    goto :goto_3

    :cond_7
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v7, v5, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    iget-object v0, v5, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v0}, Lcom/android/internal/util/ProgressReporter;->finish()V

    if-nez v6, :cond_8

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/high16 v7, 0x40000

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService;->startPersistentApps(I)V

    :cond_8
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v7

    :try_start_7
    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v8, v8, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v12

    move v13, v9

    :goto_4
    if-ge v13, v12, :cond_c

    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v15

    move v3, v9

    :goto_5
    if-ge v3, v15, :cond_b

    invoke-virtual {v14, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    iget v9, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v9, v6, :cond_a

    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v9, :cond_a

    iget-boolean v9, v10, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    new-instance v11, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;

    invoke-direct {v11, v0, v10}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v9, v11}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_6

    :catchall_4
    move-exception v0

    goto/16 :goto_12

    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v13, v13, 0x1

    const/4 v3, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_4

    :cond_c
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v0

    const/high16 v3, 0x50000000

    if-nez v0, :cond_d

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {v13, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v13, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    move/from16 v20, v6

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v7, "finishUserUnlocked"

    const-string/jumbo v8, "send USER UNLOCKED"

    const/4 v9, 0x1

    invoke-static {v6, v0, v9, v7, v8}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v1, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_f

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v9, "android.intent.action.PROFILE_ACCESSIBLE"

    invoke-virtual {v1, v6, v8, v9}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.extra.USER"

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move/from16 v16, v0

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    :cond_f
    invoke-virtual {v1, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "DUMMY"

    sget-object v8, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v9, "ActivityManagerServiceExt"

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string/jumbo v10, "csc version of property is wrong"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :try_start_8
    new-instance v10, Ljava/io/FileInputStream;

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v12, 0x400

    invoke-direct {v0, v10, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v11, v7

    move-object v7, v0

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v12, v0

    :try_start_d
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    :try_start_e
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_8
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    :try_start_10
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v7
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    :catch_2
    move-exception v0

    move-object v7, v11

    goto :goto_a

    :catch_3
    move-object v7, v11

    goto :goto_b

    :goto_a
    const-string v10, "Failure reading pre boot csc"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_4
    :goto_b
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    iget-object v8, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v9, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string/jumbo v8, "persist.pm.mock-upgrade"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_12

    if-nez v0, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {v1, v5}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    goto :goto_f

    :cond_12
    :goto_c
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    goto :goto_e

    :cond_14
    :goto_d
    const/4 v0, 0x1

    :goto_e
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v8, Lcom/android/server/am/UserController$$ExternalSyntheticLambda19;

    invoke-direct {v8, v1, v7, v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/am/UserController;ZLcom/android/server/am/UserState;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v7, "android.intent.action.PRE_BOOT_COMPLETED"

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v7, 0x7581

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v1, Lcom/android/server/am/UserController$Injector$1;

    iget-object v3, v3, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v3, v6, v0, v8}, Lcom/android/server/am/UserController$Injector$1;-><init>(Lcom/android/server/am/ActivityManagerService;IZLcom/android/server/am/UserController$$ExternalSyntheticLambda19;)V

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector$1;->sendNext()V

    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v1, "finishUserUnlocked"

    const-string/jumbo v3, "OK sendPreBootBroadcast"

    const/4 v9, 0x1

    invoke-static {v6, v0, v9, v1, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    :goto_f
    iget v0, v5, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v1, "finishUserUnlocked"

    const-string/jumbo v3, "NULL"

    const/4 v5, 0x2

    invoke-static {v6, v0, v5, v1, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_10
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SYSTEM_USER_UNLOCK_MSG"

    const-string/jumbo v1, "NULL"

    const/4 v3, -0x1

    invoke-static {v2, v3, v5, v0, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_11
    const/16 v21, 0x0

    goto/16 :goto_17

    :goto_12
    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :goto_13
    :try_start_12
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw v0

    :sswitch_9
    iget v2, v0, Landroid/os/Message;->arg1:I

    iget v0, v0, Landroid/os/Message;->arg2:I

    const-string/jumbo v3, "User switch timeout: from "

    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_13
    iget-object v5, v1, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Observers that didn\'t respond: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, v1, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    goto :goto_14

    :catchall_9
    move-exception v0

    goto :goto_15

    :cond_16
    :goto_14
    monitor-exit v4

    const/16 v21, 0x0

    return v21

    :goto_15
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v0

    :sswitch_a
    iget v2, v0, Landroid/os/Message;->arg1:I

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(II)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserSwitchJourneyFinish(ILandroid/content/pm/UserInfo;)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v21, 0x0

    return v21

    :sswitch_b
    iget v0, v0, Landroid/os/Message;->arg1:I

    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_17

    :try_start_14
    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IUserSwitchObserver;

    invoke-interface {v4, v0}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_5

    :catch_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_17
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_11

    :goto_17
    return v21

    :sswitch_c
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v5, 0x4008

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->arg1:I

    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v5, 0x8008

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget v3, v0, Landroid/os/Message;->arg2:I

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SystemServiceManager;->onUserSwitching(II)V

    iget v2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController;->stopPreviousUserPackagesIfEnabled(I)V

    iget v0, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2, v8}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    const/16 v21, 0x0

    return v21

    :sswitch_d
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->arg1:I

    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v5, 0x8007

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v7}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->onUserStarting(I)V

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    invoke-virtual {v1, v2, v9, v8}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0, v7, v3}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v21, 0x0

    return v21

    :sswitch_e
    move/from16 v21, v9

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->startProfiles()V

    return v21

    :sswitch_f
    move/from16 v21, v9

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/UserState;

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    return v21

    :sswitch_10
    move/from16 v21, v9

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/UserState;

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    return v21

    :sswitch_11
    move/from16 v21, v9

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/UserState;

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    return v21

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_11
        0x14 -> :sswitch_10
        0x1e -> :sswitch_f
        0x28 -> :sswitch_e
        0x32 -> :sswitch_d
        0x3c -> :sswitch_c
        0x46 -> :sswitch_b
        0x50 -> :sswitch_a
        0x5a -> :sswitch_9
        0x64 -> :sswitch_8
        0x69 -> :sswitch_7
        0x6e -> :sswitch_6
        0x78 -> :sswitch_5
        0x82 -> :sswitch_4
        0x8c -> :sswitch_3
        0x96 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final hasStartedUserState(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasUserRestriction(Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final informUserSwitchObservers(Ljava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    if-nez v13, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :cond_0
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object v10, v1, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {}, Lcom/android/server/am/UserController;->getUserSwitchTimeoutMs()I

    move-result v0

    int-to-long v8, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v13, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v0, "#"

    const-string v2, " "

    invoke-static {v15, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v15}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lcom/android/server/am/UserController$7;

    move-object/from16 v12, p2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;Ljava/lang/String;Ljava/lang/String;JJJLandroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/server/am/UserController;->asyncTraceBegin(ILjava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final isSameProfileGroup(II)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p1, v3, :cond_1

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isStopUserOnSwitchEnabled()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    move v2, v4

    :cond_0
    const-string p0, "ActivityManager"

    const-string/jumbo v1, "isStopUserOnSwitchEnabled(): returning overridden value (%b)"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "fw.stop_bg_users_on_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    return p0

    :cond_2
    if-ne v0, v4, :cond_3

    return v4

    :cond_3
    return v2

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isSystemUserStarted()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UserState;

    if-nez p0, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    const/4 v3, 0x3

    if-ne p0, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isUserOrItsParentRunning(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v3, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isUserRunning(II)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    if-eqz p0, :cond_7

    if-eq p0, v1, :cond_7

    goto :goto_1

    :cond_2
    and-int/lit8 v0, p2, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eqz v0, :cond_4

    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    const/4 p2, 0x2

    if-eq p0, p2, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p0

    return p0

    :cond_4
    and-int/2addr p2, v4

    if-eqz p2, :cond_6

    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    if-eq p0, v2, :cond_7

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p0

    return p0

    :cond_6
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    :cond_7
    :goto_0
    return v1

    :cond_8
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final logUserJourneyBegin(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x15f90

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final maybeUnlockUser(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "maybeUnlockUser"

    const-string/jumbo v3, "NULL and no exit"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(ILandroid/os/IProgressListener;)Z

    return-void
.end method

.method public final maybeUnlockUser(ILandroid/os/IProgressListener;)Z
    .locals 11

    const-string/jumbo v0, "maybeUnlockUser"

    const-string/jumbo v1, "NULL"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p0, "ActivityManager"

    const-string/jumbo v0, "Not unlocking user %d yet because boot hasn\'t completed"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    invoke-interface {p2, p1, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return v3

    :cond_1
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserKeyIfUnsecured(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UserState;

    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v5, p2}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x2

    if-nez v4, :cond_5

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-interface {p2, p1, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    const-string/jumbo p0, "unlockUserCleared"

    const-string/jumbo p2, "NULL and return"

    invoke-static {p1, v2, v0, p0, p2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_5
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "finishUserUnlocking-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/16 v6, 0x7576

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEvent(III)V

    iget v6, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v9, "finishUserUnlocking"

    const-string/jumbo v10, "NULL"

    invoke-static {v5, v6, v3, v9, v10}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "UserController event: finishUserUnlocking("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x4d

    if-eq v6, v5, :cond_7

    const-string v6, "ActivityManager"

    const-string v7, "Do not unlock user "

    const-string v9, " in Maintenance mode"

    invoke-static {v5, v7, v9, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    move v5, v3

    goto/16 :goto_4

    :cond_7
    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "dev.boot."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".user_unlocked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FAIL-finishUserUnlocking"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ActivityManager"

    const-string v7, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlocking"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "dumpstate.process"

    const-string/jumbo v6, "unlockfail"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "bugreport.mode"

    const-string/jumbo v6, "booting_delay"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "ctl.start"

    const-string/jumbo v6, "bugreportm"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget v6, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v9, "finishUserUnlocking"

    const-string/jumbo v10, "OK StorageManager.isUserKeyUnlocked"

    invoke-static {v5, v6, v8, v9, v10}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_a

    iget v9, v4, Lcom/android/server/am/UserState;->state:I

    if-eq v9, v8, :cond_9

    goto :goto_3

    :cond_9
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string/jumbo v6, "finishUserUnlocking"

    const-string/jumbo v10, "mUnlockProgress.start()"

    invoke-static {v5, v9, v8, v6, v10}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v6}, Lcom/android/internal/util/ProgressReporter;->start()V

    iget-object v6, v4, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    iget-object v9, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v9, v9, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x10401d0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    const/4 v9, 0x2

    invoke-direct {v7, p0, v5, v4, v9}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v6, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo v7, "finishUserUnlocking"

    const-string/jumbo v9, "NULL"

    invoke-static {v5, v6, v0, v7, v9}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_9

    :cond_a
    :goto_3
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    :goto_4
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v5, :cond_c

    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    :try_start_5
    invoke-interface {p2, p1, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :goto_5
    return v3

    :cond_c
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    move v5, v3

    :goto_6
    if-ge v5, v1, :cond_d

    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_8

    :cond_d
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_7
    if-ge v3, v1, :cond_f

    aget p2, v2, v3

    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_e

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, p1, :cond_e

    if-eq p2, p1, :cond_e

    const-string v6, "ActivityManager"

    const-string/jumbo v7, "User "

    const-string v9, " (parent "

    invoke-static {p2, v7, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    iget p0, v4, Lcom/android/server/am/UserState;->state:I

    const-string/jumbo p2, "unlockUserCleared"

    const-string/jumbo v1, "NULL"

    invoke-static {p1, p0, v0, p2, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    return v8

    :goto_8
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :goto_9
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    :goto_a
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public final moveUserToForeground(ILcom/android/server/am/UserState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->switchUser(ILcom/android/server/am/UserState;)Z

    move-result p2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo p2, "moveUserToForeground"

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeActivity(ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    :goto_0
    const/16 p0, 0x7559

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onBootComplete(Lcom/android/server/am/ActivityManagerService$10;)V
    .locals 7

    const-string/jumbo v0, "onBootComplete"

    const-string/jumbo v1, "NULL"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v2, v3, v2, v0, v1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->setAllowUserUnlocking(Z)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    move v0, v2

    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$10;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerService$10;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "onBootComplete"

    const-string/jumbo p1, "NULL"

    const/4 v0, 0x2

    invoke-static {v2, v3, v0, p0, p1}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public processScheduledStopOfBackgroundUser(Ljava/lang/Integer;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v0, "ActivityManager"

    const-string v2, "Considering stopping background user %d due to inactivity"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_1
    if-ne v0, v1, :cond_3

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit v6

    return-void

    :cond_4
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_6

    monitor-exit v6

    return-void

    :cond_6
    const-string v0, "ActivityManager"

    const-string/jumbo v2, "Stopping background user %d due to inactivity"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    monitor-exit v6

    return-void

    :goto_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public reportOnUserCompletedEvent(Ljava/lang/Integer;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v1, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "reportOnUserCompletedEvent(%d): stored=%s, eligible=%s"

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/2addr v0, v3

    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7588

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v6

    if-nez v6, :cond_4

    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v3

    new-instance v7, Lcom/android/server/SystemService$UserCompletedEventType;

    invoke-direct {v7, v0}, Lcom/android/server/SystemService$UserCompletedEventType;-><init>(I)V

    const-string v4, "CompletedEvent"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public scheduleOnUserCompletedEvent(III)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    or-int/2addr p2, v2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8c

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .locals 3

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "ActivityManager"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendContinueUserSwitchLU-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-to-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {p0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final sendLockedBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerService$10;I)V
    .locals 12

    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Skipping LOCKED_BOOT_COMPLETED for private profile user #"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, -0x77000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo p0, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v4

    :goto_0
    move-wide v7, v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x2710

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v6

    const/4 v9, 0x0

    const-string v11, ""

    const/16 v10, 0xca

    invoke-virtual/range {v6 .. v11}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    move-object v2, p1

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    return-void
.end method

.method public final sendUserStartedBroadcast(III)V
    .locals 11

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarted:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarted:Z

    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x50000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v10, p1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    return-void
.end method

.method public final sendUserStartingBroadcast(III)V
    .locals 11

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarting:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UserController;->mIsBroadcastSentForSystemUserStarting:Z

    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v4, Lcom/android/server/am/UserController$8;

    invoke-direct {v4}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    const-string/jumbo p0, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v10, -0x1

    const/4 v6, 0x0

    move v8, p2

    move v9, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    return-void
.end method

.method public final sendUserSwitchBroadcasts(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const-string/jumbo v14, "android.intent.extra.USER"

    const-string/jumbo v15, "android.intent.extra.user_handle"

    const/high16 v3, 0x50000000

    const/4 v4, 0x0

    if-ltz v1, :cond_0

    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    move v7, v4

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v4, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move v8, v3

    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move/from16 v16, v8

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v17, v6

    const/4 v6, 0x0

    move/from16 v18, v7

    const/4 v7, 0x0

    move/from16 v19, v5

    const/4 v5, 0x0

    move-object/from16 p1, v1

    move/from16 v1, v18

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    add-int/lit8 v6, v17, 0x1

    move v4, v1

    move/from16 v5, v19

    const/high16 v3, 0x50000000

    move-object/from16 v1, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    move v1, v4

    if-ltz v2, :cond_2

    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    move v5, v4

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x50000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v4, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v7, v3

    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v16, v6

    const/4 v6, 0x0

    move-object/from16 v17, v7

    const/4 v7, 0x0

    move/from16 v18, v5

    const/4 v5, 0x0

    move/from16 v19, v1

    move/from16 v1, v16

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    add-int/lit8 v3, v19, 0x1

    move v1, v3

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto :goto_1

    :cond_1
    const/high16 v1, 0x50000000

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v3, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, -0x1

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    move v6, v9

    move v7, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setAllowUserUnlocking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mAllowUserUnlocking:Z

    return-void
.end method

.method public final startProfile(IZLandroid/os/IProgressListener;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to start a profile"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ActivityManager"

    const-string p2, "Cannot start disabled profile #%d"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p2, 0x3

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/am/UserController;->startUserNoChecks(IIILandroid/os/IProgressListener;)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "User "

    const-string p3, " is not a profile"

    invoke-static {p1, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startProfiles()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :cond_0
    :goto_0
    if-ge v5, v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    const/16 v8, 0x10

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_0

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v0, :cond_0

    iget-object v8, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v8}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v4, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/UserController;->startUser(II)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    if-ge v2, v0, :cond_3

    const-string p0, "ActivityManager"

    const-string/jumbo v0, "More profiles than MAX_RUNNING_USERS"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public startUser(II)Z
    .locals 2

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startUser"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/am/UserController;->startUserNoChecks(IIILandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public final startUserInternal(IIILandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z
    .locals 21

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v0, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v2, p5

    const-string v3, "Cannot start pre-created user #"

    const-string v6, "Cannot switch to User #"

    const-string/jumbo v7, "No user info for user #"

    const/4 v10, 0x1

    if-ne v4, v10, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move v12, v10

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_2

    xor-int/lit8 v13, v11, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Cannot start user %d in foreground AND on secondary display (%d)"

    invoke-static {v13, v15, v14}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0x757c

    invoke-static {v14, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    const/16 v17, 0x0

    :try_start_0
    const-string/jumbo v9, "getStartedUserState"

    invoke-virtual {v2, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v18, v10

    const-string v10, "ActivityManager"

    if-ne v9, v8, :cond_7

    move/from16 v19, v9

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v9, "Current user has no UserState"

    invoke-static {v10, v9}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move/from16 v20, v11

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    if-nez v8, :cond_4

    move/from16 v20, v11

    iget v11, v9, Lcom/android/server/am/UserState;->state:I

    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    iget v0, v9, Lcom/android/server/am/UserState;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v5, v8, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :cond_7
    move/from16 v19, v9

    goto :goto_2

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v20, :cond_8

    const-string/jumbo v9, "clearAllLockedTasks"

    invoke-virtual {v2, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v9}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_8
    const-string/jumbo v9, "getUserInfo"

    invoke-virtual {v2, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v9, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v17

    :cond_9
    if-eqz v20, :cond_a

    :try_start_5
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": not a full user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v17

    :cond_a
    if-nez v20, :cond_b

    if-eqz v12, :cond_c

    :cond_b
    :try_start_6
    iget-boolean v6, v9, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v6, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in foreground or on secondary display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v17

    :cond_c
    :try_start_7
    const-string/jumbo v3, "assignUserToDisplayOnStart"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    iget v6, v9, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v3, v8, v6, v4, v0}, Lcom/android/server/pm/UserManagerInternal;->assignUserToDisplayOnStart(IIII)I

    move-result v3

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const/4 v2, -0x1

    if-ne v3, v2, :cond_d

    const-string v1, "%s user(%d) / display (%d) assignment failed: %s"

    invoke-static {v4}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v5, Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo v6, "USER_ASSIGNMENT_RESULT_"

    invoke-static {v5, v6, v3}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v4, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v17

    :cond_d
    :try_start_8
    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;

    move-object v2, v9

    move v6, v13

    move v7, v14

    move/from16 v3, v19

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;IILandroid/os/IProgressListener;II)V

    if-eqz v20, :cond_e

    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v8, v0, v4}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;->run()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :goto_6
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final startUserNoChecks(IIILandroid/os/IProgressListener;)Z
    .locals 7

    new-instance v5, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v5}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    const-string/jumbo v0, "PersonaServiceHelper"

    const-string/jumbo v1, "blocking when device compromised : "

    const-string/jumbo v2, "shouldBlockUserStart() "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UserController.startUser-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    const-string v1, ""

    goto :goto_3

    :cond_3
    const-string v1, "-display-"

    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p3, v1, :cond_4

    const-string/jumbo v1, "fg"

    goto :goto_4

    :cond_4
    const-string/jumbo v1, "bg"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-start-mode-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->startUserInternal(IIILandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p0
.end method

.method public final stopExcessRunningUsersLU(ILandroid/util/ArraySet;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq v3, v4, :cond_0

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ActivityManager"

    const-string/jumbo v5, "Too many running users (%d). Attempting to stop user %d"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_2
    move-object p0, v6

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final stopPreviousUserPackagesIfEnabled(I)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->isStopUserOnSwitchEnabled()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mDoNotAbortShutdownUserIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v1, "early stop user packages"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopUserPackages(ILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I
    .locals 5

    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UserController"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v2, "-stopProfileRegardlessOfParent"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string v2, "-allowDelayedLocking"

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    const-string v2, "-withStopUserCallback"

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    const-string v3, "-"

    const-string v4, "-[stopUser]"

    invoke-static {p1, v2, v3, v4, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "stopUser"

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    if-ltz p1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const-string v2, "Invalid user id %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(I)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I

    move-result p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p0
.end method

.method public final stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserController$4;)I
    .locals 16

    move-object/from16 v1, p0

    move/from16 v6, p1

    if-nez v6, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    iget v0, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_1

    iget v0, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_0

    :cond_1
    iget v0, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_0
    if-ne v6, v0, :cond_2

    const/4 v0, -0x2

    return v0

    :cond_2
    const/4 v0, -0x4

    if-nez p2, :cond_5

    iget-object v3, v1, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v6, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, v2, :cond_5

    if-eq v3, v6, :cond_5

    if-eqz v3, :cond_4

    iget v4, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    if-eq v4, v2, :cond_3

    iget v4, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_1

    :cond_3
    iget v4, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_1
    if-ne v3, v4, :cond_5

    :cond_4
    return v0

    :cond_5
    iget-object v3, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {v4, v6}, Landroid/util/IntArray;->add(I)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_a

    move v9, v8

    :goto_2
    if-ge v9, v3, :cond_a

    iget-object v10, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/UserState;

    iget-object v10, v10, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    iget-object v11, v1, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v10, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    if-eq v5, v2, :cond_6

    if-ne v5, v11, :cond_6

    move v11, v7

    goto :goto_3

    :cond_6
    move v11, v8

    :goto_3
    if-ne v10, v6, :cond_7

    move v12, v7

    goto :goto_4

    :cond_7
    move v12, v8

    :goto_4
    if-eqz v11, :cond_9

    if-eqz v12, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v4, v10}, Landroid/util/IntArray;->add(I)V

    :cond_9
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v9

    array-length v3, v9

    move v4, v8

    :goto_6
    const-string v10, "ActivityManager"

    if-ge v4, v3, :cond_e

    aget v5, v9, v4

    if-eqz v5, :cond_d

    iget v11, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    if-eq v11, v2, :cond_b

    iget v11, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_7

    :cond_b
    iget v11, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_7
    if-ne v5, v11, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    :goto_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot stop user %d because it is related to user %d. "

    invoke-static {v10, v2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_e
    new-instance v11, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v11}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    array-length v12, v9

    move v13, v8

    :goto_9
    if-ge v13, v12, :cond_1c

    aget v2, v9, v13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopSingleUserLU-"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-[stopUser]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ne v2, v6, :cond_f

    move-object/from16 v4, p4

    goto :goto_a

    :cond_f
    move-object v4, v0

    :goto_a
    if-ne v2, v6, :cond_10

    move-object/from16 v5, p5

    goto :goto_b

    :cond_10
    move-object v5, v0

    :goto_b
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "stopSingleUserLU userId="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v14, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/UserState;

    if-nez v14, :cond_15

    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v3

    iget-boolean v14, v1, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-nez v14, :cond_11

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_11
    if-eqz p3, :cond_12

    if-eqz v5, :cond_12

    const-string/jumbo v3, "allowDelayedLocking set with KeyEvictedCallback, ignore it and lock user:"

    invoke-static {v2, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v10, v3, v14}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v8

    goto :goto_c

    :cond_12
    move/from16 v3, p3

    :goto_c
    if-nez v3, :cond_14

    iget-object v3, v1, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v5, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    const/4 v14, 0x1

    invoke-direct {v5, v1, v2, v0, v14}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    if-eqz v4, :cond_1b

    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v5, v4}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f

    :cond_15
    const/4 v0, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/UserController;->logUserJourneyBegin(II)V

    if-eqz v4, :cond_16

    iget-object v15, v14, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz v5, :cond_17

    iget-object v4, v14, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_d

    :cond_18
    move v4, v8

    goto :goto_e

    :cond_19
    :goto_d
    move v4, v7

    :goto_e
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v5, v5, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v15, v5, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v7, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;

    invoke-direct {v7, v5, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZ)V

    invoke-virtual {v15, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v4, v14, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1b

    if-eq v4, v0, :cond_1b

    invoke-virtual {v14, v5}, Lcom/android/server/am/UserState;->setState(I)V

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setUserState-STATE_STOPPING-"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget v5, v14, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unassignUserFromDisplayOnStop-"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->unassignUserFromDisplayOnStop(I)V

    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    move/from16 v4, p3

    move-object v3, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;ZI)V

    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->run()V

    goto :goto_f

    :cond_1a
    iget-object v3, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v0, v5}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    :goto_f
    invoke-virtual {v11}, Landroid/util/TimingsTraceLog;->traceEnd()V

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto/16 :goto_9

    :cond_1c
    return v8
.end method

.method public final switchUser(I)Z
    .locals 13

    const-string/jumbo v0, "There is already an ongoing user switch to User #"

    const-string v1, "Cannot switch to User #"

    const-string v2, "Cannot switch to User #"

    const-string v3, "Cannot switch to User #"

    const-string/jumbo v4, "No user info for user #"

    const-string/jumbo v5, "user #"

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(I)V

    const/16 v6, 0x757b

    invoke-static {v6, p1}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    const/16 v8, 0x4d

    if-eq v8, p1, :cond_0

    const-string p0, "ActivityManager"

    const-string v0, "Cannot switch to User #"

    const-string v1, " in Maintenance mode"

    invoke-static {p1, v0, v1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_0
    iget-object v8, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/16 v10, -0x2710

    const/4 v11, 0x1

    if-ne p1, v6, :cond_1

    :try_start_0
    iget v12, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    if-ne v12, v10, :cond_1

    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already the current user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return v11

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :cond_1
    if-nez v7, :cond_2

    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return v9

    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-nez v4, :cond_3

    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return v9

    :cond_3
    sget-object v3, Lcom/android/server/FactoryResetter;->sFactoryResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": factory reset in progress"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return v9

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    if-nez v2, :cond_5

    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": UserController not ready yet"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return v9

    :cond_5
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    if-eq v1, v10, :cond_6

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". User #"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " will be added to the queue."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/UserController;->mPendingTargetUserIds:Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v8

    return v11

    :cond_6
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-static {}, Landroid/app/ActivityManager;->invalidateGetCurrentUserIdCache()V

    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v11

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v11

    :goto_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 5

    const-string/jumbo v0, "User switch timeout: from "

    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v2, "ActivityManager"

    invoke-direct {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timeoutUserSwitch-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-to-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object v0, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x1388

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unlockUser(ILandroid/os/IProgressListener;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string/jumbo v2, "unlockUser"

    const-string/jumbo v3, "NULL"

    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v0, 0x757d

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    const-string/jumbo v0, "call maybeUnlockUser"

    const/4 v5, 0x1

    invoke-static {p1, v1, v5, v2, v0}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->maybeUnlockUser(ILandroid/os/IProgressListener;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final updateProfileRelatedCaches()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [I

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v3, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    :goto_1
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateStartedUserArrayLU()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    iget v2, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v3, v1, 0x1

    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v1

    move v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final updateUserToLockLU(IZ)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result p2

    if-nez p2, :cond_4

    const-string/jumbo p2, "no_run_in_background"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    const-string/jumbo v0, "finishUserStopped: should stop user "

    const-string v1, "ActivityManager"

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, p2

    iget p2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    if-le v2, p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/am/UserController;->mLastActiveUsersForDelayedLocking:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but should lock user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but without any locking"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x2710

    return p0

    :cond_4
    :goto_1
    return p1
.end method
