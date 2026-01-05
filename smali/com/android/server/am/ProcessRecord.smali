.class public final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public AMSExceptionFlag:I

.field public activeLaunchTime:J

.field public appKeepingTime:J

.field public final appZygote:Z

.field public callStack:Ljava/lang/String;

.field public dhaKeepEmptyFlag:I

.field public volatile info:Landroid/content/pm/ApplicationInfo;

.field public isAMSException:Z

.field public isActiveLaunch:Z

.field public isForKeeping:Z

.field public isNeverKillException:Z

.field public final isSdkSandbox:Z

.field public final isolated:Z

.field public final mBackgroundStartPrivileges:Landroid/util/ArrayMap;

.field public mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

.field public volatile mBindApplicationTime:J

.field public volatile mBindMountPending:Z

.field public volatile mClearedWaitingToKill:Z

.field public mCompat:Landroid/content/res/CompatibilityInfo;

.field public mDeathRecipient:Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;

.field public mDebugging:Z

.field public mDedicated:Z

.field public mDisabledCompatChanges:[J

.field public mDyingPid:I

.field public final mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

.field public mExcessiveResourceUsage:Z

.field public mFixedAppContextDisplay:Z

.field public mGids:[I

.field public volatile mHostingRecord:Lcom/android/server/am/HostingRecord;

.field public mInFullBackup:Z

.field public mInfant:Z

.field public mInstr:Lcom/android/server/am/ActiveInstrumentation;

.field public mInstructionSet:Ljava/lang/String;

.field public mIpmLaunchType:I

.field public volatile mIsCancelFromSeq:Z

.field public mIsRemovedName:Z

.field public mIsolatedEntryPoint:Ljava/lang/String;

.field public mIsolatedEntryPointArgs:[Ljava/lang/String;

.field public mKeepSEMPrcp:Z

.field public final mKillProcessTimeout:I

.field public mKillTime:J

.field public mKilled:Z

.field public mKilledByAm:Z

.field public mLastActivityTime:J

.field public final mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public mLoggableCompatChanges:[J

.field public mLruSeq:I

.field public volatile mMountMode:I

.field public mOnewayThread:Landroid/app/IApplicationThread;

.field public final mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

.field public mPendingFinishAttach:Z

.field public mPendingStart:Z

.field public volatile mPersistent:Z

.field public mPid:I

.field public mPkgDeps:Landroid/util/ArraySet;

.field public final mPkgList:Lcom/android/server/am/PackageList;

.field public volatile mPredecessor:Lcom/android/server/am/ProcessRecord;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

.field public volatile mProcessGroupCreated:Z

.field public final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field public final mProviders:Lcom/android/server/am/ProcessProviderRecord;

.field public final mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

.field public volatile mRemoved:Z

.field public mRenderThreadTid:I

.field public mRequiredAbi:Ljava/lang/String;

.field public volatile mSeInfo:Ljava/lang/String;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mServices:Lcom/android/server/am/ProcessServiceRecord;

.field public mShortStringName:Ljava/lang/String;

.field public volatile mSkipProcessGroupCreation:Z

.field public volatile mStartElapsedTime:J

.field public mStartSeq:J

.field public volatile mStartUid:I

.field public volatile mStartUptime:J

.field public final mState:Lcom/android/server/am/ProcessStateRecord;

.field public mStringName:Ljava/lang/String;

.field public volatile mSuccessor:Lcom/android/server/am/ProcessRecord;

.field public mSuccessorStartRunnable:Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;

.field public mTGLCallbackPosted:Z

.field public mThread:Lcom/android/server/am/ApplicationThreadDeferred;

.field public mUidRecord:Lcom/android/server/am/UidRecord;

.field public mUnlocked:Z

.field public mUsingWrapper:Z

.field public mWaitedForDebugger:Z

.field public mWaitingToKill:Ljava/lang/String;

.field public volatile mWasForceStopped:Z

.field public final mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

.field public mlLaunchTime:J

.field public final processInfo:Landroid/content/pm/ProcessInfo;

.field public final processName:Ljava/lang/String;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 11

    move-object v3, p3

    move v4, p4

    move/from16 v1, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    new-instance v8, Lcom/android/server/am/PackageList;

    invoke-direct {v8, p0}, Lcom/android/server/am/PackageList;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iput v2, p0, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v7, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v7, p0, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput v5, p0, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    const-string v7, "<empty>"

    iput-object v7, p0, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKeepSEMPrcp:Z

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mFixedAppContextDisplay:Z

    iput v5, p0, Lcom/android/server/am/ProcessRecord;->mKillProcessTimeout:I

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object v7, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p1, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    if-lez v1, :cond_0

    check-cast v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/android/server/pm/Computer;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v7, p7

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProcessInfo;

    goto :goto_0

    :cond_0
    check-cast v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/android/server/pm/Computer;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProcessInfo;

    goto :goto_0

    :cond_1
    move-object v1, v9

    :goto_0
    if-eqz v1, :cond_3

    iget-object v7, v1, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-nez v7, :cond_3

    iget v7, v1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne v7, v5, :cond_3

    iget v7, v1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-ne v7, v5, :cond_3

    iget v7, v1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne v7, v5, :cond_3

    :cond_2
    move-object v1, v9

    :cond_3
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    invoke-static {p4}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    invoke-static {p4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const v7, 0x15f90

    if-lt v5, v7, :cond_4

    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const v7, 0x182b7

    if-gt v5, v7, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    iput v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v7, p5

    iput-object v7, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    :cond_5
    iput-object v9, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iput-object v9, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    new-instance v1, Lcom/android/server/am/ProcessProfileRecord;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessProfileRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    new-instance v2, Lcom/android/server/am/ProcessServiceRecord;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessServiceRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    new-instance v2, Lcom/android/server/am/ProcessProviderRecord;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessProviderRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    new-instance v2, Lcom/android/server/am/ProcessReceiverRecord;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessReceiverRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    new-instance v2, Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessErrorStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    new-instance v2, Lcom/android/server/am/ProcessStateRecord;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    new-instance v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-direct {v7, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v7, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    iput-wide v9, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    iput-wide v9, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    iput-wide v9, v2, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    new-instance v1, Lcom/android/server/wm/WindowProcessController;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v7, p0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowProcessController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v2, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    invoke-static {p0}, Lcom/android/server/am/ProcessRecord;->updateProcessRecordNodes(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static updateProcessRecordNodes(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .locals 3

    const-string/jumbo v0, "entity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "backgroundStartPrivileges"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const-string/jumbo v1, "backgroundStartPrivileges does not allow anything"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v1

    const-string/jumbo v2, "backgroundStartPrivileges does not allow anything"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v1

    const-string/jumbo v2, "backgroundStartPrivileges does not allow anything"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessRecord;->setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V
    .locals 7

    iget-object v0, p4, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, p4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v6, p1, v4, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object p2

    iput-object p2, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object p3, p4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p3, p2, v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p2

    iput-object p2, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    iget-object p0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "user #"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " uid="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v7, v8, :cond_0

    const-string v7, " ISOLATED uid="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    :cond_0
    const-string v7, " gids={"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    move v7, v8

    :goto_0
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    array-length v9, v9

    if-ge v7, v9, :cond_2

    if-eqz v7, :cond_1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    aget v9, v9, v7

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "}"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v7, :cond_5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "processInfo:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v7, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v7, :cond_3

    move v7, v8

    :goto_1
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v9, v9, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v7, v9, :cond_3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "  deny: "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v9, v9, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v7, v7, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_4

    const-string v7, "  gwpAsanMode="

    invoke-static {v1, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v10, v10, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-static {v7, v10, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_4
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v7, v7, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v7, v9, :cond_5

    const-string v7, "  memtagMode="

    invoke-static {v1, v2, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v9, v9, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-static {v7, v9, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "mRequiredAbi="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " instructionSet="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "class="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "manageSpaceActivityName="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "dir="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " publicDir="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " data="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v7

    :try_start_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "packageList={"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move v10, v8

    :goto_2
    if-ge v10, v9, :cond_9

    if-lez v10, :cond_8

    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_8
    :goto_3
    iget-object v11, v7, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    const-string/jumbo v9, "}"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    if-eqz v7, :cond_c

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "packageDependencies={"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v7, v8

    :goto_4
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v7, v9, :cond_b

    if-lez v7, :cond_a

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    const-string/jumbo v7, "}"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "compat="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v7, :cond_d

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "mInstr="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "thread="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "pid="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    const-string/jumbo v9, "lastActivityTime="

    invoke-static {v7, v1, v2, v9}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    invoke-static {v9, v10, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "startUpTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    invoke-static {v9, v10, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "startElapsedTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    invoke-static {v9, v10, v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v5, :cond_e

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-eqz v5, :cond_f

    :cond_e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "persistent="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " removed="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_f
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-eqz v5, :cond_10

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mDebugging="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_10
    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    if-eqz v5, :cond_11

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "pendingStart="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "startSeq="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    const-string/jumbo v7, "mountMode="

    invoke-static {v5, v6, v1, v2, v7}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-class v5, Lcom/android/internal/os/Zygote;

    const-string/jumbo v6, "MOUNT_EXTERNAL_"

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    invoke-static {v5, v6, v7}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v5, :cond_12

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v5, :cond_12

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    if-eqz v5, :cond_13

    :cond_12
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "killed="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " killedByAm="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " waitingToKill="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    if-nez v5, :cond_14

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v5, :cond_15

    :cond_14
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "isolatedEntryPoint="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    const-string/jumbo v6, "isolatedEntryPointArgs="

    invoke-static {v1, v5, v2, v6}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v6, 0xa

    const-wide/16 v9, 0x0

    if-le v5, v6, :cond_17

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "lastCpuTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    cmp-long v7, v11, v9

    if-lez v7, :cond_16

    const-string v7, " timeUsed="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-static {v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_16
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_17
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v11, v5, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget-object v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v7}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v7

    const-wide/16 v12, 0x400

    if-eqz v7, :cond_18

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "lastPssTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {v14, v15, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v7, " pssProcState="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " pssStatType="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " nextPssTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    invoke-static {v14, v15, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "lastPss="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    mul-long/2addr v14, v12

    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v7, " lastSwapPss="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    mul-long/2addr v14, v12

    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v7, " lastCachedPss="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    mul-long/2addr v14, v12

    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v7, " lastCachedSwapPss="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    mul-long/2addr v14, v12

    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v7, " lastRss="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long/2addr v14, v12

    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_13

    :cond_18
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "lastRssTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {v14, v15, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v7, " rssProcState="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " rssStatType="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " nextRssTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    invoke-static {v14, v15, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "lastRss="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long/2addr v14, v12

    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v7, " lastCachedRss="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    mul-long/2addr v14, v12

    invoke-static {v1, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    :goto_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "trimMemoryLevel="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "procStateMemTracker: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "lastRequestedGc="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    invoke-static {v12, v13, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v7, " lastLowMemory="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    invoke-static {v12, v13, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v7, " reportLowMemory="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Z)V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "currentHostingComponentTypes=0x"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " historicalHostingComponentTypes=0x"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    if-nez v7, :cond_19

    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v7, v11, v9

    if-eqz v7, :cond_1c

    :cond_19
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "reportedInteraction="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    cmp-long v7, v11, v9

    if-eqz v7, :cond_1a

    const-string v7, " time="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :cond_1a
    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v7, v11, v9

    if-eqz v7, :cond_1b

    const-string v7, " fgInteractionTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :cond_1b
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_1c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "adjSeq="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " lruSeq="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v11, v7, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    const-string/jumbo v12, "oom adj: max="

    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " curRaw="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " setRaw="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " cur="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " set="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const-string/jumbo v12, "mCurSchedGroup="

    invoke-static {v11, v1, v2, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " setSchedGroup="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " systemNoUi="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    const-string/jumbo v12, "curProcState="

    invoke-static {v1, v2, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " mRepProcState="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " setProcState="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " lastStateTime="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v5, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    invoke-static {v11, v12, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "curCapability="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-static {v1, v11}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    const-string v11, " setCapability="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    invoke-static {v1, v11}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-eqz v11, :cond_1d

    const-string v11, " backgroundRestricted="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " boundByNonBgRestrictedApp="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    :cond_1d
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-nez v11, :cond_1e

    iget-object v11, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    if-eqz v11, :cond_1f

    :cond_1e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "hasShownUi="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " pendingUiClean="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "cached="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " empty="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v12, 0x13

    const/4 v13, 0x1

    if-lt v11, v12, :cond_20

    move v11, v13

    goto :goto_6

    :cond_20
    move v11, v8

    :goto_6
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    if-eqz v11, :cond_21

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "serviceb="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    const-string v11, " serviceHighRam="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Z)V

    :cond_21
    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    if-eqz v11, :cond_23

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "notCachedSinceIdle="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v5, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v11, v5, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v11}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v11

    if-eqz v11, :cond_22

    const-string v11, " initialIdlePss="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :cond_22
    const-string v11, " initialIdleRss="

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v11, v7, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->println(J)V

    :cond_23
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    if-nez v7, :cond_24

    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    if-nez v7, :cond_24

    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v7, :cond_25

    :cond_24
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "hasTopUi="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " hasOverlayUi="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " runningRemoteAnimation="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Z)V

    :cond_25
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    if-nez v7, :cond_26

    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    if-eqz v7, :cond_27

    :cond_26
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "foregroundActivities="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " (rep="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_27
    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-le v7, v6, :cond_28

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "whenUnimportant="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    sub-long/2addr v6, v3

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_28
    iget-wide v6, v5, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    cmp-long v6, v6, v9

    if-lez v6, :cond_29

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastTopTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    invoke-static {v6, v7, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_29
    iget-wide v6, v5, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v11, v6, v9

    if-lez v11, :cond_2a

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v6, v6, v11

    if-gez v6, :cond_2a

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastInvisibleTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v6, v11, v6

    iget-wide v14, v5, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    add-long/2addr v6, v14

    invoke-static {v1, v6, v7, v11, v12}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_2a
    iget-boolean v6, v5, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz v6, :cond_2b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "hasStartedServices="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v5, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2b
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const-string v6, " bad="

    const-string v7, " "

    const-string v11, " mNotResponding="

    const-string v12, " "

    const-string v14, " mCrashing="

    iget-object v15, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v15

    move-wide/from16 v16, v9

    :try_start_2
    iget-boolean v9, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-nez v9, :cond_2e

    iget-object v9, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    iget-object v10, v9, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-eqz v10, :cond_2c

    move v10, v13

    goto :goto_8

    :cond_2c
    move v10, v8

    :goto_8
    if-nez v10, :cond_2e

    iget-boolean v10, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-nez v10, :cond_2e

    iget-object v9, v9, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-eqz v9, :cond_2d

    goto :goto_9

    :cond_2d
    move v13, v8

    :goto_9
    if-nez v13, :cond_2e

    iget-boolean v9, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    if-eqz v9, :cond_30

    goto :goto_a

    :catchall_2
    move-exception v0

    goto/16 :goto_12

    :cond_2e
    :goto_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    iget-object v10, v10, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    iget-object v7, v7, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    if-eqz v6, :cond_2f

    const-string v6, " errorReportReceiver="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_30
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    iget-object v7, v5, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v6, :cond_31

    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Lcom/android/server/am/ActivityManagerService$12;

    if-eqz v6, :cond_32

    :cond_31
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mHasForegroundServices="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " forcingToImportant="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Lcom/android/server/am/ActivityManagerService$12;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_32
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v6, :cond_33

    iget-wide v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    cmp-long v6, v6, v16

    if-lez v6, :cond_34

    :cond_33
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mHasTopStartedAlmostPerceptibleServices="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mLastTopStartedAlmostPerceptibleBindRequestUptimeMs="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    :cond_34
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-nez v6, :cond_35

    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    if-nez v6, :cond_35

    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz v6, :cond_36

    :cond_35
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "hasClientActivities="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " hasAboveClient="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " treatLikeActivity="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    :cond_36
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    if-nez v6, :cond_37

    iget v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    if-eqz v6, :cond_38

    :cond_37
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "connectionGroup="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " Importance="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " Service="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_38
    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    if-eqz v6, :cond_39

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "allowlistManager="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    :cond_39
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    const-string v7, "  - "

    if-lez v6, :cond_3a

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Services:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    move v9, v8

    :goto_b
    if-ge v9, v6, :cond_3a

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_3a
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_3b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Executing Services (fg="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    move v9, v8

    :goto_c
    if-ge v9, v6, :cond_3b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_3b
    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_3c

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mConnections:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    move v9, v8

    :goto_d
    if-ge v9, v6, :cond_3c

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_3c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "scheduleServiceTimeoutPending="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v5, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-wide v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    cmp-long v6, v6, v16

    if-lez v6, :cond_3d

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastProviderTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    invoke-static {v6, v7, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_3d
    iget-object v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const-string v7, "  - "

    if-lez v6, :cond_3e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Published Providers:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v9, v8

    :goto_e
    if-ge v9, v6, :cond_3e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "    -> "

    invoke-static {v1, v10, v2, v11}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_3e
    iget-object v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Connected Providers:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v8

    :goto_f
    if-ge v9, v6, :cond_3f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ContentProviderConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v12, v10, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_3f
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    iget-object v6, v5, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    const-string v7, "  - "

    if-nez v6, :cond_40

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Current mReceivers:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    move v9, v8

    :goto_10
    if-ge v9, v6, :cond_40

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_40
    iget-object v6, v5, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_41

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mReceivers:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    move v9, v8

    :goto_11
    if-ge v9, v6, :cond_41

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_41
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "lastCompactTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string v6, " lastCompactProfile="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "hasPendingCompaction="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "isFreezeExempt="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " isPendingFreeze="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " isFrozen="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    const-string/jumbo v7, "earliestFreezableTimeMs="

    invoke-static {v1, v2, v7, v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-wide v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    invoke-static {v6, v7, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    iget-object v3, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_42

    const-string v3, " mFrozenProcessListeners="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_42
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/WindowProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v3, "<empty>"

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "removed from: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_43
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    if-eqz v0, :cond_44

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isMLException="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Z)V

    :cond_44
    return-void

    :goto_12
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :goto_13
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :goto_14
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000002L

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const-wide v0, 0x10500000004L

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    const-wide v0, 0x10800000007L

    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-ltz p4, :cond_2

    const-wide v0, 0x10500000008L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getBackgroundStartPrivileges()Landroid/app/BackgroundStartPrivileges;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    if-nez v1, :cond_0

    sget-object v1, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v2, v3}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "getClientInfoForSdkSandbox called for non-sandbox process"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCurProcState()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    return p0
.end method

.method public final getIpmLaunchtype()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    return p0
.end method

.method public getLruProcessList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getPackageListWithVersionCode()Ljava/util/List;
    .locals 7

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Landroid/content/pm/VersionedPackage;

    iget-object v4, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    invoke-direct {v3, v4, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getPid()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    return p0
.end method

.method public final getProcessClassEnum()I
    .locals 2

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method public final hasActivitiesOrRecentTasks()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isActiveLaunch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    return p0
.end method

.method public final isDebuggable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final isFreezable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInterestingToUserLocked()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    iget-object v6, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_1
    if-ltz v2, :cond_5

    iget-object v4, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v4, v4, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_2
    return v5

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    return p0

    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final isKilledByAm()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    return p0
.end method

.method public final isPersistent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    return p0
.end method

.method public final isThreadReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 14

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/4 v2, 0x1

    if-lez v1, :cond_1

    invoke-static {v1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v1

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eq v1, v3, :cond_1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Not TGL "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v2, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p0}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/am/ProcessRecord;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v1, :cond_8

    const-string/jumbo v1, "kill"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ": "

    move-object/from16 v5, p4

    invoke-static {v5, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object/from16 v5, p4

    move-object v1, v5

    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v5, :cond_3

    if-nez p5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v12, p3

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Killing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (adj "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(ILjava/lang/String;)V

    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    iput-boolean v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move/from16 v7, p2

    invoke-virtual {v5, p0, p1, v7, v1}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v0}, Landroid/os/Process;->getRss(I)[J

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    aget-wide v0, v0, v6

    goto :goto_3

    :cond_5
    const-wide/16 v0, 0x0

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7547

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "B|killProcessQuiet comm="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v5}, Landroid/os/Process;->killProcessQuiet(I)V

    move/from16 v5, p6

    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessRecord;->killProcessGroupIfNecessaryLocked(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "E|killProcessQuiet pss="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_6
    iput-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    :goto_4
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_7
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_8
    :goto_6
    return-void
.end method

.method public final killLocked(ILjava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x1

    move-object v4, p2

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final killProcessGroupIfNecessaryLocked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget v0, v0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    iget v0, v0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    move v1, v0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_3
    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    iget p1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {p1, v0, v1}, Landroid/os/Process;->sendSignalToProcessGroup(III)Z

    :cond_3
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p1, p0}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    :cond_4
    return-void
.end method

.method public final makeActive(Lcom/android/server/am/ApplicationThreadDeferred;Lcom/android/server/am/ProcessStatsService;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v6, v3, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v7, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    if-eqz v6, :cond_0

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v11, v12, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    const/4 v7, -0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :cond_0
    :goto_0
    iget-object v7, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v9}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    move v15, v8

    goto :goto_2

    :cond_1
    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    goto :goto_1

    :goto_2
    iget-object v14, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v7, v7, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide/from16 v16, v7

    move-object/from16 v18, v9

    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v7

    iput-object v7, v3, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    monitor-enter v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v8, v12, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_4

    iget-object v10, v12, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v12, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v13, v11, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v13, :cond_2

    if-eq v13, v6, :cond_2

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    :cond_2
    iget-object v13, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v13, v13, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    move-object/from16 v16, v6

    iget-object v6, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move/from16 v17, v8

    iget-object v8, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v8, v10, v15, v13, v14}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v8

    iput-object v8, v11, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v10, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v10, v8, v6}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v6

    iput-object v6, v11, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v6, v7, :cond_3

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v16

    move/from16 v8, v17

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_4
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iput-object v1, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :goto_4
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :goto_5
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v0

    :goto_6
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :cond_5
    iget-object v2, v3, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iput-object v1, v3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_7
    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_6

    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/SameProcessApplicationThread;-><init>(Landroid/app/IApplicationThread;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    goto :goto_8

    :cond_6
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    :goto_8
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0
.end method

.method public final onCleanupApplicationRecordLSP(Lcom/android/server/am/ProcessStatsService;ZZ)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    iget-object v2, v1, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    iput-object v3, v1, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    iget-object v2, v1, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    iput-object v3, v1, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    :goto_1
    iget-object v2, v1, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v1, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v5, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v3, v1, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->resetPackageList(Lcom/android/server/am/ProcessStatsService;)V

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    :cond_3
    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p3, v3}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v2, p3, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v4, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, p3, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v5, :cond_4

    iget-object v0, p3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v10, v11, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    const/4 v6, -0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    iput-object v3, p3, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    new-instance p1, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;

    invoke-direct {p1, v5}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v11, p1}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :cond_4
    :goto_3
    iput-object v3, p3, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object p1, p3, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p3, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-boolean v1, p1, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    iput-boolean v1, p1, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    iput-object v3, p1, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Lcom/android/server/am/ActivityManagerService$12;

    const/16 p3, -0x2710

    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iput v1, p1, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iput v1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iput v1, p1, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iput v1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    const/16 p3, 0x14

    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput p3, p1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    move p3, v1

    :goto_4
    iget-object v0, p1, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    array-length v2, v0

    if-ge p3, v2, :cond_5

    const/4 v2, -0x1

    aput v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, p3, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    iput-boolean v1, p3, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    iput-boolean v1, p3, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    iget-object p1, p3, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v1, p1, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    iget-object p3, p1, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_5
    if-ltz p3, :cond_6

    iget-object v2, p1, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ReceiverList;

    iget-object v4, p1, Lcom/android/server/am/ProcessReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBroadcastController:Lcom/android/server/am/BroadcastController;

    invoke-virtual {v4, v2}, Lcom/android/server/am/BroadcastController;->removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_6
    iget-object p1, p1, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p1, p0}, Lcom/android/server/am/OomAdjuster;->onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    sub-int/2addr p1, v0

    move p3, v1

    :goto_6
    iget-object v2, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ProcessProviderRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-ltz p1, :cond_c

    iget-object v5, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eq v6, v4, :cond_7

    goto :goto_9

    :cond_7
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    if-nez v6, :cond_9

    if-nez p2, :cond_8

    goto :goto_7

    :cond_8
    move v6, v1

    goto :goto_8

    :cond_9
    :goto_7
    move v6, v0

    :goto_8
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    move-result v2

    if-nez v6, :cond_b

    if-eqz v2, :cond_b

    iget-object v2, v5, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v5}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    move p3, v0

    :cond_b
    iput-object v3, v5, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    :goto_9
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_c
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {p1, v4, v1}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p1, v4}, Lcom/android/server/am/ProcessList;->noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    move p3, v0

    :cond_d
    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_a
    if-ltz p1, :cond_e

    iget-object p2, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ContentProviderConnection;

    iget-object v0, p2, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget v2, p2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v3, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, p2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object p2, p2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/am/ProcessProviderRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2, v3, v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(Landroid/content/ComponentName;Ljava/lang/String;II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_a

    :cond_e
    iget-object p0, p0, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_f
    return p3

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_c

    :goto_b
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0

    :goto_c
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method public final removeBackgroundStartPrivileges(Landroid/os/Binder;)V
    .locals 2

    const-string/jumbo v0, "entity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessRecord;->setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .locals 10

    iget-object v1, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/PackageList;->size()I

    move-result v0

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object v7, v3, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    const/4 v3, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    if-eq v0, v9, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    new-instance v3, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v0, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/PackageList;->clear()V

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v0, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v9, v3, v4, v5, v6}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object p1, p1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {p1, v3, v7}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    iget-object p0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    if-eq v0, v9, :cond_1

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p1}, Lcom/android/server/am/PackageList;->clear()V

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {p1, v0, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    :cond_1
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final setActiveLaunch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    return-void
.end method

.method public final setActiveLaunchTime()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    return-void
.end method

.method public final setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    monitor-enter v0

    if-nez p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/BackgroundStartPrivileges;

    if-eq p2, p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setIpmLaunchType()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    return-void
.end method

.method public final setMlLaunchTime()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    return-void
.end method

.method public final setPendingUiClean(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final setPid(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eq p1, v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    :cond_0
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput p1, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setRunningRemoteAnimation(Z)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string p0, "ActivityManager"

    const-string/jumbo p1, "system can\'t run remote animation"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, v1, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, p0}, Lcom/android/server/am/ProcessStateController;->runUpdate(ILcom/android/server/am/ProcessRecord;)Z

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final toDetailedString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "  "

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    return-object v0
.end method

.method public final toShortString(Ljava/lang/StringBuilder;)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, v1, :cond_1

    const/16 v2, 0x61

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const v0, 0x182b8

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x80

    const-string/jumbo v1, "ProcessRecord{"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public final unlinkDeathRecipient()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;

    return-void
.end method

.method public final updateProcessInfo(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez p1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, p2}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)V

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final useFifoUiScheduling()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mAllowSpecifiedFifoScheduling:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
