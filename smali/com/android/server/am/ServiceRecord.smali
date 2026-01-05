.class public final Lcom/android/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ComponentName$WithComponentName;


# instance fields
.field public allowlistManager:Z

.field public final ams:Lcom/android/server/am/ActivityManagerService;

.field public app:Lcom/android/server/am/ProcessRecord;

.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field public final bindings:Landroid/util/ArrayMap;

.field public callStart:Z

.field public final connections:Landroid/util/ArrayMap;

.field public crashCount:I

.field public final createRealTime:J

.field public createdFromFg:Z

.field public final definingPackageName:Ljava/lang/String;

.field public final definingUid:I

.field public delayCount:I

.field public delayService:Z

.field public delayServiceStop:Z

.field public delayTimeout:J

.field public delayed:Z

.field public delayedStop:Z

.field public final deliveredStarts:Ljava/util/ArrayList;

.field public destroyTime:J

.field public destroying:Z

.field public executeFg:Z

.field public executeNesting:I

.field public executingStart:J

.field public final exported:Z

.field public fgDisplayTime:J

.field public fgRequired:Z

.field public fgWaiting:Z

.field public foregroundId:I

.field public foregroundNoti:Landroid/app/Notification;

.field public foregroundServiceType:I

.field public final inSharedIsolatedProcess:Z

.field public final instanceName:Landroid/content/ComponentName;

.field public final intent:Landroid/content/Intent$FilterComparison;

.field public isForeground:Z

.field public isNotAppComponentUsage:Z

.field public final isSdkSandbox:Z

.field public isolationHostProc:Lcom/android/server/am/ProcessRecord;

.field public lastActivity:J

.field public lastStartId:I

.field public lastTopAlmostPerceptibleBindRequestUptimeMs:J

.field public mAdjSeq:I

.field public mAllowStartForegroundAtEntering:I

.field public mAllowStart_byBindings:I

.field public mAllowStart_inBindService:I

.field public mAllowStart_noBinding:I

.field public mAllowUiJobScheduling:Z

.field public mAllowWhileInUsePermissionInFgsAtEntering:Z

.field public mAllowWiu_byBindings:I

.field public mAllowWiu_inBindService:I

.field public mAllowWiu_noBinding:I

.field public mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

.field public final mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

.field public mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

.field public mCleanUpAllowBgActivityStartsByStartCallback:Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

.field public mEarliestRestartTime:J

.field public mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

.field public mFgsEnterTime:J

.field public mFgsExitTime:J

.field public mFgsHasNotificationPermission:Z

.field public mFgsNotificationDeferred:Z

.field public mFgsNotificationShown:Z

.field public mFgsNotificationWasDeferred:Z

.field public mInfoAllowStartForeground:Ljava/lang/String;

.field public mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

.field public mIsAllowedBgActivityStartsByBinding:Z

.field public mIsFgsDelegate:Z

.field public mKeepWarming:Z

.field public mLoggedInfoAllowStartForeground:Z

.field public mProcessStateOnRequest:I

.field public mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field public mRecentCallingPackage:Ljava/lang/String;

.field public mRecentCallingUid:I

.field public mRestartSchedulingTime:J

.field public mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

.field public mStartForegroundCount:I

.field public final name:Landroid/content/ComponentName;

.field public nextRestartTime:J

.field public final packageName:Ljava/lang/String;

.field public final pendingBinds:Ljava/util/ArrayList;

.field public pendingConnectionGroup:I

.field public pendingConnectionImportance:I

.field public final pendingRemoveConnections:Ljava/util/ArrayList;

.field public final pendingStarts:Ljava/util/ArrayList;

.field public final permission:Ljava/lang/String;

.field public final processName:Ljava/lang/String;

.field public restartCount:I

.field public restartDelay:J

.field public restartTime:J

.field public restartTracker:Lcom/android/internal/app/procstats/ServiceState;

.field public final restarter:Lcom/android/server/am/ActiveServices$ServiceRestarter;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppUid:I

.field public serviceDelayed:Z

.field public final serviceInfo:Landroid/content/pm/ServiceInfo;

.field public final shortInstanceName:Ljava/lang/String;

.field public startCommandResult:I

.field public startRequested:Z

.field public startingBgTimeout:J

.field public stopIfKilled:Z

.field public stringName:Ljava/lang/String;

.field public tracker:Lcom/android/internal/app/procstats/ServiceState;

.field public final userId:I


# direct methods
.method public static -$$Nest$msignalForegroundServiceNotification(ILcom/android/server/am/ServiceRecord;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, p2, v3, p0, p3}, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;->onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLcom/android/server/am/ActiveServices$ServiceRestarter;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    iput-wide v1, p0, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->pendingBinds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->pendingRemoveConnections:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/ServiceRecord;->definingUid:I

    iput-object p6, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    iput-object p7, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    if-eq p11, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    iput p11, p0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppUid:I

    move-object p3, p12

    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    move/from16 p3, p13

    iput-boolean p3, p0, Lcom/android/server/am/ServiceRecord;->inSharedIsolatedProcess:Z

    iput-object p10, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object p3, p7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-boolean p3, p7, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-boolean p3, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    iput-object p9, p0, Lcom/android/server/am/ServiceRecord;->restarter:Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object p3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    iput-boolean p8, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    iget-object p3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance p4, Lcom/android/server/am/ServiceRecord$1;

    invoke-direct {p4, p0, p2, p3}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .locals 5

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " id="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-eqz v3, :cond_0

    const-string v3, " dur="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-static {v3, v4, p3, p4, p0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :cond_0
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-eqz v3, :cond_1

    const-string v3, " dc="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    :cond_1
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-eqz v3, :cond_2

    const-string v3, " dxc="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    :cond_2
    const-string v3, ""

    const-string v4, "  intent="

    invoke-static {p0, v3, p1, v4}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "null"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  neededGrants="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p0, p1}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public final addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    iget v1, p2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, p2, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    iget-wide v2, p2, Lcom/android/server/am/ConnectionRecord;->flags:J

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    :cond_1
    return-void
.end method

.method public final canStopIfKilled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final cancelNotification()V
    .locals 7

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v0, Lcom/android/server/am/ServiceRecord$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "intent={"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v5, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "packageName="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v8, "processName="

    invoke-static {v1, v7, v2, v8}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    const-string/jumbo v8, "targetSdkVersion="

    invoke-static {v1, v7, v2, v8}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "permission="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "baseDir="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v12, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "resDir="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "dataDir="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "app="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "isolationHostProc="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v11, :cond_4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "allowlistManager="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    if-eqz v11, :cond_5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "mIsAllowedBgActivityStartsByBinding="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    :cond_5
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v11}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "mIsAllowedBgActivityStartsByStart="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "useNewWiuLogic_forCapabilities()="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v12, 0x12b256f1

    invoke-static {v12, v13, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "useNewWiuLogic_forStart()="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v14, 0x128caab5

    invoke-static {v14, v15, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "useNewBfslLogic()="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v14, 0x128cab2d

    invoke-static {v14, v15, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v11, "mAllowWiu_noBinding"

    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "mAllowWiu_inBindService"

    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "mAllowWiu_byBindings"

    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    const/4 v15, -0x1

    if-eq v11, v15, :cond_7

    goto :goto_0

    :cond_7
    move v11, v14

    :goto_0
    const-string/jumbo v14, "getFgsAllowWiu_legacy"

    invoke-static {v11, v1, v2, v14}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    if-eq v11, v15, :cond_8

    goto :goto_1

    :cond_8
    move v11, v14

    :goto_1
    const-string/jumbo v14, "getFgsAllowWiu_new"

    invoke-static {v11, v1, v2, v14}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "getFgsAllowWiu_forStart"

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result v14

    invoke-static {v14, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12, v13, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v11

    if-eqz v11, :cond_a

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    if-eq v11, v15, :cond_9

    goto :goto_2

    :cond_9
    move v11, v12

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result v11

    :goto_2
    const-string/jumbo v12, "getFgsAllowWiu_forCapabilities"

    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "allowUiJobScheduling="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    const-string/jumbo v12, "recentCallingPackage="

    invoke-static {v1, v2, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    const-string/jumbo v12, "recentCallingUid="

    invoke-static {v1, v11, v2, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v11, "mAllowStart_noBinding"

    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "mAllowStart_inBindService"

    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "mAllowStart_byBindings"

    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iget v13, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    if-eq v11, v15, :cond_b

    goto :goto_3

    :cond_b
    if-eq v12, v15, :cond_c

    move v11, v12

    goto :goto_3

    :cond_c
    move v11, v13

    :goto_3
    const-string/jumbo v12, "getFgsAllowStart_legacy"

    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iget v12, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    if-eq v11, v15, :cond_d

    goto :goto_4

    :cond_d
    move v11, v12

    :goto_4
    const-string/jumbo v12, "getFgsAllowStart_new"

    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "getFgsAllowStart"

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v12

    invoke-static {v12, v1, v2, v11}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "startForegroundCount="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    const-string/jumbo v12, "infoAllowStartForeground="

    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v11, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v11, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v11, v11, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v11, :cond_e

    sget-boolean v11, Lcom/android/server/am/FreecessController;->FASTOLAF_FEATURE_DEALY_SERVICE:Z

    if-eqz v11, :cond_e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "serviceDelayed="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->serviceDelayed:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    :cond_e
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v11, :cond_f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "delayed="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    :cond_f
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v11, :cond_10

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v11, :cond_11

    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "isForeground="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " foregroundId="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, " types=0x%08X"

    invoke-virtual {v1, v12, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v11, " foregroundNoti="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz v11, :cond_11

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "isShortFgs=true"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " startId="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    iget v11, v11, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " startForegroundCount="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    iget v11, v11, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " startTime="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    iget-wide v11, v11, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v11, " timeout="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v11

    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v11, " demoteTime="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v11

    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v11, " anrTime="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v11

    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_11
    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    if-eqz v11, :cond_12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "isFgsDelegate="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    :cond_12
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "createTime="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    invoke-static {v11, v12, v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v9, " startingBgTimeout="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "lastActivity="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v9, " restartTime="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v9, " createdFromFg="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Z)V

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    if-eqz v9, :cond_13

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, " pendingConnectionGroup="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " Importance="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    :cond_13
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v9, :cond_14

    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v9, :cond_14

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v9, :cond_15

    :cond_14
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "startRequested="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    const-string v9, " delayedStop="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    const-string v9, " stopIfKilled="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    const-string v9, " callStart="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    const-string v9, " lastStartId="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    const-string v9, " startCommandResult="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    :cond_15
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v9, :cond_16

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "executeNesting="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " executeFg="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    const-string v9, " executingStart="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-static {v9, v10, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_16
    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v10, 0x0

    if-nez v9, :cond_17

    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v9, v12, v10

    if-eqz v9, :cond_18

    :cond_17
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "destroying="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    const-string v9, " destroyTime="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    invoke-static {v12, v13, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_18
    iget v9, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v9, :cond_19

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v9, :cond_19

    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v14, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v14, v12, v14

    cmp-long v9, v14, v10

    if-nez v9, :cond_19

    cmp-long v9, v12, v10

    if-eqz v9, :cond_1a

    :cond_19
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "restartCount="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " restartDelay="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v14, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v9, " nextRestartTime="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static {v12, v13, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v9, " crashCount="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(I)V

    :cond_1a
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Delivered Starts:"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-static {v1, v2, v9, v7, v8}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    :cond_1b
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1c

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "Pending Starts:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-static {v1, v2, v7, v10, v11}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    :cond_1c
    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const-string v8, "  "

    if-lez v7, :cond_20

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Bindings:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v5

    :goto_5
    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v7, v9, :cond_20

    iget-object v9, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/IntentBindRecord;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "* IntentBindRecord{"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/am/IntentBindRecord;->collectFlags()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    and-long/2addr v12, v14

    cmp-long v12, v12, v10

    if-eqz v12, :cond_1d

    const-string v12, " CREATE"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_1d
    const-string/jumbo v12, "}:"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v13, v9, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v13}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13, v5, v6, v5, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "binder="

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v13, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "requested="

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->requested:Z

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Z)V

    const-string v13, " received="

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Z)V

    const-string v13, " hasBound="

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Z)V

    const-string v13, " doRebind="

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v13, v9, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Z)V

    move v13, v5

    :goto_6
    iget-object v14, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_1f

    iget-object v14, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/AppBindRecord;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, "* Client AppBindRecord{"

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v15, 0x20

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-object v15, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(C)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v14, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_1e

    const-string/jumbo v5, "Per-process Connections:"

    invoke-static {v1, v15, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_1e

    move/from16 v16, v6

    iget-object v6, v14, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v16

    const-wide/16 v10, 0x0

    goto :goto_7

    :cond_1e
    move/from16 v16, v6

    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v16

    const/16 v4, 0x7d

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    goto/16 :goto_6

    :cond_1f
    move/from16 v16, v6

    add-int/lit8 v7, v7, 0x1

    const/16 v4, 0x7d

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    goto/16 :goto_5

    :cond_20
    move/from16 v16, v6

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_22

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "All Connections:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_8
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_22

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_21

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0x10800000002L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-wide v5, 0x10500000003L

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-wide v6, v5

    const/4 v5, 0x0

    move-wide v7, v6

    const/4 v6, 0x1

    move-wide v15, v3

    const-wide v3, 0x10b00000004L

    move-wide/from16 v17, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    move-wide/from16 v13, v17

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-wide v13, v5

    :goto_1
    const-wide v2, 0x10900000005L

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000006L

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000007L

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const-wide v3, 0x10500000004L

    move-wide/from16 v19, v9

    const-wide v8, 0x10900000002L

    if-eqz v2, :cond_4

    const-wide v13, 0x10b00000008L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_3
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-wide v8, 0x10900000003L

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_4
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, -0x1

    if-eqz v2, :cond_5

    const-wide v8, 0x10b00000009L

    invoke-virtual {v2, v1, v8, v9, v5}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :cond_5
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_6

    const-wide v8, 0x10b0000000aL

    invoke-virtual {v2, v1, v8, v9, v5}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :cond_6
    const-wide v8, 0x1080000000bL

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x1080000000cL

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const-wide v8, 0x10500000001L

    if-nez v2, :cond_7

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v2, :cond_8

    :cond_7
    const-wide v13, 0x10b0000000dL

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    const-wide v3, 0x10500000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_8
    const-wide v2, 0x10b0000000eL

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    const-wide v13, 0x10500000004L

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b0000000fL

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    move-object/from16 v1, p1

    move-wide/from16 v6, v17

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000010L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000011L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10800000012L

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000001bL

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    const-wide v3, 0x10800000003L

    if-nez v2, :cond_9

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v2, :cond_9

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v2, :cond_a

    :cond_9
    const-wide v11, 0x10b00000013L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v13, 0x10800000001L

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v1, v13, v14, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    const-wide v12, 0x10800000002L

    invoke-virtual {v1, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v12, 0x10500000005L

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {v1, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000006L

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    invoke-virtual {v1, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_a
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v2, :cond_b

    const-wide v10, 0x10b00000014L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    const-wide v12, 0x10800000002L

    invoke-virtual {v1, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move-wide v4, v3

    const-wide v2, 0x10b00000003L

    move-wide v12, v4

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2

    :cond_b
    move-wide v12, v3

    :goto_2
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v10, 0x0

    if-nez v2, :cond_c

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_d

    :cond_c
    const-wide v2, 0x10b00000015L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    :cond_d
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v2, :cond_e

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v2, :cond_e

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v10

    if-nez v4, :cond_e

    cmp-long v2, v2, v10

    if-eqz v2, :cond_f

    :cond_e
    const-wide v2, 0x10b00000016L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v4, v2, v4

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000003L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    const-wide v3, 0x10500000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_f
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_10

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000017L

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-wide v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move-wide v6, v5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_3

    :cond_10
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000018L

    move-object/from16 v2, p1

    move-wide v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move-object v1, v2

    move-wide v6, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_11
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_18

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v9, :cond_18

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/am/IntentBindRecord;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v2, 0x20b00000019L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, v15, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v5, v2

    move-object v1, v4

    const-wide v3, 0x10b00000001L

    move-wide/from16 v21, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-wide/from16 v23, v10

    move-wide/from16 v25, v21

    const-wide v10, 0x10900000002L

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    move-object v1, v2

    goto :goto_6

    :cond_12
    move-wide/from16 v25, v2

    move-wide/from16 v23, v10

    const-wide v10, 0x10900000002L

    :goto_6
    iget-object v2, v15, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_13
    invoke-virtual {v15}, Lcom/android/server/am/IntentBindRecord;->collectFlags()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    cmp-long v2, v2, v23

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_7

    :cond_14
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v1, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000004L

    iget-boolean v4, v15, Lcom/android/server/am/IntentBindRecord;->requested:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000005L

    iget-boolean v4, v15, Lcom/android/server/am/IntentBindRecord;->received:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000006L

    iget-boolean v4, v15, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000007L

    iget-boolean v4, v15, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, v15, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_17

    iget-object v4, v15, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBindRecord;

    if-eqz v4, :cond_16

    const-wide v5, 0x20b00000008L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    iget-object v7, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-wide v12, 0x10900000001L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_15

    iget-object v12, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v12, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    const-wide v10, 0x20900000003L

    invoke-virtual {v1, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    const-wide v10, 0x10900000002L

    goto :goto_9

    :cond_15
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_16
    add-int/lit8 v3, v3, 0x1

    const-wide v10, 0x10900000002L

    const-wide v12, 0x10800000003L

    goto :goto_8

    :cond_17
    move-wide/from16 v5, v25

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v10, v23

    const-wide v12, 0x10800000003L

    goto/16 :goto_5

    :cond_18
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v8, :cond_1d

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/ArrayList;

    const/4 v11, 0x0

    :goto_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1c

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    iget-object v13, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    const-wide v2, 0x20b0000001aL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, v13, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_19

    const-wide v5, 0x10500000002L

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_19
    sget-object v6, Lcom/android/server/am/ConnectionRecord;->BIND_ORIG_ENUMS:[I

    sget-object v7, Lcom/android/server/am/ConnectionRecord;->BIND_PROTO_ENUMS:[I

    move-wide/from16 v17, v3

    const-wide v2, 0x20e00000003L

    iget-wide v4, v12, Lcom/android/server/am/ConnectionRecord;->flags:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    iget-boolean v2, v12, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-eqz v2, :cond_1a

    const-wide v2, 0x20e00000003L

    const/16 v4, 0xf

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1a
    iget-object v2, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_1b

    const-wide v3, 0x10900000004L

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_1b
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_1c
    const-wide v17, 0x10900000001L

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_1d
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz v2, :cond_1e

    iget v3, v2, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v2, v2, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    if-ne v3, v2, :cond_1e

    const-wide v2, 0x10b0000001cL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    iget-wide v4, v4, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    const-wide v6, 0x10300000001L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    iget v4, v4, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    const-wide v6, 0x10500000003L

    invoke-virtual {v1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v4

    const-wide v6, 0x10300000004L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v4

    const-wide v6, 0x10300000005L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v4

    const-wide v6, 0x10300000006L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1e
    move-wide/from16 v2, v19

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    if-ne v3, p1, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    if-ne v3, p2, :cond_1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    if-eqz v0, :cond_0

    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getFgsAllowStart()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v1, 0x128cab2d

    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return p0

    :cond_1
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iget v2, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    if-eq v0, v1, :cond_2

    return v0

    :cond_2
    if-eq v2, v1, :cond_3

    return v2

    :cond_3
    return p0
.end method

.method public final getFgsAllowWiu_forStart()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v1, 0x128caab5

    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return p0

    :cond_1
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    if-eq v0, v1, :cond_2

    return v0

    :cond_2
    return p0
.end method

.method public final getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTracker()Lcom/android/internal/app/procstats/ServiceState;
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v1, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/internal/app/procstats/ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    return-object p0
.end method

.method public final hasAutoCreateConnections()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final isFgsAllowedStart()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFgsAllowedWiu_forCapabilities()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v1, 0x12b256f1

    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isShortFgs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    const/16 v0, 0x800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final makeRestarting(IJ)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v1, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    return-void
.end method

.method public final maybeLogFgsLogicChange()V
    .locals 9

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :cond_0
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iget v4, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iget v5, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    if-eq v3, v2, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    if-eq v4, v2, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-eq v3, v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_5

    move v7, v5

    goto :goto_3

    :cond_5
    move v7, v6

    :goto_3
    if-ne v0, v2, :cond_6

    move v8, v5

    goto :goto_4

    :cond_6
    move v8, v6

    :goto_4
    if-eq v7, v8, :cond_7

    move v7, v5

    goto :goto_5

    :cond_7
    move v7, v6

    :goto_5
    if-ne v4, v2, :cond_8

    move v8, v5

    goto :goto_6

    :cond_8
    move v8, v6

    :goto_6
    if-ne v3, v2, :cond_9

    move v2, v5

    goto :goto_7

    :cond_9
    move v2, v6

    :goto_7
    if-eq v8, v2, :cond_a

    goto :goto_8

    :cond_a
    move v5, v6

    :goto_8
    if-nez v7, :cond_b

    if-nez v5, :cond_b

    return-void

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "FGS logic changed:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ""

    if-eqz v7, :cond_c

    const-string v7, " [WIU changed]"

    goto :goto_9

    :cond_c
    move-object v7, v6

    :goto_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_d

    const-string v6, " [BFSL changed]"

    :cond_d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Orig WIU:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " New WIU:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Orig BFSL:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " New BFSL:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " cmp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sdk: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final postNotification(Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v1, Lcom/android/server/am/ServiceRecord$2;

    move-object v9, p0

    move-object v2, p0

    move v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/app/Notification;IIZLcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsNothing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateProcessStateOnRequest()V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    const/4 v1, 0x0

    if-lez v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iput-object p0, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    iput v0, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput v0, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    iput v1, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput v1, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_9

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v3, v1

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    if-eqz p1, :cond_7

    invoke-virtual {v4}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    if-eqz p1, :cond_a

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_a
    return-void
.end method

.method public final shouldTriggerShortFgsTimedEvent(JJ)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz p0, :cond_2

    iget v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    if-ne v0, p0, :cond_2

    cmp-long p0, p1, p3

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x80

    const-string/jumbo v1, "ServiceRecord{"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public final updateKeepWarmLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v4, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    return-void
.end method

.method public final updateOomAdjSeq()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAdjSeq:I

    :cond_0
    return-void
.end method

.method public final updateProcessStateOnRequest()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mProcessStateOnRequest:I

    return-void
.end method

.method public final wasOomAdjUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAdjSeq:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
