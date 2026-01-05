.class public final Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final crashDetectionAndOptimization:Lcom/android/server/am/CrashDetectionAndOptimization;

.field public mAppsNotReportingCrashes:Landroid/util/ArraySet;

.field public final mBadProcessLock:Ljava/lang/Object;

.field public volatile mBadProcesses:Lcom/android/internal/app/ProcessMap;

.field public final mContext:Landroid/content/Context;

.field public final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

.field public final mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

.field public final mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

.field public final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

.field public final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/CrashDetectionAndOptimization;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->crashDetectionAndOptimization:Lcom/android/server/am/CrashDetectionAndOptimization;

    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_3

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    iput-wide p1, v1, Landroid/app/ApplicationErrorReport;->time:J

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    move p1, p2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, v1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    iget-boolean p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-nez p1, :cond_5

    iget-boolean p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x2

    iput p2, v1, Landroid/app/ApplicationErrorReport;->type:I

    new-instance p2, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {p2}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object p2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object p3, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object p3, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    iget-object p3, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object p3, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object p1, p2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_3

    :cond_5
    :goto_2
    iput p2, v1, Landroid/app/ApplicationErrorReport;->type:I

    iput-object p3, v1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    return-object v2

    :cond_7
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "android.intent.action.APP_ERROR"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo p0, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p1
.end method

.method public static generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 1

    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    iput p1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object p1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    iget p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    iput p1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p0, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    iput-object p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public static resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V
    .locals 3

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-nez p1, :cond_1

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p2, :cond_2

    goto :goto_1

    :cond_0
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p3, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v9, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v4, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    iget-object v0, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    iget-object v5, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    const-string v6, ": "

    invoke-static {v4, v6, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    move-object v0, v4

    :cond_1
    :goto_0
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->crashDetectionAndOptimization:Lcom/android/server/am/CrashDetectionAndOptimization;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v6, :cond_3

    const-string/jumbo v6, "Native crash"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;

    invoke-direct {v6, v2}, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "java.lang.ClassNotFoundException"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;

    invoke-direct {v6, v2}, Lcom/android/server/am/CrashDetectionAndOptimization$DexOptimizationThread;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_1
    if-nez v2, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v6, v9, :cond_4

    const-string/jumbo v6, "system_server"

    :goto_2
    move-object v10, v6

    goto :goto_3

    :cond_4
    const-string/jumbo v6, "unknown"

    goto :goto_2

    :cond_5
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_2

    :goto_3
    const/4 v6, 0x0

    if-nez v2, :cond_6

    move v11, v6

    goto :goto_4

    :cond_6
    iget v11, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    :goto_4
    iget-object v12, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    filled-new-array {v10, v12}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v13, 0xe2

    invoke-static {v11, v13, v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v13, v12

    const-string/jumbo v12, "crash"

    move-object v14, v13

    iget-object v13, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    move-object v15, v14

    iget-object v14, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const/4 v12, 0x3

    if-eqz v2, :cond_9

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v13, "com.android.systemui:"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/server/PackageWatchdog;->notifyPackageFailure(ILjava/util/List;)V

    :cond_7
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10

    :try_start_0
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v14, "Native crash"

    iget-object v15, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x5

    goto :goto_5

    :cond_8
    const/4 v14, 0x4

    :goto_5
    const-string/jumbo v15, "crash"

    invoke-virtual {v13, v2, v14, v6, v15}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_9
    :goto_6
    if-eqz v2, :cond_a

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v10

    move v13, v10

    goto :goto_7

    :cond_a
    move v13, v6

    :goto_7
    new-instance v14, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v14}, Lcom/android/server/am/AppErrorResult;-><init>()V

    iget-object v15, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v15

    :try_start_2
    const-string/jumbo v10, "Native crash"

    iget-object v6, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v16, 0x0

    if-nez v6, :cond_b

    new-instance v6, Landroid/os/BugreportParams;

    const/16 v10, 0xb

    invoke-direct {v6, v10}, Landroid/os/BugreportParams;-><init>(I)V

    new-instance v10, Landroid/os/BugreportParams;

    const/16 v11, 0xe

    invoke-direct {v10, v11}, Landroid/os/BugreportParams;-><init>(I)V

    if-nez v2, :cond_c

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    if-ne v11, v9, :cond_c

    const-string/jumbo v10, "system_server"

    invoke-static {v6, v10}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    :cond_b
    :goto_8
    move/from16 v10, p4

    move-object v6, v5

    const/4 v11, 0x0

    move-object v5, v0

    goto :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_13

    :cond_c
    if-nez v2, :cond_d

    move-object/from16 v6, v16

    goto :goto_9

    :cond_d
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_9
    invoke-static {v10, v6}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    goto :goto_8

    :goto_a
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v0

    move-wide v8, v7

    move-object v7, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    if-eqz v0, :cond_e

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_e
    const/4 v0, 0x2

    if-ne v13, v0, :cond_f

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    if-eqz v2, :cond_10

    :try_start_4
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v6, :cond_10

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_10
    if-eqz v2, :cond_11

    :try_start_5
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v13, v10}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(ILjava/lang/String;)V

    :cond_11
    if-eqz v2, :cond_12

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v10, 0x2710

    if-lt v6, v10, :cond_12

    new-instance v6, Lcom/android/server/am/AppErrors$1;

    invoke-direct {v6, v1, v2}, Lcom/android/server/am/AppErrors$1;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_12
    new-instance v6, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v14, v6, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    iput-object v2, v6, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_20

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v3

    move-object v10, v1

    if-nez v3, :cond_13

    goto/16 :goto_12

    :cond_13
    iput-object v7, v6, Lcom/android/server/am/AppErrorDialog$Data;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    iget v13, v6, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v10, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    monitor-enter v14

    :catch_0
    :goto_b
    :try_start_6
    iget-boolean v1, v14, Lcom/android/server/am/AppErrorResult;->mHasResult:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v1, :cond_14

    :try_start_7
    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_11

    :cond_14
    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget v1, v14, Lcom/android/server/am/AppErrorResult;->mResult:I

    iget-object v4, v10, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v5, 0x13c

    invoke-static {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    const/4 v4, 0x6

    if-eq v1, v4, :cond_15

    const/4 v4, 0x7

    if-ne v1, v4, :cond_16

    :cond_15
    move v1, v3

    :cond_16
    if-eq v1, v3, :cond_1d

    if-eq v1, v0, :cond_1b

    if-eq v1, v12, :cond_1a

    const/4 v0, 0x5

    if-eq v1, v0, :cond_18

    const/16 v0, 0x8

    if-eq v1, v0, :cond_17

    goto/16 :goto_c

    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_e

    :cond_18
    iget-object v1, v10, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v0, v10, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_19

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v10, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    :cond_19
    iget-object v0, v10, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_c

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :cond_1a
    iget-object v11, v10, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11

    :try_start_a
    iget-object v0, v10, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v6, "crash"

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    move-object v2, v1

    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, -0x1

    if-eq v13, v0, :cond_1c

    :try_start_b
    iget-object v0, v10, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not restart taskId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1b
    iget-object v1, v10, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    :try_start_d
    invoke-static {v2, v8, v9, v7}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v16

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    :cond_1c
    :goto_c
    move-object/from16 v0, v16

    goto :goto_e

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_f
    iget-object v0, v10, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v0, :cond_1e

    iget-object v12, v10, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    iget-object v0, v10, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v6, "crash"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    move-object v2, v1

    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v10, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    goto :goto_10

    :catchall_7
    move-exception v0

    :try_start_12
    monitor-exit v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :cond_1e
    :goto_d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :goto_e
    if-eqz v0, :cond_1f

    :try_start_14
    iget-object v1, v10, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_14} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "bug report receiver dissappeared"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_f
    return-void

    :goto_10
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_11
    :try_start_15
    monitor-exit v14
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v0

    :cond_20
    :goto_12
    :try_start_16
    monitor-exit v15
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_13
    :try_start_17
    monitor-exit v15
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-wide v4, 0x10b0000000dL

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide v8, 0x10300000001L

    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    const-wide v11, 0x10900000001L

    if-nez v6, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v6, :cond_4

    const-wide v7, 0x20b00000003L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v13

    invoke-virtual {v1, v11, v12, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v12, v12, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v12, v9, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    if-eqz v12, :cond_1

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    :cond_1
    move-wide/from16 v20, v4

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v18, v13

    move/from16 v19, v14

    move-object v5, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v18, v13

    move/from16 v19, v14

    const-wide v9, 0x20b00000002L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-wide v9, 0x10500000001L

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move-wide/from16 v20, v4

    move-object v5, v3

    const-wide v3, 0x10300000002L

    invoke-virtual {v1, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10900000003L

    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10900000004L

    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10900000005L

    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v14, v19, 0x1

    move-object v3, v5

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move/from16 v13, v18

    move-wide/from16 v4, v20

    const-wide v11, 0x10900000001L

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v20, v4

    move-object v5, v3

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v4, v20

    const-wide v11, 0x10900000001L

    goto/16 :goto_0

    :cond_4
    move-wide/from16 v20, v4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    const-wide v9, 0x20b00000002L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    const-wide v12, 0x10900000001L

    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v11, :cond_7

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v12, v12, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v12, v9, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_6

    if-eqz v12, :cond_5

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_6

    :cond_5
    move-object/from16 v16, v3

    move-object v15, v4

    move/from16 v17, v5

    const-wide v4, 0x10300000002L

    goto :goto_6

    :cond_6
    move-object/from16 v16, v3

    const-wide v12, 0x20b00000002L

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_7

    :goto_5
    :try_start_1
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v12, 0x10500000001L

    invoke-virtual {v1, v12, v13, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v15, v4

    move/from16 v17, v5

    const-wide v4, 0x10300000002L

    invoke-virtual {v1, v4, v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object v4, v15

    move-object/from16 v3, v16

    move/from16 v5, v17

    const-wide v12, 0x10900000001L

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_7
    move-object/from16 v16, v3

    move-object v15, v4

    move/from16 v17, v5

    const-wide v4, 0x10300000002L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    move-object v4, v15

    move-object/from16 v3, v16

    move/from16 v5, v17

    goto/16 :goto_3

    :cond_8
    move-object/from16 v16, v3

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v2, v20

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :goto_7
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v9, :cond_4

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    const/16 v16, 0x1

    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v8, v8, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v8, v12, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    if-eqz v8, :cond_2

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v8, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    if-nez v11, :cond_1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "  Time since processes crashed:"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v11, v16

    :cond_1
    const-string v8, "    Process "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " uid "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": last crashed "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v3, v7

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, " ago"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    const/16 v16, 0x1

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v7, :cond_9

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_8

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v15, v15, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v15, v10, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5

    if-eqz v15, :cond_7

    iget-object v15, v15, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v15, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_5

    :cond_5
    if-nez v9, :cond_6

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v9, "  First time processes crashed and counts:"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v9, v16

    :cond_6
    const-string v15, "    Process "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, " uid "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v14, ": first crashed "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v14, v3, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v14, " ago; crashes since then: "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v5, v4, :cond_12

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_11

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v12, v12, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v12, v7, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_a

    if-eqz v12, :cond_10

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    goto/16 :goto_9

    :cond_a
    if-nez v6, :cond_b

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v6, "  Bad processes:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v6, v16

    :cond_b
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/AppErrors$BadProcessInfo;

    const-string v13, "    Bad process "

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, " uid "

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": crashed at time "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v13, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v1, v13, v14}, Ljava/io/PrintWriter;->println(J)V

    iget-object v11, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v11, :cond_c

    const-string v11, "      Short msg: "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v11, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v11, :cond_d

    const-string v11, "      Long msg: "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    iget-object v11, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v11, :cond_10

    const-string v11, "      Stack:"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_8
    iget-object v14, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v11, v14, :cond_f

    iget-object v14, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_e

    const-string v14, "        "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v15, v11, v13

    invoke-virtual {v1, v14, v13, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v13, v11, 0x1

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_f
    iget-object v11, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v13, v11, :cond_10

    const-string v11, "        "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v13

    invoke-virtual {v1, v11, v13, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_10
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_12
    return v16

    :goto_a
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    move v6, v1

    goto :goto_1

    :cond_1
    move/from16 v6, p8

    :goto_1
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move v11, v1

    goto :goto_2

    :cond_2
    move/from16 v11, p9

    :goto_2
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v12, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    new-instance v2, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;

    move-object v7, p1

    move-object v4, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object v5, v3

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object p0, v2

    move-object v3, v5

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_0
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v10, 0x0

    if-nez v2, :cond_3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_3
    move-object/from16 v5, p3

    move-wide/from16 v7, p6

    move v4, v6

    move-object v9, v12

    move-object/from16 v6, p4

    :try_start_1
    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    move-object v0, p0

    goto :goto_3

    :catch_0
    :try_start_2
    iget-object p0, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :cond_4
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->run()V

    const/4 v10, 0x1

    :cond_5
    return v10

    :goto_4
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v12, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-boolean v13, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "anr_show_background"

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v8}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v8

    :goto_0
    move/from16 v16, v13

    goto :goto_1

    :cond_0
    move v8, v12

    goto :goto_0

    :goto_1
    const/4 v13, 0x0

    invoke-static {v4, v7, v13, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v17, 0x1

    goto :goto_2

    :cond_1
    move/from16 v17, v13

    :goto_2
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v10, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object v8, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    :goto_3
    move/from16 v18, v13

    goto :goto_4

    :cond_2
    const/4 v4, 0x0

    move-object v8, v4

    goto :goto_3

    :goto_4
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/16 v19, 0x1

    iget-object v7, v13, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    move/from16 v20, v3

    const/4 v3, 0x5

    if-ne v7, v3, :cond_3

    move/from16 v3, v19

    goto :goto_5

    :cond_3
    move/from16 v3, v18

    :goto_5
    iget-object v7, v13, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move/from16 v21, v18

    :goto_6
    if-ltz v7, :cond_7

    move/from16 v22, v3

    invoke-virtual {v13, v7}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    move-wide/from16 v23, v5

    move-object v6, v4

    iget-wide v4, v3, Lcom/android/server/am/ServiceRecord;->restartTime:J

    move-wide/from16 v25, v4

    sget v4, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v4, v4

    add-long v4, v25, v4

    cmp-long v4, v23, v4

    if-lez v4, :cond_4

    move/from16 v4, v19

    iput v4, v3, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_7

    :cond_4
    move/from16 v4, v19

    iget v5, v3, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/android/server/am/ServiceRecord;->crashCount:I

    :goto_7
    iget v4, v3, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v4, v4

    move-wide/from16 v25, v4

    iget-object v4, v13, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v4, v25, v4

    if-gez v4, :cond_6

    iget-boolean v3, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v3, :cond_5

    if-eqz v22, :cond_6

    :cond_5
    const/16 v21, 0x1

    :cond_6
    add-int/lit8 v7, v7, -0x1

    move-object v4, v6

    move/from16 v3, v22

    move-wide/from16 v5, v23

    const/16 v19, 0x1

    goto :goto_6

    :cond_7
    move-wide/from16 v23, v5

    move-object v6, v4

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget v5, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v3, v23, v3

    if-gez v3, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    move/from16 v4, v18

    :goto_8
    if-nez v4, :cond_9

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_a

    if-eqz v3, :cond_a

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-wide v25, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long v5, v5, v25

    cmp-long v5, v23, v5

    if-gez v5, :cond_a

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v5, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    if-lt v3, v5, :cond_a

    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_c

    :cond_a
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    :try_start_0
    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    const/4 v7, 0x1

    new-array v12, v7, [Lcom/android/server/wm/Task;

    new-instance v13, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;

    invoke-direct {v13, v12, v6, v14, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;-><init>([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    invoke-virtual {v4, v13, v7}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    aget-object v4, v12, v18

    if-eqz v4, :cond_b

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityOnVisibleActivityDiedOrCrashed(Ljava/lang/String;)V

    iget v1, v4, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_b
    :try_start_3
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, -0x1

    :goto_9
    if-eqz v9, :cond_c

    iput v1, v9, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    :cond_c
    if-eqz v9, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget v1, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    cmp-long v1, v23, v3

    if-gez v1, :cond_d

    const/4 v7, 0x1

    iput-boolean v7, v9, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    move v13, v7

    move/from16 v4, v21

    goto/16 :goto_10

    :cond_d
    move/from16 v4, v21

    const/4 v13, 0x1

    goto/16 :goto_10

    :goto_a
    :try_start_4
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :goto_b
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :goto_c
    const-string v1, "ActivityManager"

    const-string/jumbo v3, "Process "

    const-string v5, " has crashed too many times, killing! Reason: "

    invoke-static {v3, v10, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v4, :cond_e

    const-string/jumbo v4, "crashed quickly"

    goto :goto_d

    :cond_e
    const-string/jumbo v4, "over process crash limit"

    :goto_d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v10, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x7550

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    if-nez v20, :cond_12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3, v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x753f

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-nez v16, :cond_f

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    move v13, v7

    move-wide/from16 v5, v23

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    new-instance v5, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v5}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    invoke-virtual {v5, v10, v1, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v10, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v10, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_e

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_f
    move v13, v7

    :goto_e
    iput-boolean v13, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    iput-boolean v13, v2, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v1, :cond_11

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_10

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_f

    :cond_10
    move-object v3, v10

    :goto_f
    const/4 v4, 0x4

    invoke-interface {v1, v3, v12, v4}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    :cond_11
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string/jumbo v7, "crash"

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v8, 0x1

    move/from16 v4, v21

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move/from16 v3, v18

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    if-nez v17, :cond_13

    return v3

    :cond_12
    move v13, v7

    move/from16 v3, v18

    move/from16 v4, v21

    :cond_13
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    :goto_10
    if-eqz v9, :cond_14

    if-eqz v4, :cond_14

    iput-boolean v13, v9, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    :cond_14
    iget-object v1, v14, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v14, v1, :cond_17

    iget-boolean v1, v14, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v1, :cond_17

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v13

    if-nez v1, :cond_17

    iget-object v1, v14, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_7
    iget-object v2, v14, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v13

    :goto_11
    if-ltz v2, :cond_16

    iget-object v3, v14, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing package preferred activities from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_12

    :catchall_3
    move-exception v0

    goto :goto_13

    :catch_0
    :cond_15
    :goto_12
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    :cond_16
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_14

    :goto_13
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_17
    :goto_14
    if-nez v16, :cond_1a

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v10, v11, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v10, v11, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_19

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v23

    if-gez v2, :cond_18

    goto :goto_15

    :cond_18
    new-instance v2, Landroid/util/Pair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    :cond_19
    :goto_15
    new-instance v2, Landroid/util/Pair;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_16
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v10, v11, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object v1, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    if-eqz v1, :cond_1b

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return v13
.end method

.method public final handleShowAnrUi(Landroid/os/Message;)V
    .locals 13

    const-string v0, "ANR delay completed. Cancelling ANR dialog for package: "

    const-string v1, "ANR delay completed. Showing ANR dialog for package: "

    const-string v2, "App already has anr dialog: "

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v3, p1, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    const-string p0, "ActivityManager"

    const-string/jumbo p1, "handleShowAnrUi: proc is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    :try_start_0
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iput-object p1, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-boolean v6, v3, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    const/4 v7, 0x0

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    move-object v6, v7

    :goto_0
    iget-object v8, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    iget-object v8, v8, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    move v8, v9

    :goto_1
    const/16 v11, 0x13d

    if-eqz v8, :cond_3

    const-string p1, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 p1, -0x2

    invoke-static {p0, v11, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_3
    :try_start_1
    iget v2, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v2

    :cond_4
    iget-object v8, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v12, "anr_show_background"

    invoke-static {v8, v12, v9, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_5

    move v8, v10

    goto :goto_2

    :cond_5
    move v8, v9

    :goto_2
    iget-object v12, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v12, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs(I)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-static {p1, v11, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    move v9, v10

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v2, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    iget-object v8, v2, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    if-nez v8, :cond_8

    invoke-virtual {v2, p1}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_4

    :cond_8
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v8, v2, v10}, Landroid/app/AnrController;->onAnrDelayCompleted(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_4

    :cond_9
    const-string p1, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v9}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    iput-object v7, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object p1, v5, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {p1}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz v9, :cond_a

    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    :cond_a
    if-eqz v6, :cond_b

    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v6}, Lcom/android/server/PackageWatchdog;->notifyPackageFailure(ILjava/util/List;)V

    :cond_b
    return-void

    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, "App already has crash dialog: "

    move-object/from16 v3, p1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    :try_start_0
    iget-object v5, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    if-nez v5, :cond_0

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "handleShowAppErrorUi: proc is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_0
    :try_start_1
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v9, v7, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    iget-object v9, v9, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    move v9, v1

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_0
    if-eqz v9, :cond_3

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2

    sget v0, Lcom/android/server/am/AppErrorDialog;->$r8$clinit:I

    const/4 v0, -0x3

    invoke-virtual {v6, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_3
    :try_start_2
    iget v2, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v9, 0x2710

    if-lt v2, v9, :cond_4

    iget v2, v5, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v9, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v10

    :goto_1
    iget-object v9, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v9}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v9

    array-length v11, v9

    move v12, v10

    :goto_2
    if-ge v12, v11, :cond_6

    aget v13, v9, v12

    if-eq v8, v13, :cond_5

    move v13, v1

    goto :goto_3

    :cond_5
    move v13, v10

    :goto_3
    and-int/2addr v2, v13

    add-int/2addr v12, v1

    goto :goto_2

    :cond_6
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v9}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v9

    goto :goto_4

    :cond_7
    move v9, v8

    :goto_4
    const-class v11, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v11, v9}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v11

    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "anr_show_background"

    invoke-static {v12, v13, v10, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_8

    move v12, v1

    goto :goto_5

    :cond_8
    move v12, v10

    :goto_5
    if-eqz v2, :cond_a

    if-nez v12, :cond_a

    if-nez v11, :cond_a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping crash dialog of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": background"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_9

    sget v0, Lcom/android/server/am/AppErrorDialog;->$r8$clinit:I

    const/4 v0, -0x2

    invoke-virtual {v6, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_9
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_a
    :try_start_3
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v11, v5, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v11, :cond_b

    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v14, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v11, v13, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_10

    :cond_b
    const/4 v11, 0x0

    :goto_6
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "show_first_crash_dialog"

    invoke-static {v13, v14, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_c

    move v13, v1

    goto :goto_7

    :cond_c
    move v13, v10

    :goto_7
    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "show_first_crash_dialog_dev_option"

    invoke-static {v14, v15, v10, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    if-eqz v14, :cond_d

    move v14, v1

    goto :goto_8

    :cond_d
    move v14, v10

    :goto_8
    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v1, :cond_e

    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move/from16 v18, v1

    sget v1, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v19, v2

    int-to-long v1, v1

    add-long/2addr v10, v1

    cmp-long v1, v16, v10

    if-gez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_f
    move/from16 v18, v1

    move-object/from16 v19, v2

    :cond_10
    const/4 v1, 0x0

    :goto_a
    :try_start_5
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs(I)Z

    move-result v2

    if-nez v2, :cond_11

    if-eqz v12, :cond_16

    :cond_11
    if-nez v18, :cond_16

    if-nez v1, :cond_16

    if-nez v13, :cond_12

    if-nez v14, :cond_12

    iget-boolean v1, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v1, :cond_16

    goto :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    :cond_12
    :goto_b
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Showing crash dialog for package "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " u"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v20

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v11, v3, Lcom/android/server/am/AppErrorDialog$Data;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v12, v11, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    iget-object v13, v11, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    iget-object v11, v11, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v28, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    invoke-virtual/range {v20 .. v28}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpType(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_c

    :catch_0
    :try_start_7
    const-string v1, "ActivityManager"

    const-string v2, "IAFDParse false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_14

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "step1: IAFD parse pass, will call showIAFDCrashDialogs"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_13

    const/4 v1, 0x7

    invoke-virtual {v6, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_13
    const/4 v1, 0x1

    goto :goto_d

    :cond_14
    iget-object v1, v7, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    const/4 v1, 0x0

    :goto_d
    iget-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v2, :cond_15

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_15
    move v10, v1

    goto :goto_e

    :cond_16
    if-eqz v6, :cond_17

    sget v0, Lcom/android/server/am/AppErrorDialog;->$r8$clinit:I

    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_17
    const/4 v10, 0x0

    :goto_e
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz v10, :cond_18

    :try_start_9
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v0

    iget-object v1, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/sec/android/iaft/IAFDDiagnosis;->showIAFDCrashDialogs(IILjava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_f

    :catch_1
    const-string v0, "ActivityManager"

    const-string v1, "IAFDShow false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_f
    return-void

    :goto_10
    :try_start_a
    monitor-exit v19
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :goto_11
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public final killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 10

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/16 v3, 0xd

    :goto_0
    move v7, v2

    move v6, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x6

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    iput-object v3, v0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    :goto_2
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    new-instance v4, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    iput-object v3, v0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    :goto_3
    iget-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    iget-object v4, v0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v5, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    const/4 v8, 0x2

    invoke-direct {v5, v8, v2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v3, v0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    :goto_4
    const-string/jumbo v8, "user-terminated"

    const-string/jumbo v9, "user request after error"

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    iput-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v1, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v1, :cond_0

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v2, :cond_0

    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    const/4 v5, 0x1

    move-object v4, p5

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public final makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 9

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    iput-object p1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    iget-object p1, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v4, "force-crash"

    move-object v2, p0

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-ltz p1, :cond_0

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v5, p1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-ne v5, p2, :cond_1

    move-object v2, v4

    goto :goto_2

    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v5, p3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-ltz p4, :cond_2

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p4, :cond_3

    :cond_2
    move-object v2, v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    const-string p0, "ActivityManager"

    const-string/jumbo p5, "crashApplication: nothing for uid="

    const-string p6, " initialPid="

    const-string p7, " packageName="

    invoke-static {p1, p2, p5, p6, p7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " userId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 p1, 0x5

    if-ne p7, p1, :cond_7

    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p1}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    move-result-object p1

    :goto_3
    array-length p3, p1

    if-ge v1, p3, :cond_7

    iget-object p3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    aget-object p4, p1, v1

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    check-cast p3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {p3, v0, p4}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "crashApplication: Can not crash protected package "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v1

    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p1, p1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/16 p3, 0xc

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeProcess(II)V

    const-string/jumbo p1, "scheduleCrash for \'"

    iget-boolean p2, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez p2, :cond_9

    iget-object p2, v2, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz p2, :cond_9

    iget p2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    if-ne p2, p3, :cond_8

    const-string p1, "ActivityManager"

    const-string/jumbo p2, "scheduleCrash: trying to crash system process!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    :try_start_1
    iget-object p4, v2, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {p4, p5, p7, p8}, Landroid/app/IApplicationThread$Delegator;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_4
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' failed"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x4

    invoke-virtual {v2, p4, p1}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_5
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_9
    :goto_6
    if-eqz p6, :cond_a

    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance p2, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v2}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 p3, 0x1388

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void

    :goto_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
