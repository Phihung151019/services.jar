.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final HEAP_DUMP_PATH:Ljava/io/File;

.field public static sPendingWtfs:Ljava/util/LinkedList;


# instance fields
.field public enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

.field public knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field public mDualAppService:Lcom/android/server/DualAppManagerService;

.field public final mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

.field public final mFactoryTestMode:I

.field public mFirstBoot:Z

.field public mIncrementalServiceHandle:J

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field public final mRuntimeRestart:Z

.field public final mRuntimeStartElapsedTime:J

.field public final mRuntimeStartUptime:J

.field public final mStartCount:I

.field public mSystemContext:Landroid/content/Context;

.field public mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field public mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field public mZygotePreload:Ljava/util/concurrent/Future;

.field public sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public static synthetic $r8$lambda$0ek3wX68xKbgZMUwZfiBRkUNTFs()V
    .locals 2

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string/jumbo v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static $r8$lambda$2PdG6KuU0ZTvilD515PGrttj0sk(III)V
    .locals 13

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    :catch_0
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v4

    if-le v4, p0, :cond_0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v4

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x16c

    const-string/jumbo v8, "System"

    if-le v4, p0, :cond_1

    if-nez v3, :cond_1

    const-string/jumbo v3, "fdtrack enable threshold reached, enabling"

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v6, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    const-string/jumbo v3, "fdtrack"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    move v3, v5

    goto/16 :goto_5

    :cond_1
    if-le v4, p1, :cond_7

    const-string/jumbo v5, "fdtrack abort threshold reached, dumping and aborting"

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    invoke-static {v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    sget-object v5, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v7, v5

    move v9, v0

    :goto_1
    if-ge v9, v7, :cond_4

    aget-object v10, v5, v9

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "fdtrack-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v5

    if-lt v5, v6, :cond_6

    invoke-virtual {v4}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to clean up hprof "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/heapdump/fdtrack-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".hprof"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :catch_1
    move-exception v4

    const-string v5, "Failed to dump fdtrack hprof"

    invoke-static {v8, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_5

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v10, v8, v1

    if-lez v10, :cond_9

    const-wide/32 v1, 0x36ee80

    add-long/2addr v8, v1

    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-static {v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v8

    :cond_9
    :goto_5
    mul-int/lit16 v4, p2, 0x3e8

    int-to-long v4, v4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static synthetic $r8$lambda$CJLFlg8wnqihjN12r-2Qq_1qSd8()V
    .locals 2

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string/jumbo v1, "StartISensorManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static $r8$lambda$gEmTR7CVQ-l_CmmRBoxkZ9OyUbo(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/SemTelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p12

    const-string v14, "HsumBootUserInitializer"

    const-string/jumbo v15, "device_provisioned"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Making services ready"

    const-string/jumbo v13, "SystemServer"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v0, "!@Boot_EBS_D: PHASE_ACTIVITY_MANAGER_READY"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0x226

    invoke-virtual {v0, v2, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/android/server/am/NativeCrashListener;

    invoke-direct {v12, v0}, Lcom/android/server/am/NativeCrashListener;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string/jumbo v12, "observing native crashes"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v12, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v11}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v11, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v11, :cond_0

    iget-object v11, v11, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    new-instance v10, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v10, v0, v12, v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v10, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    const-string/jumbo v10, "registering app ops policy"

    invoke-static {v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string/jumbo v10, "WebViewFactoryPreparation"

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    :goto_3
    if-eqz p2, :cond_6

    const-string/jumbo v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v12, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    instance-of v12, v0, Landroid/util/Dumpable;

    if-eqz v12, :cond_2

    iget-object v12, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v9, v0

    check-cast v9, Landroid/util/Dumpable;

    invoke-static {v12, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    :cond_2
    instance-of v9, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v9, :cond_5

    check-cast v0, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v9, p3

    iget-object v9, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCallerIdentity(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/devicepolicy/CallerIdentity;

    move-result-object v18

    iget-boolean v12, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIsAutomotive:Z

    if-nez v12, :cond_4

    invoke-static/range {v18 .. v18}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdb(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v12, 0x1

    :goto_5
    const-string/jumbo v8, "can only set DevicePolicySafetyChecker on automotive builds or from ADB (but caller is %s)"

    move-object/from16 v19, v14

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v8, v14}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDevicePolicySafetyCheckerUnchecked(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_6

    :cond_5
    move-object/from16 v19, v14

    :goto_6
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_7

    :cond_6
    move-object/from16 v19, v14

    :goto_7
    if-eqz p4, :cond_9

    const-string/jumbo v0, "StartWearService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const v0, 0x10403f1

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v0, 0x100

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_8

    :cond_7
    const-string/jumbo v0, "Null wear service component name."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_8
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_9
    const-string/jumbo v0, "startThemeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v12, "com.samsung.android.themecenter"

    const-string/jumbo v14, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v9, v12, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v9, "safeMode"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v9, "isStartedBySystemServer"

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    const-string/jumbo v8, "starting Theme Service"

    invoke-static {v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v4, :cond_a

    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v12, 0x1

    :try_start_3
    invoke-virtual {v5, v12}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    const-string/jumbo v4, "enabling Airplane Mode during Safe Mode bootup"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_a
    const-string/jumbo v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p8, :cond_c

    :try_start_4
    const-string v0, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "!@Boot_EBS_D: start networkManagement"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkManagementService;->prepareNativeDaemon()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v8, v20, v8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Prepared in "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "NetworkManagement"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_b
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkManagementService;->prepareNativeDaemon()V

    :goto_b
    const-string v0, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "!@Boot_EBS_D: end networkManagement"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    const-string/jumbo v4, "making Network Managment Service ready"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_c
    if-eqz v6, :cond_d

    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v4, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v8, v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v4, v0

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v5, :cond_e

    :try_start_5
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    const-string/jumbo v5, "making Connectivity Service ready"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p10, :cond_f

    :try_start_6
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_f

    :catchall_6
    move-exception v0

    const-string/jumbo v5, "making VpnManagerService ready"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v6, :cond_10

    :try_start_7
    invoke-virtual {v6, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v0

    const-string/jumbo v4, "making Network Policy Service ready"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeUrspServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p11, :cond_11

    :try_start_8
    const-string/jumbo v0, "UrspService"

    const-string/jumbo v4, "systemReady()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception v0

    const-string/jumbo v4, "making ursp Service ready"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_11
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "WaitForAppDataPrepared"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v11, :cond_12

    invoke-static {v11, v10}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    :cond_12
    const-string v0, "!@Boot_EBS_D: PHASE_THIRD_PARTY_APPS_CAN_START"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x258

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v7, :cond_16

    const-string v0, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "switchToBootUser-"

    :try_start_9
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v12, 0x1

    move-object/from16 v8, v19

    if-ne v0, v12, :cond_13

    const/4 v10, 0x0

    goto :goto_12

    :catch_0
    move-exception v0

    const-string v6, "DEVICE_PROVISIONED setting not found."

    move-object/from16 v8, v19

    invoke-static {v8, v6, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, v7, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Lcom/android/server/HsumBootUserInitializer$1;

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_12
    const-string/jumbo v0, "Unlocking system user"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "unlock-system-user"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_a
    const-string/jumbo v0, "am.startUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v12}, Lcom/android/server/am/ActivityManagerService;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v0

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v0, :cond_14

    const-string/jumbo v0, "could not restart system user in background; trying unlock instead"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "am.unlockUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12}, Lcom/android/server/am/UserController;->unlockUser(ILandroid/os/IProgressListener;)Z

    move-result v0

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v0, :cond_14

    const-string/jumbo v0, "could not unlock system user either"

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception v0

    goto :goto_15

    :cond_14
    :goto_13
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :try_start_b
    const-string/jumbo v0, "getBootUser"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    iget-object v6, v7, Lcom/android/server/HsumBootUserInitializer;->mPms:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v7, "android.hardware.type.automotive"

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerInternal;->getBootUser(Z)I

    move-result v0

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "Switching to boot user %d"

    invoke-static {v8, v6, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x0

    invoke-virtual {v4, v0, v12}, Lcom/android/server/am/ActivityManagerService;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "Failed to start user %d in foreground"

    invoke-static {v8, v4, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_b
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_14

    :catch_1
    const-string v0, "Failed to switch to boot user since there isn\'t one."

    invoke-static {v8, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_16

    :goto_15
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0

    :cond_16
    :goto_16
    const-string/jumbo v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_c
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_17

    :catchall_a
    move-exception v0

    const-string/jumbo v4, "starting Network Stack"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_d
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string/jumbo v4, "android.net.ITetheringConnector"

    const-string/jumbo v5, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_18

    :catchall_b
    move-exception v0

    const-string/jumbo v4, "starting Tethering"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SLocationServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p13, :cond_17

    :try_start_e
    const-string/jumbo v0, "com.samsung.android.location.SLocationLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "systemReady"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v6, v5, v17

    const-class v6, Landroid/os/IBinder;

    const/16 v16, 0x1

    aput-object v6, v5, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object/from16 v8, p13

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    goto :goto_19

    :catchall_c
    move-exception v0

    const-string/jumbo v4, "making SLocation Service ready : "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_19
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p14, :cond_19

    move-object/from16 v9, p14

    :try_start_f
    iget-object v0, v9, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->systemReady()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_1a

    :catch_2
    move-exception v0

    const-string/jumbo v4, "Notifying SAccessoryManager running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    :goto_1b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MoccaReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p15, :cond_1a

    move-object/from16 v10, p15

    :try_start_10
    invoke-static {v3, v10}, Lcom/android/server/sensors/mocca/MoccaLoader;->systemReady(Landroid/content/Context;Landroid/os/IBinder;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    goto :goto_1c

    :catchall_d
    move-exception v0

    const-string/jumbo v4, "making Mocca Service ready : "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p16, :cond_1b

    move-object/from16 v11, p16

    :try_start_11
    iget-object v0, v11, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v11}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/CountryDetectorService;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    goto :goto_1d

    :catchall_e
    move-exception v0

    const-string/jumbo v4, "Notifying CountryDetectorService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p17, :cond_1c

    :try_start_12
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    goto :goto_1e

    :catchall_f
    move-exception v0

    const-string/jumbo v4, "Notifying NetworkTimeService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_13
    invoke-virtual/range {p18 .. p18}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    goto :goto_1f

    :catchall_10
    move-exception v0

    const-string/jumbo v4, "Notifying TelephonyRegistry running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeSemTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_14
    invoke-virtual/range {p19 .. p19}, Lcom/android/server/SemTelephonyRegistry;->systemRunning()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    goto :goto_20

    :catchall_11
    move-exception v0

    const-string/jumbo v4, "Notifying SemTelephonyRegistry running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_20
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p20, :cond_1d

    :try_start_15
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v4, Lcom/android/server/media/MediaRouterService$1;

    move-object/from16 v12, p20

    invoke-direct {v4, v12}, Lcom/android/server/media/MediaRouterService$1;-><init>(Lcom/android/server/media/MediaRouterService;)V

    const-string/jumbo v5, "MediaRouterService"

    invoke-interface {v0, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/media/MediaRouterService;->updateRunningUserAndProfiles(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_12

    goto :goto_21

    :catchall_12
    move-exception v0

    const-string/jumbo v4, "Notifying MediaRouterService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_21
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :try_start_16
    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V

    goto :goto_23

    :catch_3
    move-exception v0

    goto :goto_22

    :cond_1e
    const-string/jumbo v0, "Starting emergency service failed: emMgr is null"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    goto :goto_23

    :goto_22
    :try_start_17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Starting emergency service failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    goto :goto_23

    :catch_4
    move-exception v0

    const-string/jumbo v4, "Notifying EmergencyModeService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_23
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.telephony"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p21, :cond_1f

    :try_start_18
    const-string/jumbo v0, "MmsServiceBroker"

    const-string v4, "Delay connecting to MmsService until an API is called"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_13

    goto :goto_24

    :catchall_13
    move-exception v0

    const-string/jumbo v4, "Notifying MmsService running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_24
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_20
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_19
    const-string/jumbo v0, "incident"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_14

    goto :goto_25

    :catchall_14
    move-exception v0

    const-string/jumbo v4, "Notifying incident daemon running"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_25
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-wide v4, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_22

    const-string/jumbo v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v4, v5}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_22
    :try_start_1a
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1110178

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5

    goto :goto_26

    :catch_5
    move-exception v0

    const-string/jumbo v4, "Not starting ExynosDisplaySolutionService"

    invoke-static {v13, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_23

    const-string v0, "ExynosDisplaySolution"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1b
    const-string v0, "ExynosDisplaySolution Service"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "exynos_display"

    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    invoke-direct {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    goto :goto_27

    :catchall_15
    move-exception v0

    const-string v4, "Failed To Start ExynosDisplaySolution Service "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_23
    const-string/jumbo v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1c
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v4, Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_16

    goto :goto_28

    :catchall_16
    move-exception v0

    const-string/jumbo v4, "Triggering OdsignStatsLogger"

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SemDisplayQualityFeature.ENABLED:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",PLATFORM:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    invoke-static {v0, v5, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_24

    const-string/jumbo v0, "SemDisplayQuality"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1d
    const-string/jumbo v0, "SemDisplayQuality Service"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.displayquality.SemDisplayQualityManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v12, 0x1

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v5, v4, v17

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v4, "DisplayQuality"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_17

    goto :goto_29

    :catchall_17
    move-exception v0

    const-string v4, "Failed To Start SemDisplayQuality Service "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_29
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_24
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;

    move/from16 v4, p22

    invoke-direct {v0, v1, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/SystemServer;Z)V

    const-string/jumbo v1, "Load of Classes of Lazy Services"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-string/jumbo v0, "Mobile Payment Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1e
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v4, v12, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string/jumbo v0, "mobile_payment"

    new-instance v4, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v4, v3}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_18

    goto :goto_2a

    :catchall_18
    move-exception v0

    const-string v4, "Failure starting Payment Manager Service"

    invoke-static {v13, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartVoiceNoteService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/voicenote/VoiceNoteService;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v5, "com.sec.android.app.voicenote"

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string/jumbo v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v7, 0x3e8

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v8, Lcom/android/server/voicenote/VoiceNoteService$UpdateReceiver;

    invoke-direct {v8}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/server/voicenote/VoiceNoteService;->backgroundAllowlist(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSamsungHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/shealth/SamsungHealthService;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v4, "com.sec.android.app.shealth"

    const/4 v10, 0x0

    invoke-virtual {v0, v4, v10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v4, Lcom/android/server/shealth/SamsungHealthService$UpdateReceiver;

    invoke-direct {v4}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/server/shealth/SamsungHealthService;->backgroundAllowlist(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "LazyService Wait Here"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v0, "Lazy Service"

    invoke-static {v1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    iput-object v0, p0, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-direct {v0}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    move-wide v7, v3

    move-wide v9, v5

    invoke-static/range {v3 .. v10}, Landroid/os/Process;->setStartTimes(JJJJ)V

    if-le v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    return-void
.end method

.method public static deviceHasConfigString(Landroid/content/Context;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static native fdtrackAbort()V
.end method

.method public static getMaxFd()I
    .locals 5

    const-string v0, "Failed to get maximum fd: "

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "/dev/null"

    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    sget v4, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v3, "System"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    const v0, 0x7fffffff

    return v0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_2
    throw v0
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13

    new-instance p0, Lcom/android/server/SystemServer;

    invoke-direct {p0}, Lcom/android/server/SystemServer;-><init>()V

    const-string v0, "********** Failed to load jvmti plugin: "

    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    :try_start_0
    new-instance v2, Landroid/tracing/perfetto/InitArguments;

    const/4 v3, 0x2

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Landroid/tracing/perfetto/InitArguments;-><init>(II)V

    invoke-static {v2}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    const-string v2, "InitBeforeStartServices"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v2, "sys.system_server.start_count"

    iget v3, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sys.system_server.start_elapsed"

    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sys.system_server.start_uptime"

    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sys.system_server.pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "SystemServer"

    const-string v3, "!@Boot_EBS_F: SYSTEM_SERVER_START"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xbc3

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    const-string/jumbo v2, "persist.sys.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persist.sys.locale"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.language"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.localevar"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->setSystemServerProcess()V

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    const-string v3, "FULL"

    sput-object v3, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    const-string/jumbo v4, "SystemServer"

    const-string v5, "Entered the Android system server!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SystemServer"

    const-string v5, "!@Boot: Entered the Android system server!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SystemServer"

    const-string v5, "!@Boot_EBS_F: BOOT_PROGRESS_SYSTEM_RUN"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v6, 0xbc2

    invoke-static {v6, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v7, 0xf0

    if-nez v6, :cond_1

    const/16 v6, 0x13

    invoke-static {v7, v6, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_1
    const-string/jumbo v4, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    invoke-static {v2}, Landroid/os/Environment;->setUserRequired(Z)V

    invoke-static {v2}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    invoke-static {v2}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/16 v4, 0x1f

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    const/4 v4, -0x2

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setCanSelfBackground(Z)V

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    const-wide/16 v8, 0x64

    const-wide/16 v10, 0xc8

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    sput-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    sget-object v5, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v6, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    const-string/jumbo v8, "SystemServerInitThreadPool already started"

    invoke-static {v6, v8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    new-instance v6, Lcom/android/server/SystemServerInitThreadPool;

    invoke-direct {v6}, Lcom/android/server/SystemServerInitThreadPool;-><init>()V

    sput-object v6, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v5, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v5, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Reading configuration..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ReadingSystemConfig"

    invoke-virtual {v1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v6, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v5, "android_servers"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_3

    const-string/jumbo v6, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v8, 0x640

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v8, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v9, 0xbb8

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "persist.sys.debug.fdtrack_interval"

    const/16 v10, 0x78

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v11, v6, v8, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>(III)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    :cond_3
    invoke-static {}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v9, 0x1030461

    invoke-virtual {v8, v9}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->setTheme(I)V

    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    const-string/jumbo v6, "system_server_dumper"

    iget-object v8, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v6, p0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    new-instance v6, Lcom/android/server/SystemServiceManager;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    iput-boolean v8, v6, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    iput-wide v9, v6, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    iput-wide v11, v6, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    iget-object v8, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v8, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    const-class v6, Lcom/android/server/SystemServiceManager;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v6, v8}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v8, "Loading pre-installed system font map."

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    if-eqz v5, :cond_4

    const-string/jumbo v5, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v6, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v8, v2, v3}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_4
    const-string/jumbo v2, "System"

    const-string v6, "*************************************************"

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "System"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->create()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/ApplicationSharedMemory;->setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V

    :try_start_5
    const-string/jumbo v0, "StartServices"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v2, "!@Boot_EBS_F: startBootstrapServices"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const-string/jumbo v0, "SystemServer"

    const-string v2, "!@Boot_EBS_F: startCoreServices"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const-string/jumbo v0, "SystemServer"

    const-string v2, "!@Boot_EBS_F: startOtherServices"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual {p0, v1}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const-string/jumbo v0, "UpdateWatchdogTimeout"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "system_server_watchdog_timeout_ms"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v8, Lcom/android/server/Watchdog$SettingsObserver;

    invoke-direct {v8, v2, v0}, Lcom/android/server/Watchdog$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V

    invoke-virtual {v5, v6, v4, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    new-instance v5, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;

    invoke-direct {v5}, Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;-><init>()V

    invoke-virtual {v2, v5}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setSystemServerStarted(Lcom/android/server/criticalevents/nano/CriticalEventProto$SystemServerStarted;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-virtual {v0, v2}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {v3}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    const-wide/16 v0, 0x80

    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.voc"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v2, v3, v0, v1, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "sys.members.installed"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v3, v2, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v5, 0x14

    invoke-static {v7, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    const-wide/32 v5, 0xea60

    cmp-long v5, v2, v5

    if-lez v5, :cond_7

    const-string/jumbo v5, "SystemServerTiming"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "SystemServer init took too long. uptimeMillis="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    new-instance v3, Lcom/android/server/SystemServer$1;

    invoke-direct {v3, v2}, Lcom/android/server/SystemServer$1;-><init>(I)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    const-wide/16 v5, 0x7530

    invoke-virtual {v2, v3, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_8
    new-instance v2, Lcom/android/server/SystemServer$2;

    invoke-direct {v2, p0}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v2}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    new-instance p0, Lcom/android/server/SystemServer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ldalvik/system/VMRuntime;->addPostCleanupCallback(Ljava/lang/Runnable;)V

    :try_start_7
    const-string/jumbo p0, "persist.sys.is_usertrial"

    invoke-static {p0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.salab.issuetracker"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez p0, :cond_a

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    const-string/jumbo p0, "persist.sys.is_usertrial"

    const-string/jumbo v0, "true"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    :goto_4
    if-eqz p0, :cond_b

    if-nez v0, :cond_b

    const-string/jumbo p0, "persist.sys.is_usertrial"

    const-string/jumbo v0, "false"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_b
    :goto_5
    const-string/jumbo p0, "SystemServer"

    const-string v0, "!@Boot: Loop forever"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "SystemServer"

    const-string v0, "!@Boot_EBS_D: Loop forever"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "Main thread loop unexpectedly exited"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_8
    const-string/jumbo v0, "System"

    const-string v2, "******************************************"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "System"

    const-string v2, "************ Failure starting system services"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p0

    :catchall_3
    move-exception p0

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_6
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p0
.end method

.method public static performPendingShutdown()V
    .locals 8

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    if-le v4, v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    const-string/jumbo v4, "recovery-update"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    invoke-static {v4, v2, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v4, "Error reading uncrypt package file"

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v6, :cond_2

    const-string v2, "/data"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/cache/recovery/block.map"

    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Lcom/android/server/SystemServer$4;

    invoke-direct {v0, v1, v3}, Lcom/android/server/SystemServer$4;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public static reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string/jumbo v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BOOT FAILURE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static native startHidlServices()V
.end method

.method private static native startISensorManagerService()V
.end method

.method private static native startIStatsService()V
.end method

.method private static native startIncrementalService()J
.end method

.method private static native startMemtrackProxyService()V
.end method

.method public static startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V
    .locals 7

    const-string/jumbo v0, "startRCPService | Fail to start service"

    const-string/jumbo v1, "startRCPService | context is null"

    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string/jumbo v5, "persist.sys.knox.device_owner"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startRCPService | KnoxPresentInDevice : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", DoEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SystemServer"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v4, "RCPManagerService"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v4, "rcp"

    if-nez p2, :cond_4

    if-nez v2, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    :try_start_1
    const-string/jumbo p2, "startRCPService | add Service : RCPManagerService , rcp"

    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_3

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_3
    :try_start_2
    new-instance p2, Lcom/android/server/RCPManagerService;

    invoke-direct {p2, p0}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    const-string/jumbo p2, "startRCPService | add Lazy Service : RCPManagerService , rcp"

    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p2, Lcom/android/server/RCPManagerService;

    invoke-static {v4, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-static {v5, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :goto_3
    :try_start_4
    const-string p2, "KnoxMUMRCPPolicyService"

    invoke-virtual {p1, p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string/jumbo p2, "mum_container_rcp_policy"

    if-nez v2, :cond_7

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    :try_start_5
    const-string/jumbo p0, "startRCPService | add Lazy Service : KnoxMUMRCPPolicyService , mumrcppolicy"

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/SystemServer$5;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/SystemServer$5;-><init>(I)V

    invoke-static {p2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_7
    :goto_4
    const-string/jumbo v2, "startRCPService | add Service : KnoxMUMRCPPolicyService , mumrcppolicy"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_8

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :cond_8
    :try_start_6
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_7

    :goto_6
    :try_start_7
    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :goto_7
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p0

    :catchall_3
    move-exception p0

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p0
.end method

.method public static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v0, 0x100

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-boolean p2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "Runtime restart: %b\n"

    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget p2, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "Start count: %d\n"

    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo p2, "Runtime start-up time: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p2, "Runtime start-elapsed time: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getDumpableName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/server/SystemServer;

    const-string/jumbo p0, "SystemServer"

    return-object p0
.end method

.method public final startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 7

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "debug.crash_system"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const-string/jumbo v0, "startApexServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    iget-object v2, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/server/pm/ApexSystemServiceInfo;

    iget-object v4, v3, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "starting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p0, "SystemServer"

    const-string p1, "AttentionService is not configured on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p1, "StartAttentionManagerService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "startBootstrapServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v0, "ArtModuleServiceInitializer"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Landroid/os/ArtModuleServiceManager;

    invoke-direct {v0}, Landroid/os/ArtModuleServiceManager;-><init>()V

    invoke-static {v0}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartWatchdog"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    iget-object v0, v6, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "InitializeProtoLog"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups;->values()[Lcom/android/internal/protolog/WmProtoLogGroups;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "PlatformCompat"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/compat/PlatformCompat;

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "platform_compat"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "platform_compat_native"

    new-instance v8, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v8, v7}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-array v0, v5, [J

    new-array v8, v5, [J

    invoke-static {v0, v8}, Landroid/app/AppCompatCallbacks;->install([J[J)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartFileIntegrityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/security/FileIntegrityService;

    const-string/jumbo v9, "StartInstaller"

    invoke-static {v0, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v8, "DeviceIdentifiersPolicyService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    const-string/jumbo v10, "StartFeatureFlagsService"

    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/flags/FeatureFlagsService;

    const-string/jumbo v10, "UriGrantsManagerService"

    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    const-string/jumbo v10, "StartPowerStatsService"

    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/powerstats/PowerStatsService;

    const-string/jumbo v10, "StartIStatsService"

    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v8, "MemtrackProxyService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v8, "StartAccessCheckingService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-class v8, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    new-instance v9, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v8, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v8, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    new-instance v9, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-direct {v9}, Lcom/android/server/appop/AppOpMigrationHelperImpl;-><init>()V

    invoke-static {v8, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/permission/access/AccessCheckingService;

    const-string/jumbo v10, "StartActivityManager"

    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    sput-object v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const-class v10, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v9, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iput-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v8, "StartDataLoaderManagerService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v8, "StartIncrementalService"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v8, "StartPowerManager"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v8, "StartThermalManager"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/ThermalManagerService;

    const-string v10, "InitPowerManagement"

    invoke-static {v8, v9, v2, v10}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10

    :try_start_0
    iget-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v13, Landroid/os/PowerManager;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v13, "ActivityManager-Sleep"

    invoke-virtual {v12, v4, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v13, "*launch*"

    invoke-virtual {v12, v4, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    const-class v12, Landroid/os/PowerManagerInternal;

    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManagerInternal;

    iput-object v12, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const-string v12, "*voice*"

    invoke-virtual {v11, v4, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v10, Landroid/os/PowerManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManagerInternal;

    invoke-virtual {v10, v9}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v11, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v11

    :try_start_1
    iget-object v12, v9, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v13, 0x9

    invoke-virtual {v10, v13}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v10

    iget-boolean v10, v10, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    iget-boolean v3, v12, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerSaveModeEnabled:Z

    if-eq v3, v10, :cond_0

    move/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLocked(JJZ)V

    goto :goto_0

    :cond_0
    move v3, v10

    iget-object v10, v12, Lcom/android/server/power/stats/BatteryStatsImpl;->mFrameworkStatsLogger:Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v10, 0x14

    invoke-static {v10, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    :goto_0
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    new-instance v3, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v3, v9}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-class v3, Landroid/os/PowerManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    iput-object v3, v8, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v3, "VaultKeeperService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/VaultKeeperService$LifeCycle;

    const-string/jumbo v9, "StartRecoverySystemService"

    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    sget v8, Lcom/android/server/RescueParty;->LEVEL_ISRB_BOOT:I

    invoke-static {v3}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v8

    invoke-static {v3}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    const-string/jumbo v3, "StartLightsService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    const-string/jumbo v9, "StartPdpService"

    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pdp/PdpService;

    const-string/jumbo v9, "StartDisplayOffloadService"

    invoke-static {v3, v8, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    const-string/jumbo v3, "config.enable_display_offload"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v8, "com.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_1
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v3, "StartDisplayManager"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    iput-object v3, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v3, "WaitForDisplay"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v3, "SystemServer"

    const-string v8, "!@Boot_EBS_D: PHASE_WAIT_FOR_DEFAULT_DISPLAY"

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v3, v2, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-boolean v3, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v8, 0xe

    const/16 v9, 0xf0

    if-nez v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v9, v8, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_2
    const-string/jumbo v3, "StartDomainVerificationService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v11

    invoke-direct {v3, v10, v11, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v10, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v10, "StartPackageManagerService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v10, "SystemServer"

    const-string v11, "!@Boot: Start PackageManagerService"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v10

    const-string/jumbo v11, "packagemanagermain"

    invoke-virtual {v10, v11}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v11, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v11, :cond_3

    move v11, v4

    goto :goto_1

    :cond_3
    move v11, v5

    :goto_1
    invoke-static {v10, v0, v3, v11}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string/jumbo v3, "packagemanagermain"

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v3, "!@Boot: End PackageManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "DexUseManagerLocal"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v0, 0xf

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v9, v0, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_5
    :goto_2
    const-string/jumbo v0, "StartASKSManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    const-string/jumbo v3, "main starts"

    const-string v9, "ASKSManager"

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/asks/ASKSManagerService;

    invoke-direct {v3, v0}, Lcom/android/server/asks/ASKSManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "asks"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "main ends"

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, v1, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "config.disable_otadexopt"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "StartOtaDexOptService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_3
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string/jumbo v3, "moveab"

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v3}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string/jumbo v3, "moveab"

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "starting OtaDexOptService"

    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-string/jumbo v3, "moveab"

    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0

    :cond_6
    :goto_4
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "StartArcSystemHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.arc.health.ArcSystemHealthService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_7
    const-string/jumbo v0, "StartUserManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/UserManagerService$LifeCycle;

    const-string v9, "InitAttributerCache"

    invoke-static {v0, v3, v2, v9}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SetSystemProcess"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    const-string/jumbo v0, "activity"

    const/16 v9, 0x15

    invoke-static {v0, v3, v4, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    const-string/jumbo v0, "procstats"

    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "meminfo"

    new-instance v9, Lcom/android/server/am/ActivityManagerService$MemBinder;

    invoke-direct {v9, v3}, Lcom/android/server/am/ActivityManagerService$MemBinder;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    const/4 v10, 0x2

    invoke-static {v0, v9, v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    const-string/jumbo v0, "gfxinfo"

    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    invoke-direct {v9, v10}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "dbinfo"

    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    invoke-direct {v9, v5}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/server/am/AppProfiler$CpuBinder;

    invoke-direct {v9, v0}, Lcom/android/server/am/AppProfiler$CpuBinder;-><init>(Lcom/android/server/am/AppProfiler;)V

    const-string/jumbo v0, "cpuinfo"

    invoke-static {v0, v9, v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    const-string/jumbo v0, "permission"

    new-instance v9, Lcom/android/server/am/ActivityManagerService$PermissionController;

    invoke-direct {v9}, Landroid/os/IPermissionController$Stub;-><init>()V

    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "processinfo"

    new-instance v9, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;

    invoke-direct {v9, v3}, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "cacheinfo"

    new-instance v9, Lcom/android/server/am/ActivityManagerService$DbBinder;

    invoke-direct {v9, v4}, Lcom/android/server/am/ActivityManagerService$DbBinder;-><init>(I)V

    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v9, "android"

    const v10, 0x100400

    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v0, v12, v9}, Landroid/app/ActivityThread;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v11, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    new-instance v0, Lcom/android/server/am/HostingRecord;

    const-string/jumbo v9, "system"

    invoke-direct {v0, v9}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    move-object/from16 v19, v0

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v4, v9, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v10, -0x384

    iput v10, v9, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    new-instance v9, Lcom/android/server/am/ApplicationThreadDeferred;

    iget-object v10, v3, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v10}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Lcom/android/server/am/ApplicationThreadDeferred;-><init>(Landroid/app/IApplicationThread;Z)V

    iget-object v10, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v9, v10}, Lcom/android/server/am/ProcessRecord;->makeActive(Lcom/android/server/am/ApplicationThreadDeferred;Lcom/android/server/am/ProcessStatsService;)V

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v9, v4}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v5}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    new-instance v4, Lcom/android/server/am/ActivityManagerService$3;

    invoke-direct {v4, v3}, Lcom/android/server/am/ActivityManagerService$3;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    const/16 v8, 0x3f

    invoke-virtual {v0, v8, v9, v5, v4}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    const/16 v0, 0x1a

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    new-instance v8, Lcom/android/server/am/ActivityManagerService$4;

    invoke-direct {v8, v3}, Lcom/android/server/am/ActivityManagerService$4;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-virtual {v4, v0, v8}, Lcom/android/server/appop/AppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    const-string v0, "InitWatchdog"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v3, "!@Boot_EBS_D: InitWatchdog"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v6, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v3, v6}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.REBOOT"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.permission.REBOOT"

    invoke-virtual {v0, v3, v4, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, v6, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    sget-object v3, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    iget-object v4, v6, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v3, Lcom/android/server/HeapdumpWatcher;->mContext:Landroid/content/Context;

    iput-object v4, v0, Lcom/android/server/HeapdumpWatcher;->mActivity:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    sget-object v3, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v3, Lcom/android/server/FileDescriptorWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    const/4 v4, 0x5

    const/16 v6, 0xb

    if-eqz v3, :cond_8

    move v7, v6

    goto :goto_5

    :cond_8
    move v7, v4

    :goto_5
    invoke-static {v0, v7}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    if-eqz v3, :cond_9

    move v7, v6

    goto :goto_6

    :cond_9
    move v7, v4

    :goto_6
    invoke-static {v0, v7}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    const-class v7, Lcom/android/server/wm/SurfaceAnimationThread;

    monitor-enter v7

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->ensureThreadLocked()V

    sget-object v0, Lcom/android/server/wm/SurfaceAnimationThread;->sInstance:Lcom/android/server/wm/SurfaceAnimationThread;

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    if-eqz v3, :cond_a

    move v4, v6

    :cond_a
    invoke-static {v0, v4}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    if-eqz v0, :cond_b

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/server/display/DisplayManagerService$5;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-wide/16 v6, 0x2710

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    const-string/jumbo v0, "StartOverlayManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v3, Lcom/android/server/om/OverlayManagerService;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartResourcesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v0, Lcom/android/server/resources/ResourcesManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSensorPrivacyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "PACMService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/PACMService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v8, "android"

    const-wide/16 v6, 0x400

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActivityThread;->handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    :cond_c
    const-string/jumbo v0, "StartSensorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/sensors/SensorService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to find android system package"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_4
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-string/jumbo v2, "packagemanagermain"

    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 3

    const-string/jumbo v0, "content_capture"

    const-string/jumbo v1, "service_explicitly_enabled"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SystemServer"

    if-eqz v0, :cond_1

    const-string/jumbo v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const v0, 0x1040325

    invoke-static {p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v0, 0x1040326

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ContentProtectionService disabled because resource is not overlaid, ContentCaptureService still enabled"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo p1, "StartContentCaptureService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p0, :cond_4

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mContentCaptureService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    :cond_4
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 3

    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.enable_isrb"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StartISRBService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/isrb/IsrbManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_0
    const-string/jumbo v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    const-string/jumbo v2, "StartBatteryService"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    const-string/jumbo v2, "StartUsageService"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_0
    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1
    const-string/jumbo v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    const-string/jumbo v2, "StartBinderCallsStatsService"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    const-string/jumbo v2, "StartLooperStatsService"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    const-string/jumbo v2, "StartRollbackManagerService"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    const-string/jumbo v2, "StartNativeTombstoneManagerService"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    const-string/jumbo v2, "StartBugreportManagerService"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    const-string v2, "GpuService"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    const-string/jumbo v2, "StartRemoteProvisioningService"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "CpuMonitorService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/cpu/CpuMonitorService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    const-string/jumbo v0, "SystemServer"

    :try_start_0
    const-string v1, "DualAppManagerService"

    invoke-virtual {p2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v1, "startDualAppManagerService | add Service : startDualAppManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo p0, "startDualAppManagerService | context is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/server/DualAppManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    const-string/jumbo p0, "dual_app"

    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :goto_0
    :try_start_2
    const-string/jumbo p1, "startDualAppManagerService | Fail to start service"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p0
.end method

.method public final startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    const-string/jumbo v0, "startOnDeviceIntelligenceManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v0, "com.android.server.ondeviceintelligence.OnDeviceIntelligenceManagerService"

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v4, 0x1

    const-string/jumbo v5, "Starting custom IMMS: "

    const-string v6, "HcmManagerService ApmSwitch = "

    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    iget-object v7, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const-string/jumbo v0, "config.disable_systemtextclassifier"

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string/jumbo v0, "config.disable_networktime"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v0, "config.disable_cameraservice"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v12, "android.hardware.type.pc"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v7}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureWatch(Landroid/content/Context;)Z

    move-result v13

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v14, "org.chromium.arc"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v15, "android.software.leanback"

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v7}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureAutomotive(Landroid/content/Context;)Z

    move-result v16

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v0, "factory"

    const-string/jumbo v18, "ro.factory.factory_binary"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    const-string/jumbo v0, "lazy_service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Landroid/os/ServiceManager;

    invoke-direct {v0}, Landroid/os/ServiceManager;-><init>()V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/os/ServiceManager;->initLazyServiceManager(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :try_start_0
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    invoke-direct {v0, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    const-string/jumbo v8, "SecondaryZygotePreload"

    invoke-static {v0, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string/jumbo v0, "Secure AT Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6e

    :try_start_1
    const-string/jumbo v0, "SatsService"

    new-instance v8, Lcom/android/server/SatsService;

    invoke-direct {v8, v7}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    const-string/jumbo v0, "SystemServer"

    const-string v8, "Failed to add SATService."

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->markDisabled()V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v8, "MAINLINE_API_LEVEL: 31"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "31"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v8, 0x22

    if-lt v0, v8, :cond_0

    const-string/jumbo v0, "RealTimeTokenService: Real Time Token Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6e

    :try_start_3
    const-string/jumbo v0, "RealTimeTokenService"

    new-instance v8, Lcom/android/server/RealTimeTokenService;

    invoke-direct {v8, v7}, Lcom/android/server/RealTimeTokenService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    :try_start_4
    const-string/jumbo v0, "SystemServer"

    const-string v8, "Failed to add RealTimeTokenService"

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_2

    :cond_0
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v8, "RealTimeTokenService not supported MAINLINE_API_LEVEL < 34"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string/jumbo v0, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "sec_key_att_app_id_provider"

    new-instance v8, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v8, v7}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSpqrService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6e

    :try_start_5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/SpqrService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/SpqrService;

    const-class v8, Lcom/android/server/SpqrService;

    invoke-static {v8, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6e

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    const-string/jumbo v8, "SystemServer"

    const-string v4, "Failure starting Spqr Service"

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartKeyChainSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartBinaryTransparencyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSchedulingPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "scheduling_policy"

    new-instance v4, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v4}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6e

    :try_start_7
    const-string/jumbo v0, "SEAMS"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SEAMService"

    new-instance v4, Lcom/android/server/SEAMService;

    invoke-direct {v4, v7}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    :try_start_8
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6e

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_9
    const-string/jumbo v4, "SystemServer"

    const-string v8, "Failure starting SE Android Manager Service"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6d

    goto :goto_4

    :goto_5
    :try_start_a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.microphone"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.telecom"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.telephony"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "StartTelecomLoaderService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_2
    const-string/jumbo v0, "StartTelephonyRegistry"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/TelephonyRegistry;

    new-instance v0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v0}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v4, v7, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V

    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSemTelephonyRegistry"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/SemTelephonyRegistry;

    new-instance v0, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;

    invoke-direct {v0}, Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v8, v7, v0}, Lcom/android/server/SemTelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/SemTelephonyRegistry$ConfigurationProvider;)V

    const-string/jumbo v0, "sem.telephony.registry"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartEntropyMixer"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/EntropyMixer;

    invoke-direct {v0, v7}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "factory"

    const-string/jumbo v20, "ro.factory.factory_binary"

    move/from16 v21, v3

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6e

    if-nez v0, :cond_3

    :try_start_b
    const-string/jumbo v0, "UCM Policy Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "knox_ucsm_policy"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v3, "knox_ucsm_policy"

    invoke-static {v3, v0}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6e

    move-object/from16 v20, v4

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    :try_start_d
    const-string/jumbo v3, "SystemServer"

    move-object/from16 v20, v4

    const-string v4, "Failure adding UniversalCredentialManagerService"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6e

    :goto_6
    :try_start_f
    const-string v0, "CredentialManagerService Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {v0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "com.samsung.ucs.ucsservice"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v3, "credentialManagerServiceReady"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    :try_start_11
    const-string/jumbo v3, "SystemServer"

    const-string v4, "Failed to call UCMService systemReady"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :goto_8
    :try_start_12
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6e

    goto :goto_b

    :catch_3
    move-exception v0

    :try_start_13
    const-string/jumbo v3, "SystemServer"

    const-string v4, "Failure adding CredentialManagerService"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_8

    :goto_9
    :try_start_14
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0

    :goto_a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0

    :cond_3
    move-object/from16 v20, v4

    :goto_b
    const-string/jumbo v0, "StartPersonaManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6e

    :try_start_15
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v4, "Persona Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    const-class v4, Lcom/android/server/pm/PersonaManagerService;

    monitor-enter v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :try_start_16
    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :try_start_17
    const-string/jumbo v0, "persona"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    goto :goto_d

    :catchall_6
    move-exception v0

    :try_start_18
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :goto_c
    const/4 v3, 0x0

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_c

    :goto_d
    :try_start_1a
    const-string/jumbo v4, "SystemServer"

    move-object/from16 v23, v3

    const-string v3, "Failure starting Persona Manager Service"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6e

    move-object/from16 v3, v23

    :goto_e
    :try_start_1b
    const-string/jumbo v0, "SystemServer"

    const-string v4, "KnoxMUMContainerPolicy Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {v4, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    :try_start_1c
    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    move-object/from16 v23, v3

    goto :goto_10

    :catchall_8
    move-exception v0

    move-object/from16 v23, v3

    goto :goto_f

    :catchall_9
    move-exception v0

    move-object/from16 v23, v3

    const/4 v4, 0x0

    :goto_f
    :try_start_1d
    const-string/jumbo v3, "SystemServer"

    move-object/from16 v25, v4

    const-string v4, "Failure starting KnoxMUMContainerPolicy Service"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v4, v25

    :goto_10
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v3, "calling startRCPService - 1"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-static {v7, v2, v3}, Lcom/android/server/SystemServer;->startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V

    invoke-virtual {v1, v7, v2}, Lcom/android/server/SystemServer;->startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "StartAccountManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/accounts/AccountManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartContentService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/content/ContentService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "InstallSystemProviders"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartDropBoxManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartEnhancedConfirmationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.ecm.EnhancedConfirmationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartHintManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartRoleManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-class v0, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v3, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;

    move-object/from16 v25, v4

    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.role.RoleService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SemUnionMainService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/sepunion/SemUnionMainService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_4
    const-string/jumbo v0, "StartSupervisionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v15, :cond_5

    if-nez v12, :cond_5

    const-string/jumbo v0, "StartVibratorManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_5
    const-string/jumbo v0, "StartDynamicSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/DynamicSystemService;

    invoke-direct {v0, v7}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "dynamic_system"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "android.hardware.consumerir"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "StartConsumerIrService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ConsumerIrService;

    invoke-direct {v0, v7}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "consumer_ir"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6e

    :cond_6
    :try_start_1e
    const-string/jumbo v0, "SSRM Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.ssrm.CustomFrequencyManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :goto_11
    :try_start_1f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6e

    goto :goto_12

    :catchall_a
    move-exception v0

    goto/16 :goto_a6

    :catch_4
    move-exception v0

    :try_start_20
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "ssrm.jar not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    goto :goto_11

    :goto_12
    :try_start_21
    const-string/jumbo v0, "StartAlarmManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartInputManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/input/InputManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$Lifecycle;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$Lifecycle;->getService()Lcom/android/server/input/InputManagerService;

    move-result-object v3

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "DeviceStateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v11, :cond_7

    const-string/jumbo v0, "StartCameraServiceProxy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartCameraServiceWorker"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_7
    const-string/jumbo v0, "powerSolutionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6e

    :try_start_22
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v4, "powerSolutionManagerService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.powerSolution.powerSolution"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v4, v11, v19

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v4, "PowerSolution_Framework_service"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    goto :goto_13

    :catchall_b
    move-exception v0

    :try_start_23
    const-string v4, "Failed To Start powerSolutionManagerService Service "

    invoke-static {v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartWindowManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v4, "!@Boot_EBS_F: Start WindowManagerService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0xc8

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/16 v18, 0x1

    xor-int/lit8 v0, v0, 0x1

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v4}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    iget-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v7, v3, v0, v4, v11}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    const-string/jumbo v0, "window"

    const/16 v11, 0x13

    move-object/from16 v26, v8

    const/4 v8, 0x0

    invoke-static {v0, v4, v8, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SetWindowManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "WindowManagerServiceOnInitReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    const/4 v8, 0x2

    invoke-direct {v0, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    const-string/jumbo v8, "StartISensorManagerService"

    invoke-static {v0, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    const/4 v8, 0x3

    invoke-direct {v0, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(I)V

    const-string/jumbo v8, "StartHidlServices"

    invoke-static {v0, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    if-nez v13, :cond_8

    if-eqz v21, :cond_8

    const-string/jumbo v0, "StartVrManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_8
    const-string/jumbo v0, "StartInputManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->start()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_9

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v8, "No Bluetooth Service (factory test)"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_9
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v8, "android.hardware.bluetooth"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v8, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_a
    const-string/jumbo v0, "StartBluetoothService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v8, "com.android.server.bluetooth.BluetoothService"

    const-string v11, "/apex/com.android.bt/javalib/service-bluetooth.jar"

    invoke-virtual {v0, v8, v11}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_14
    const-string/jumbo v0, "StartMultiControlManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SystemServer"

    const-string v8, "Hqm Service"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6e

    :try_start_24
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v8, "/system/framework/hqm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v0, v8, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v8, "com.samsung.android.hqm.HqmManagerService"

    invoke-virtual {v0, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v8, v11, v19

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v8, "HqmManagerService"

    invoke-static {v8, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_5
    .catchall {:try_start_24 .. :try_end_24} :catchall_6e

    goto :goto_15

    :catch_5
    move-exception v0

    :try_start_25
    const-string/jumbo v8, "SystemServer"

    const-string/jumbo v11, "hqm.jar not found"

    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    const-string v0, "0"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {v8, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "HcmManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6e

    :try_start_26
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "adaptive_power_saving_setting"

    const/4 v11, 0x0

    invoke-static {v0, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v8, "SystemServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ldalvik/system/PathClassLoader;

    const-string v8, "/system/framework/hcm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v6, v8, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v8, "com.samsung.android.hcm.HcmManagerService"

    invoke-virtual {v6, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-lez v0, :cond_b

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v8, v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v6, "HcmManagerService"

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_17

    :catch_6
    move-exception v0

    goto :goto_16

    :cond_b
    const-string v0, "HcmManagerService"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_6
    .catchall {:try_start_26 .. :try_end_26} :catchall_6e

    goto :goto_17

    :goto_16
    :try_start_27
    const-string/jumbo v6, "SystemServer"

    const-string v8, "Failed to add HcmManagerService."

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_c
    const-string v0, "IpConnectivityMetrics"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "NetworkWatchlistService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "PinnerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "ProfcollectForwardingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_d
    const-string/jumbo v0, "SignedConfigService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "AppIntegrityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartLogcatManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v13, :cond_e

    if-nez v15, :cond_e

    if-nez v16, :cond_e

    if-nez v12, :cond_e

    const-string/jumbo v0, "StartIntrusionDetectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_e
    invoke-static {v7}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "StartAppFunctionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/appfunctions/AppFunctionManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_f
    if-nez v13, :cond_10

    if-nez v15, :cond_10

    if-nez v16, :cond_10

    if-nez v12, :cond_10

    const-string/jumbo v0, "StartAdvancedProtectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_10
    if-nez v13, :cond_11

    if-nez v15, :cond_11

    if-nez v16, :cond_11

    const-string/jumbo v0, "StartTradeInModeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/TradeInModeService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_11
    const-string/jumbo v0, "SemInputDeviceManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6e

    :try_start_28
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v6, "SemInputDeviceManagerService loader"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v6, "getService"

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v8, v11, v19

    invoke-virtual {v0, v6, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v6, "SemInputDeviceManagerService"

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    goto :goto_18

    :catchall_c
    move-exception v0

    :try_start_29
    const-string v6, "Failed To Start SemInputDeviceManagerService loader"

    invoke-static {v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SecIpmManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v6, "com.android.server.ipm.SecIpmManagerService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v8, 0x1

    if-eq v0, v8, :cond_12

    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v6, "com.sec.feature.cover"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "StartCoverService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/cover/CoverManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_12
    const-string/jumbo v0, "Samsung Accessory Manager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6e

    :try_start_2a
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string/jumbo v6, "com.sec.feature.nfc_authentication"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string/jumbo v6, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string/jumbo v6, "com.sec.feature.usb_authentication"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string/jumbo v6, "com.sec.feature.wirelesscharger_authentication"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_19

    :catchall_d
    move-exception v0

    goto :goto_1a

    :cond_13
    :goto_19
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v6, "Samsung Accessory Manager"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {v0, v7, v3}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    const-class v6, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v6, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    goto/16 :goto_1b

    :goto_1a
    :try_start_2b
    const-string/jumbo v6, "starting SAccessoryManager"

    invoke-static {v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    :goto_1b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_6e

    const-string/jumbo v0, "detectSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v6, "!@Boot_EBS_D: detectSafeMode"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "airplane_mode_on"

    const/4 v11, 0x1

    invoke-static {v0, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1c

    :cond_15
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1110043

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v0, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_16
    :goto_1c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v8, 0x1

    if-eq v0, v8, :cond_18

    const-string/jumbo v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1040358

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_1d

    :cond_17
    :try_start_2c
    const-string/jumbo v0, "SystemServer"

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    goto/16 :goto_1d

    :catchall_e
    move-exception v0

    const-string/jumbo v5, "starting "

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartAccessibilityManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_2d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_f

    goto/16 :goto_1e

    :catchall_f
    move-exception v0

    const-string/jumbo v5, "starting Accessibility Manager"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_18
    const-string/jumbo v0, "MakeDisplayReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_2e
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_10

    goto/16 :goto_1f

    :catchall_10
    move-exception v0

    const-string/jumbo v5, "making display ready"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_19

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    const-string v0, "Add SEM_FM_RADIO_SERVICE"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_2f
    const-string v0, "FMPlayer"

    const-class v5, Lcom/android/server/FMRadioService;

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v0, "SystemServer"

    const-string v5, "FMRadio service added.."

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_11

    goto/16 :goto_20

    :catchall_11
    move-exception v0

    const-string v5, "Failure starting FM Radio Service"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_20
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_19
    const-string/jumbo v0, "StartRemoteAppModeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;

    const-string v8, "IcccManagerService"

    invoke-static {v0, v5, v2, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    :try_start_30
    const-string/jumbo v0, "iccc"

    new-instance v5, Lcom/android/server/SystemServer$5;

    const/4 v11, 0x0

    invoke-direct {v5, v11}, Lcom/android/server/SystemServer$5;-><init>(I)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_12

    goto/16 :goto_21

    :catchall_12
    move-exception v0

    const-string v5, "Failure starting IcccManagerService "

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_21
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SamsungGameManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_31
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/gamemanager.jar"

    const-class v8, Lcom/android/server/SystemServer;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v5, "com.samsung.android.game.GameManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "SamsungGameManager Started"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_13

    goto/16 :goto_22

    :catchall_13
    move-exception v0

    const-string/jumbo v5, "SystemServer"

    const-string v8, "Failed to start SamsungGameManager."

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "DisplayAiqeManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_32
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/displayaiqe_svc.jar"

    const-class v8, Lcom/android/server/SystemServer;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v5, "com.samsung.android.displayaiqe.DisplayAiqeManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "SystemServer"

    const-string v5, "Can\'t load DisplayAiqeManagerService class"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    :catchall_14
    move-exception v0

    goto/16 :goto_23

    :cond_1a
    iget-object v5, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "SystemServer"

    const-string v5, "DisplayAiqeManagerService Started"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_14

    goto/16 :goto_24

    :goto_23
    const-string/jumbo v5, "SystemServer"

    const-string v8, "Failed to start DisplayAiqeManagerService."

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SehHdrSolutionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_33
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/vendor.samsung.frameworks.hdrsolution-service.jar"

    const-class v8, Lcom/android/server/SystemServer;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v5, "vendor.samsung.frameworks.hdrsolution.SehHdrSolutionService"

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "SystemServer"

    const-string v5, "Can\'t load SehHdrSolutionService class"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :catchall_15
    move-exception v0

    goto/16 :goto_25

    :cond_1b
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v8, v5, v19

    const-class v8, Landroid/app/IActivityManager;

    const/16 v18, 0x1

    aput-object v8, v5, v18

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v5, "vendor.samsung.frameworks.hdrsolution.ISehHdrSolution/default"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "SehHdrSolutionService loaded"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "secmm.hdrsolution.ready"

    const-string v5, "1"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_15

    goto/16 :goto_26

    :goto_25
    const-string/jumbo v5, "SystemServer"

    const-string v8, "Failed to start SehHdrSolutionService "

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_JDM_MODEL:Z

    if-nez v0, :cond_1d

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "PerfSDKService"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "PerfSDKService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_34
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/perfsdkservice.jar"

    const-class v8, Lcom/android/server/SystemServer;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v5, "com.samsung.android.perfsdkservice.PerfSDKService"

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "SystemServer"

    const-string v5, "Can\'t load PerfSdkService class"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :catchall_16
    move-exception v0

    goto/16 :goto_27

    :cond_1c
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v8, v5, v19

    const-class v8, Landroid/app/IActivityManager;

    const/16 v18, 0x1

    aput-object v8, v5, v18

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v5, "perfsdkservice"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "PerfSDKService loaded"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_16

    goto/16 :goto_28

    :goto_27
    const-string/jumbo v5, "SystemServer"

    const-string v8, "Failed to add PerfSDKService."

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1d
    const-string/jumbo v0, "SehCodecSolutionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_35
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/vendor.samsung.frameworks.codecsolution-service.jar"

    const-class v8, Lcom/android/server/SystemServer;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v5, "vendor.samsung.frameworks.codecsolution.SehCodecSolutionService"

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "SystemServer"

    const-string v5, "Can\'t load SehCodecSolutionService class"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :catchall_17
    move-exception v0

    goto/16 :goto_29

    :cond_1e
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v8, v5, v19

    const-class v8, Landroid/app/IActivityManager;

    const/16 v18, 0x1

    aput-object v8, v5, v18

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v5, "vendor.samsung.frameworks.codecsolution.ISehCodecSolution/default"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "SehCodecSolutionService loaded"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "secmm.codecsolution.ready"

    const-string v5, "1"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_17

    goto/16 :goto_2a

    :goto_29
    const-string/jumbo v5, "SystemServer"

    const-string v8, "Failed to start SehCodecSolutionService "

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v8, 0x1

    if-eq v0, v8, :cond_20

    const-string v0, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "StartStorageManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_36
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/StorageManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_18

    goto/16 :goto_2b

    :catchall_18
    move-exception v0

    const-string/jumbo v5, "starting StorageManagerService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartStorageStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_37
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/usage/StorageStatsService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_19

    goto/16 :goto_2c

    :catchall_19
    move-exception v0

    const-string/jumbo v5, "starting StorageStatsService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "DirEncryptSerrvice"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_38
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/android/server/DirEncryptService;

    invoke-direct {v0, v7}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "SystemServer"

    const-string v8, "DirEncryptService.SystemReady"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/DirEncryptService;->systemReady()V

    const-string v5, "DirEncryptService"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1a

    goto/16 :goto_2d

    :catchall_1a
    move-exception v0

    const-string/jumbo v5, "starting DirEncryption service"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_2d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_20
    const-string/jumbo v0, "StartUiModeManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    const-string/jumbo v8, "StartLocaleManagerService"

    invoke-static {v0, v5, v2, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    :try_start_39
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1b

    goto/16 :goto_2e

    :catchall_1b
    move-exception v0

    const-string/jumbo v5, "starting LocaleManagerService service"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartGrammarInflectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_3a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1c

    goto/16 :goto_2f

    :catchall_1c
    move-exception v0

    const-string/jumbo v5, "starting GrammarInflectionService service"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartAppHibernationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/apphibernation/AppHibernationService;

    const-string v8, "ArtManagerLocal"

    invoke-static {v0, v5, v2, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7, v0}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v5, "!@Boot_EBS_D: UpdatePackagesIfNeeded"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3b
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string/jumbo v5, "dexopt"

    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1d

    :goto_30
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string/jumbo v5, "dexopt"

    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    goto/16 :goto_31

    :catchall_1d
    move-exception v0

    :try_start_3c
    const-string/jumbo v5, "update packages"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6c

    goto :goto_30

    :goto_31
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "UpdateMetricsIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updateMetricsIfNeeded()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartProfileUtilizationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_3d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/pu/ProfileUtilizationService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pu/ProfileUtilizationService;

    const-class v5, Lcom/android/server/pm/pu/ProfileUtilizationService;

    invoke-static {v5, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/pu/ProfileUtilizationService;->onBootAfterUpdateIfNeeded(Lcom/android/server/pm/PackageManagerService;)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3d} :catch_7

    goto/16 :goto_32

    :catch_7
    move-exception v0

    const-string/jumbo v5, "SystemServer"

    const-string v8, "Failure starting PU Service"

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "PerformFstrimIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_3e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1e

    goto/16 :goto_33

    :catchall_1e
    move-exception v0

    const-string/jumbo v5, "performing fstrim"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_33
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_21

    move-object/from16 v27, v3

    move/from16 v3, v16

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v29, 0x0

    :goto_34
    const/16 v21, 0x0

    goto/16 :goto_89

    :cond_21
    const-string/jumbo v0, "StartLockSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_3f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1f

    move-object v5, v0

    goto/16 :goto_35

    :catchall_1f
    move-exception v0

    const-string/jumbo v5, "starting LockSettingsService service"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    :goto_35
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v8, "StartPersistentDataBlock"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_22
    sget-boolean v8, Landroid/os/Build;->IS_ARC:Z

    if-eqz v8, :cond_23

    const-string/jumbo v8, "ro.boot.dev_mode"

    const/4 v11, 0x0

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_23

    const-string/jumbo v8, "StartArcPersistentDataBlock"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v11, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_23
    const-string/jumbo v8, "StartTestHarnessMode"

    invoke-virtual {v2, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    const-string/jumbo v0, "StartOemLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_25
    const-string/jumbo v0, "StartDeviceIdleController"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/DeviceIdleController;

    const-string/jumbo v11, "StartDevicePolicyManager"

    invoke-static {v0, v8, v2, v11}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartStatusBarManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_40
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v7}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V

    const-string/jumbo v11, "statusbar"
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_21

    const/16 v12, 0x14

    move-object/from16 v21, v5

    const/4 v5, 0x0

    :try_start_41
    invoke-static {v11, v0, v5, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_20

    goto/16 :goto_37

    :catchall_20
    move-exception v0

    goto/16 :goto_36

    :catchall_21
    move-exception v0

    move-object/from16 v21, v5

    :goto_36
    const-string/jumbo v5, "starting StatusBarManagerService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_37
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const v0, 0x1040337

    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "StartMusicRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_38

    :cond_26
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    const-string/jumbo v0, "StartEnterpriseDeviceManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_42
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    const-string/jumbo v0, "SystemServer"

    const-string v5, "Enterprise Policy manager service created..."

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_22

    goto/16 :goto_39

    :catchall_22
    move-exception v0

    const-string/jumbo v5, "starting EnterpriseDeviceManagerService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_39
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    move-result v0

    if-lez v0, :cond_27

    :try_start_43
    const-string/jumbo v0, "[KnoxAnalytics] System Service"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_23

    goto/16 :goto_3a

    :catchall_23
    move-exception v0

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v11, "[KnoxAnalytics] Failure starting System Service"

    invoke-static {v5, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    :cond_27
    const-string/jumbo v0, "SystemServer"

    const-string v5, "KnoxAnalyticsSystemService not defined by OEM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    const-string v0, "KnoxCustom Policy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_44
    new-instance v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {v0, v7}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const-string/jumbo v5, "knoxcustom"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "knoxcustom"

    iget-object v5, v1, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0, v5}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "SystemServer"

    const-string v5, "KnoxCustom Policy added."

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_24

    goto/16 :goto_3b

    :catchall_24
    move-exception v0

    const-string/jumbo v5, "SystemServer"

    const-string v11, "Fail KnoxCustom Policy."

    invoke-static {v5, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SystemServer"

    const-string v5, "DarManagerService"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DarManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_45
    const-string/jumbo v0, "dar"

    new-instance v5, Lcom/android/server/SystemServer$5;

    const/4 v11, 0x4

    invoke-direct {v5, v11}, Lcom/android/server/SystemServer$5;-><init>(I)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_25

    goto/16 :goto_3c

    :catchall_25
    move-exception v0

    const-string v5, "Failure starting DarManagerService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v1, v7, v2}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual {v1, v7, v2}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual {v1, v7, v2}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual {v1, v7, v2}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    if-eqz v13, :cond_28

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "Not starting WearableSensingService"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    :cond_28
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    :goto_3d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const v0, 0x104031d

    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "StartAmbientContextService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_3e

    :cond_29
    const-string/jumbo v0, "SystemServer"

    const-string v5, "AmbientContextManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    const-string/jumbo v0, "StartSpeechRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const v0, 0x104031e

    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "StartAppPredictionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_3f

    :cond_2a
    const-string/jumbo v0, "SystemServer"

    const-string v5, "AppPredictionService not defined by OEM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    const v0, 0x1040327

    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "StartContentSuggestionsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_40

    :cond_2b
    const-string/jumbo v0, "SystemServer"

    const-string v5, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    :try_start_46
    const-string/jumbo v0, "SemClipboardService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "SemClipboardService"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "semclipboard"

    new-instance v5, Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {v5, v7}, Lcom/android/server/semclipboard/SemClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_26

    :goto_41
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_42

    :catchall_26
    move-exception v0

    :try_start_47
    const-string/jumbo v5, "starting SemClipboardService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_6b

    goto :goto_41

    :goto_42
    const v0, 0x1040343

    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "StartSearchUiService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/searchui/SearchUiManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_2c
    const v0, 0x1040346

    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "StartSmartspaceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_43

    :cond_2d
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "SmartspaceManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    const v0, 0x104032b

    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "StartContextualSearchService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_44

    :cond_2e
    const-string/jumbo v0, "SystemServer"

    const-string v5, "ContextualSearchManagerService not defined or disabled by flag"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    :try_start_48
    const-string/jumbo v0, "StartSemContextService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v5, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v5, "com.sec.feature.scontext_lite"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_45

    :catchall_27
    move-exception v0

    goto/16 :goto_a5

    :catch_8
    move-exception v0

    goto/16 :goto_47

    :cond_2f
    :goto_45
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "SemContextService Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/semcontextservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v0, v5, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v5, "com.samsung.android.hardware.context.SemContextService"

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v11, v5, v19

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string/jumbo v5, "scontext"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_8
    .catchall {:try_start_48 .. :try_end_48} :catchall_27

    :cond_30
    :goto_46
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_48

    :goto_47
    :try_start_49
    const-string/jumbo v5, "SystemServer"

    const-string v11, "Failure starting SemContextService"

    invoke-static {v5, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_27

    goto :goto_46

    :goto_48
    const-string/jumbo v0, "StartMotionRecognitionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_4a
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string/jumbo v5, "com.sec.feature.motionrecognition_service"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v0, v5, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v5, "com.samsung.android.gesture.MotionRecognitionService"

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v11, v5, v19

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string/jumbo v5, "motion_recognition"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "MotionRecognitionService Service!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_9

    goto/16 :goto_49

    :catch_9
    move-exception v0

    const-string/jumbo v5, "SystemServer"

    const-string v11, "Failure starting MotionRecognitionService"

    invoke-static {v5, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_49
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_4b
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_28

    goto/16 :goto_4a

    :catchall_28
    move-exception v0

    const-string/jumbo v5, "initializing ConnectivityModuleConnector"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_4c
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_29

    goto/16 :goto_4b

    :catchall_29
    move-exception v0

    const-string/jumbo v5, "initializing NetworkStackClient"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartNetworkManagementService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_4d
    invoke-static {v7}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    move-result-object v5
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2b

    :try_start_4e
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2a

    goto/16 :goto_4d

    :catchall_2a
    move-exception v0

    goto/16 :goto_4c

    :catchall_2b
    move-exception v0

    const/4 v5, 0x0

    :goto_4c
    const-string/jumbo v11, "starting NetworkManagement Service"

    invoke-static {v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_32

    const-string/jumbo v0, "StartSpegService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_4f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/pm/SpegService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SpegService;

    iget-object v11, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/SpegService;->init(Lcom/android/server/pm/PackageManagerService;)V

    const-class v11, Lcom/android/server/pm/SpegService;

    invoke-static {v11, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_a

    goto/16 :goto_4e

    :catch_a
    move-exception v0

    const-string/jumbo v11, "SystemServer"

    const-string v12, "Failure starting SpegService helper"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_32
    const-string/jumbo v0, "StartFontManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v11, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v11, v7, v6}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v13, :cond_33

    goto/16 :goto_4f

    :cond_33
    const-string/jumbo v0, "StartTextServicesManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_4f
    if-nez v9, :cond_34

    const-string/jumbo v0, "StartTextClassificationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_34
    const-string/jumbo v0, "StartNetworkScoreService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/NetworkScoreService$Lifecycle;

    const-string/jumbo v11, "StartNetworkStatsService"

    invoke-static {v0, v9, v2, v11}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v9, "com.android.server.NetworkStatsServiceInitializer"

    const-string v11, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v9, v11}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_50
    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v9, v7, v0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/server/net/NetworkManagementService;)V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_2d

    :try_start_51
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_2c

    goto/16 :goto_52

    :catchall_2c
    move-exception v0

    goto/16 :goto_51

    :goto_50
    const/4 v9, 0x0

    goto/16 :goto_51

    :catchall_2d
    move-exception v0

    goto :goto_50

    :goto_51
    const-string/jumbo v11, "starting NetworkPolicy Service"

    invoke-static {v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_52
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartUrspService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_52
    new-instance v11, Lcom/android/server/net/UrspService;

    invoke-direct {v11, v7}, Lcom/android/server/net/UrspService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_2f

    :try_start_53
    const-string/jumbo v0, "urspservice"

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_2e

    goto/16 :goto_54

    :catchall_2e
    move-exception v0

    goto/16 :goto_53

    :catchall_2f
    move-exception v0

    const/4 v11, 0x0

    :goto_53
    const-string/jumbo v12, "starting URSP Service"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_54
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v12, "android.hardware.wifi"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v0, "StartWifi"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v12, "com.android.server.wifi.WifiService"

    move-object/from16 v27, v5

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v12, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartWifiScanning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v12, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_55

    :cond_35
    move-object/from16 v27, v5

    :goto_55
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111013d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "StartWifiUsd"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.usd.UsdService"

    const-string v12, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_36
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v5, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "StartRttService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.rtt.RttService"

    const-string v12, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_37
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v5, "android.hardware.wifi.aware"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "StartWifiAware"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.aware.WifiAwareService"

    const-string v12, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_38
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v5, "android.hardware.wifi.direct"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string/jumbo v0, "StartWifiP2P"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v12, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_39
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v5, "android.hardware.lowpan"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "StartLowpan"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_3a
    const-string/jumbo v0, "StartPacProxyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_54
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "pac_proxy"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_30

    goto/16 :goto_56

    :catchall_30
    move-exception v0

    const-string/jumbo v5, "starting PacProxyService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_56
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartIntelligentBatterySaverService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-direct {v0, v7}, Lcom/android/server/ibs/IntelligentBatterySaverService;-><init>(Landroid/content/Context;)V

    const-string v5, "IntelligentBatterySaverService"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "StartKnoxGuard"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_55
    const-string/jumbo v0, "knoxguard_service"

    new-instance v5, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;

    invoke-direct {v5, v7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_31

    goto/16 :goto_57

    :catchall_31
    move-exception v0

    const-string/jumbo v5, "SystemServer"

    const-string v12, "Failed to add KnoxGuardService."

    invoke-static {v5, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_57
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_3b
    const-string/jumbo v0, "StartConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ConnectivityServiceInitializer"

    const-string v12, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v5, v12}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartExtendedEthernetService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_56
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ExtendedEthernetService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_32

    goto/16 :goto_58

    :catchall_32
    move-exception v0

    const-string/jumbo v5, "SystemServer"

    const-string v12, "Failed to start ExtendedEthernetService."

    invoke-static {v5, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_58
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSecurityStateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_57
    const-string/jumbo v0, "security_state"

    new-instance v5, Lcom/android/server/SecurityStateManagerService;

    invoke-direct {v5, v7}, Lcom/android/server/SecurityStateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_33

    goto/16 :goto_59

    :catchall_33
    move-exception v0

    const-string/jumbo v5, "starting SecurityStateManagerService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_59
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v13, :cond_3c

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "Not starting VpnManagerService"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_5c

    :cond_3c
    const-string/jumbo v0, "StartVpnManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_58
    invoke-static {v7}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v5
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_35

    :try_start_59
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_34

    goto/16 :goto_5b

    :catchall_34
    move-exception v0

    goto/16 :goto_5a

    :catchall_35
    move-exception v0

    const/4 v5, 0x0

    :goto_5a
    const-string/jumbo v12, "starting VPN Manager Service"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_5c
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastB()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string/jumbo v0, "StartVcnManagementService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_5a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v12, "com.android.server.ConnectivityServiceInitializerB"
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_37

    move-object/from16 v28, v5

    :try_start_5b
    const-string v5, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v12, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_36

    goto/16 :goto_5e

    :catchall_36
    move-exception v0

    goto/16 :goto_5d

    :catchall_37
    move-exception v0

    move-object/from16 v28, v5

    :goto_5d
    const-string/jumbo v5, "starting VCN Management Service"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_5f

    :cond_3d
    move-object/from16 v28, v5

    :goto_5f
    const-string/jumbo v0, "StartSystemUpdateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_5c
    const-string/jumbo v0, "system_update"

    new-instance v5, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v5, v7}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_38

    goto/16 :goto_60

    :catchall_38
    move-exception v0

    const-string/jumbo v5, "starting SystemUpdateManagerService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_60
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartUpdateLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_5d
    const-string/jumbo v0, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v7}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_39

    goto/16 :goto_61

    :catchall_39
    move-exception v0

    const-string/jumbo v5, "starting UpdateLockService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_61
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartNotificationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {v7}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    invoke-static {v7}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartDeviceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    const-string/jumbo v12, "StartTimeDetectorService"

    invoke-static {v0, v5, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    :try_start_5e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_3a

    goto/16 :goto_62

    :catchall_3a
    move-exception v0

    const-string/jumbo v5, "starting TimeDetectorService service"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_62
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartLocationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/location/LocationManagerService$Lifecycle;

    const-string/jumbo v12, "StartSLocationService"

    invoke-static {v0, v5, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    :try_start_5f
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "SLocation Manager"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.location.SLocationLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v5, "getSLocationService"
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_3d

    move-object/from16 v29, v8

    const/4 v12, 0x1

    :try_start_60
    new-array v8, v12, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v12, v8, v19

    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/IBinder;
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_3c

    :try_start_61
    const-string/jumbo v0, "sec_location"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_3b

    :goto_63
    move-object v8, v5

    goto/16 :goto_66

    :catchall_3b
    move-exception v0

    goto/16 :goto_65

    :catchall_3c
    move-exception v0

    :goto_64
    const/4 v5, 0x0

    goto/16 :goto_65

    :catchall_3d
    move-exception v0

    move-object/from16 v29, v8

    goto :goto_64

    :goto_65
    const-string/jumbo v8, "Starting SLocationService"

    invoke-static {v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_63

    :goto_66
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SemMdnieManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_62
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "mDNIe Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.hardware.display.SemMdnieManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string/jumbo v0, "mDNIe"

    new-instance v5, Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-direct {v5, v7}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_3e

    goto/16 :goto_67

    :catchall_3e
    move-exception v0

    const-string v5, "Failed To Start Mdnie Service "

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_67
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SemDisplaySolution"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_63
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "SemDisplaySolution Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "DisplaySolution"

    new-instance v5, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-direct {v5, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_3f

    goto/16 :goto_68

    :catchall_3f
    move-exception v0

    const-string v5, "Failed To Start SemDisplaySolution Service "

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_68
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartMoccaService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_64
    invoke-static {v7}, Lcom/android/server/sensors/mocca/MoccaLoader;->getMoccaService(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v5
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_41

    :try_start_65
    const-string/jumbo v0, "mocca"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_40

    move-object/from16 v30, v5

    goto/16 :goto_6a

    :catchall_40
    move-exception v0

    goto/16 :goto_69

    :catchall_41
    move-exception v0

    const/4 v5, 0x0

    :goto_69
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v30, v5

    const-string/jumbo v5, "Starting MoccaService:"

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartCountryDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_66
    new-instance v5, Lcom/android/server/CountryDetectorService;

    invoke-direct {v5, v7}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_43

    :try_start_67
    const-string/jumbo v0, "country_detector"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_42

    goto/16 :goto_6c

    :catchall_42
    move-exception v0

    goto/16 :goto_6b

    :catchall_43
    move-exception v0

    const/4 v5, 0x0

    :goto_6b
    const-string/jumbo v12, "starting Country Detector"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartTimeZoneDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_68
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_44

    goto/16 :goto_6d

    :catchall_44
    move-exception v0

    const-string/jumbo v12, "starting TimeZoneDetectorService service"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartAltitudeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_69
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_45

    goto/16 :goto_6e

    :catchall_45
    move-exception v0

    const-string/jumbo v12, "starting AltitudeService service"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartLocationTimeZoneManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_6a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_46

    goto/16 :goto_6f

    :catchall_46
    move-exception v0

    const-string/jumbo v12, "starting LocationTimeZoneManagerService service"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x1110180

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "StartGnssTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_6b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_47

    goto/16 :goto_70

    :catchall_47
    move-exception v0

    const-string/jumbo v12, "starting GnssTimeUpdateService service"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_70
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_3e
    const-string v0, "KnoxVpnService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_6c
    iget-object v0, v1, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    if-eqz v0, :cond_3f

    const-string v0, "Adding KnoxVpnEngineService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v12, "Adding KnoxVpnEngineService"

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v12, "knox_vpn_policy"

    invoke-static {v12, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v12, "knox_vpn_policy"

    invoke-static {v12, v0}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_48

    goto/16 :goto_71

    :catchall_48
    move-exception v0

    goto/16 :goto_72

    :cond_3f
    :goto_71
    move-object/from16 v31, v5

    goto/16 :goto_73

    :goto_72
    const-string/jumbo v12, "SystemServer"

    move-object/from16 v31, v5

    const-string v5, "Failure starting KnoxVpnEngineService"

    invoke-static {v12, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_73
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v13, :cond_40

    const-string/jumbo v0, "StartSearchManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_6d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_49

    goto/16 :goto_74

    :catchall_49
    move-exception v0

    const-string/jumbo v5, "starting Search Service"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_74
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_40
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111019f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, "StartWallpaperManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_75

    :cond_41
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v5, "Wallpaper service disabled by config"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    const v0, 0x104034c

    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string/jumbo v0, "StartWallpaperEffectsGenerationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_42
    const-string/jumbo v0, "StartAudioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-nez v14, :cond_43

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_76

    :cond_43
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1040354

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :try_start_6e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "$Lifecycle"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_4a

    goto/16 :goto_76

    :catchall_4a
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "starting "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_76
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "LedCoverAppService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ledcoverapp/LedCoverAppService;

    invoke-direct {v0, v7}, Lcom/android/server/ledcoverapp/LedCoverAppService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartLedBackCoverService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ledcover/LedBackCoverService;

    invoke-direct {v0, v7}, Lcom/android/server/ledcover/LedBackCoverService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.broadcastradio"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string/jumbo v0, "StartBroadcastRadioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_44
    if-nez v15, :cond_45

    const-string/jumbo v0, "StartDockObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_45
    if-eqz v13, :cond_46

    const-string/jumbo v0, "StartThermalObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_46
    if-nez v13, :cond_47

    const-string/jumbo v0, "StartWiredAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_6f
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v7, v3}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_4b

    goto/16 :goto_77

    :catchall_4b
    move-exception v0

    const-string/jumbo v5, "starting WiredAccessoryManager"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_77
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_47
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo v0, "StartMidiManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/midi/MidiService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_48
    const-string/jumbo v0, "StartAdbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_70
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/adb/AdbService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_4c

    goto/16 :goto_78

    :catchall_4c
    const-string/jumbo v0, "SystemServer"

    const-string v5, "Failure starting AdbService"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.accessory"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_4a

    :cond_49
    const-string/jumbo v0, "StartUsbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/usb/UsbService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_4a
    if-nez v13, :cond_4b

    const-string/jumbo v0, "StartSerialService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SerialService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_4b
    const-string/jumbo v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_71
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v7}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "hardware_properties"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_4d

    goto/16 :goto_79

    :catchall_4d
    move-exception v0

    const-string/jumbo v5, "SystemServer"

    const-string v12, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v5, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_79
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v13, :cond_4c

    const-string/jumbo v0, "StartTwilightService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_4c
    const-string/jumbo v0, "StartColorDisplay"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v12, "StartJobScheduler"

    invoke-static {v0, v5, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v12, "StartSoundTrigger"

    invoke-static {v0, v5, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    const-string/jumbo v12, "StartTrustManager"

    invoke-static {v0, v5, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string/jumbo v0, "StartBackupManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/backup/BackupManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_4d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111016f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_4e
    const-string/jumbo v0, "StartAppWidgetService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/appwidget/AppWidgetService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_4f
    const-string/jumbo v0, "StartVoiceRecognitionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string/jumbo v0, "StartGestureLauncher"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_50
    const-string/jumbo v0, "StartSensorNotification"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.context_hub"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string/jumbo v0, "StartContextHubSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_51
    const-string/jumbo v0, "StartDiskStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_72
    const-string/jumbo v0, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v7}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_4e

    goto/16 :goto_7a

    :catchall_4e
    move-exception v0

    const-string/jumbo v5, "starting DiskStats Service"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "RuntimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_73
    const-string/jumbo v0, "runtime"

    new-instance v5, Lcom/android/server/RuntimeService;

    invoke-direct {v5, v7}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_4f

    goto/16 :goto_7b

    :catchall_4f
    move-exception v0

    const-string/jumbo v5, "starting RuntimeService"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v10, :cond_53

    if-eqz v13, :cond_52

    if-eqz v13, :cond_53

    :cond_52
    const-string/jumbo v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_74
    new-instance v5, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {v5, v7}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_51

    :try_start_75
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_50

    goto/16 :goto_7d

    :catchall_50
    move-exception v0

    goto/16 :goto_7c

    :catchall_51
    move-exception v0

    const/4 v5, 0x0

    :goto_7c
    const-string/jumbo v10, "starting NetworkTimeUpdate service"

    invoke-static {v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_7e

    :cond_53
    const/4 v5, 0x0

    :goto_7e
    const-string v0, "CertBlocklister"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_76
    new-instance v0, Lcom/android/server/CertBlocklister;

    invoke-direct {v0, v7}, Lcom/android/server/CertBlocklister;-><init>(Landroid/content/Context;)V
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_52

    goto/16 :goto_7f

    :catchall_52
    move-exception v0

    const-string/jumbo v10, "starting CertBlocklister"

    invoke-static {v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartEmergencyAffordanceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/emergency/EmergencyAffordanceService;

    const-string/jumbo v12, "startBlobStoreManagerService"

    invoke-static {v0, v10, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/blob/BlobStoreManagerService;

    const-string/jumbo v12, "StartDreamManager"

    invoke-static {v0, v10, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "graphicsstats"

    new-instance v10, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v10, v7}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_54

    const-string v0, "AddCoverageService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "coverage"

    new-instance v10, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v10}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_54
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "android.software.print"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string/jumbo v0, "StartPrintManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/print/PrintManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_55
    const-string/jumbo v0, "StartAttestationVerificationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "android.software.companion_device_setup"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string/jumbo v0, "StartCompanionDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_56
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x111019e

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string/jumbo v0, "StartVirtualDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_57
    const-string/jumbo v0, "StartRestrictionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/restrictions/RestrictionsManagerService;

    const-string v12, "CocktailBarService"

    invoke-static {v0, v10, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/cocktailbar/CocktailBarManagerService;

    const-string/jumbo v12, "StartAODManagerService"

    invoke-static {v0, v10, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/aod/AODManagerService;

    const-string v12, "KMTDService"

    invoke-static {v0, v10, v2, v12}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    :try_start_77
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v10, "/system/framework/knox_mtd.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v0, v10, v12}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v10, "com.samsung.android.knox.mtd.KMTDService"

    invoke-virtual {v0, v10}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v12, 0x1

    new-array v10, v12, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v12, v10, v19

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v10, "knox.mtd"

    invoke-static {v10, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_b

    goto/16 :goto_80

    :catch_b
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v10, "knox_mtd.jar not found"

    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_80
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "BattAuthManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_78
    const-string/jumbo v0, "SystemServer"

    const-string v10, "BattAuthManager"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/battauthmanager/BattAuthManager;

    invoke-direct {v0, v7}, Lcom/samsung/android/battauthmanager/BattAuthManager;-><init>(Landroid/content/Context;)V

    const-class v10, Lcom/samsung/android/battauthmanager/BattAuthManager;

    invoke-static {v10, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_53

    goto/16 :goto_81

    :catchall_53
    move-exception v0

    const-string/jumbo v10, "starting BattAuthManager"

    invoke-static {v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_81
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartMediaSessionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string/jumbo v0, "StartHdmiControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_58
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "android.software.live_tv"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "android.software.leanback"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_59
    const-string/jumbo v0, "StartTvInteractiveAppManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_5a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "android.software.live_tv"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "android.software.leanback"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_5b
    const-string/jumbo v0, "StartTvInputManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_5c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "android.hardware.tv.tuner"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "StartTunerResourceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_5d
    if-eqz v15, :cond_5e

    const-string/jumbo v0, "StartMediaQuality"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_5e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "android.software.picture_in_picture"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "StartMediaResourceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_5f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "android.software.leanback"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo v0, "StartTvRemoteService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_60
    const-string/jumbo v0, "StartMediaRouterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_79
    new-instance v10, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v10, v7}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_55

    :try_start_7a
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_54

    goto/16 :goto_83

    :catchall_54
    move-exception v0

    goto/16 :goto_82

    :catchall_55
    move-exception v0

    const/4 v10, 0x0

    :goto_82
    const-string/jumbo v12, "starting MediaRouterService"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_83
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SemInputDeviceManagerService SystemReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_7b
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v12, "SemInputDeviceManagerService SystemReady loader"

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v12, "systemReady"

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    invoke-virtual {v0, v12, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_56

    goto/16 :goto_84

    :catchall_56
    move-exception v0

    const-string v12, "Failed To Call SemInputDeviceManagerService SystemReady loader "

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_84
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v12, "android.hardware.biometrics.face"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iget-object v12, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v14, "android.hardware.biometrics.iris"

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    iget-object v14, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v15, "android.hardware.fingerprint"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v0, :cond_61

    const-string/jumbo v0, "StartFaceSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_61
    if-eqz v12, :cond_62

    const-string/jumbo v0, "StartIrisSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_62
    if-eqz v14, :cond_63

    const-string/jumbo v0, "StartFingerprintSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_63
    const-string/jumbo v0, "StartBiometricService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/biometrics/BiometricService;

    const-string/jumbo v14, "StartAuthService"

    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v13, :cond_64

    const-string/jumbo v0, "StartDynamicCodeLoggingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_7c
    invoke-static {v7}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_57

    goto/16 :goto_85

    :catchall_57
    move-exception v0

    const-string/jumbo v12, "starting DynamicCodeLoggingService"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_85
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_64
    if-nez v13, :cond_65

    const-string/jumbo v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_7d
    invoke-static {v7}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_58

    goto/16 :goto_86

    :catchall_58
    move-exception v0

    const-string/jumbo v12, "StartPruneInstantAppsJobService"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_86
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_65
    const-string/jumbo v0, "StartSmartThingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/smartthings/SmartThingsService;

    invoke-direct {v0, v7}, Lcom/android/server/smartthings/SmartThingsService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSelinuxAuditLogsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_7e
    invoke-static {v7}, Lcom/android/server/selinux/SelinuxAuditLogsService;->schedule(Landroid/content/Context;)V
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_59

    goto/16 :goto_87

    :catchall_59
    move-exception v0

    const-string/jumbo v12, "starting SelinuxAuditLogsService"

    invoke-static {v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_87
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pm/ShortcutService$Lifecycle;

    const-string/jumbo v14, "StartLauncherAppsService"

    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pm/LauncherAppsService;

    const-string/jumbo v14, "StartCrossProfileAppsService"

    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pm/CrossProfileAppsService;

    const-string/jumbo v14, "StartPeopleService"

    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/people/PeopleService;

    const-string/jumbo v14, "StartMediaMetricsManager"

    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "ro.system_settings.service.backgound_install_control_enabled"

    const/4 v12, 0x1

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string/jumbo v0, "StartBackgroundInstallControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pm/BackgroundInstallControlService;

    const-string/jumbo v14, "StartChimeraService"

    invoke-static {v0, v12, v2, v14}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    :try_start_7f
    new-instance v0, Lcom/android/server/chimera/ChimeraManagerService;

    iget-object v12, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v7, v12}, Lcom/android/server/chimera/ChimeraManagerService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    const-string v12, "ChimeraManagerService"

    invoke-static {v12, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "SystemServer"

    const-string v12, "ChimeraManagerService loaded"

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_c

    goto/16 :goto_88

    :catch_c
    move-exception v0

    const-string/jumbo v12, "SystemServer"

    const-string v14, "Failure adding ChimeraManagerService"

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_66
    :goto_88
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v12, "android.hardware.wifi"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string/jumbo v0, "StartOemWifi"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v12, "com.samsung.android.server.wifi.SemWifiService"

    const-string v14, "/system/framework/semwifi-service.jar"

    invoke-virtual {v0, v12, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_67
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v12, "android.hardware.wifi.direct"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string/jumbo v0, "StartOemWifiP2p"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v12, "com.samsung.android.server.wifi.p2p.SemWifiP2pService"

    const-string v14, "/system/framework/semwifi-service.jar"

    invoke-virtual {v0, v12, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_68
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v12, "android.hardware.wifi.aware"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string/jumbo v0, "StartOemWifiAware"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v12, "com.samsung.android.server.wifi.aware.SemWifiAwareService"

    const-string v14, "/system/framework/semwifi-service.jar"

    invoke-virtual {v0, v12, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_69
    const-string/jumbo v0, "StartStdpService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v12, "com.samsung.android.server.wifi.stdp.StandardPlusService"

    const-string v14, "/system/framework/semwifi-service.jar"

    invoke-virtual {v0, v12, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    move-object v14, v8

    move-object v12, v9

    move-object/from16 v22, v10

    move-object v15, v11

    move-object/from16 v9, v27

    move-object/from16 v11, v28

    move-object/from16 v8, v31

    move-object/from16 v27, v3

    move-object v10, v5

    move/from16 v3, v16

    move-object/from16 v5, v21

    move-object/from16 v16, v30

    goto/16 :goto_34

    :goto_89
    const-string/jumbo v0, "StartMediaProjectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v28, v3

    const-class v3, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "att.devicehealth.support"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string/jumbo v0, "SetupDeviceHealthSupport"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_80
    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {v0, v7}, Lcom/samsung/iqi/IQIServiceBrokerExt;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->startIqi()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_d

    move-object/from16 v30, v5

    goto/16 :goto_8a

    :catch_d
    move-exception v0

    const-string/jumbo v3, "SystemServer"

    move-object/from16 v30, v5

    const-string/jumbo v5, "Unable to start com.samsung.iqi.IQIServiceBrokerExt"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_8b

    :cond_6a
    move-object/from16 v30, v5

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v3, "System feature for device health not found"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8b
    if-eqz v13, :cond_6c

    const-string/jumbo v0, "StartWearPowerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.clockwork.healthservices.HealthService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSystemStateDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.clockwork.systemstatedisplay.SystemStateDisplayService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartWearConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartWearDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_6b

    const-string/jumbo v0, "StartWearDebugService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.clockwork.debug.WearDebugService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_6b
    const-string/jumbo v0, "StartWearTimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartWearSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.clockwork.settings.WearSettingsService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartWearModeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.clockwork.modes.ModeManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_6c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android.software.slices_disabled"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6d

    const-string/jumbo v0, "StartSliceManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/slice/SliceManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_6d
    invoke-static {v7}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureEmbedded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string/jumbo v0, "StartIoTSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_6e
    const-string/jumbo v0, "StartSpenGestureManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_81
    const-string/jumbo v0, "spengestureservice"

    new-instance v3, Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {v3, v7, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_5a

    goto/16 :goto_8c

    :catchall_5a
    move-exception v0

    const-string/jumbo v3, "starting SpenGestureManagerService"

    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8c
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSamsungNotesService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/samsungnotes/SamsungNotesService;

    invoke-direct {v0, v7}, Lcom/android/server/samsungnotes/SamsungNotesService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartStatsCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v5, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartRebootReadinessManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v5, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartStatsPullAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/pull/StatsPullAtomService;

    const-string/jumbo v5, "StatsBootstrapAtomService"

    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;

    const-string/jumbo v5, "StartIncidentCompanionService"

    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/incident/IncidentCompanionService;

    const-string/jumbo v5, "StarSdkSandboxManagerService"

    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartAdServicesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "ro.system_settings.service.odp_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string/jumbo v0, "StartOnDevicePersonalizationSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_6f
    const-string/jumbo v0, "StartProfilingCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "android.os.profiling.ProfilingService$Lifecycle"

    const-string v5, "/apex/com.android.profiling/javalib/service-profiling.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v6, :cond_70

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    :cond_70
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android.hardware.telephony"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    const-string/jumbo v0, "StartMmsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    move-object/from16 v3, v23

    move-object/from16 v23, v0

    goto/16 :goto_8d

    :cond_71
    move-object/from16 v3, v23

    move-object/from16 v23, v21

    :goto_8d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.autofill"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string/jumbo v0, "StartAutoFillService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_72
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.credentials"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string/jumbo v0, "credential_manager"

    const-string/jumbo v5, "enable_credential_manager"

    move-object/from16 v31, v3

    const/4 v3, 0x1

    invoke-static {v0, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string/jumbo v0, "StartCredentialManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_8e

    :cond_73
    const-string/jumbo v0, "SystemServer"

    const-string v3, "CredentialManager disabled."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e

    :cond_74
    move-object/from16 v31, v3

    :goto_8e
    const v0, 0x104034a

    invoke-static {v7, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_75

    const-string/jumbo v0, "StartTranslationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_8f

    :cond_75
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v3, "TranslationService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8f
    const-string/jumbo v0, "StartClipboardService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/clipboard/ClipboardService;

    const-string v5, "AppServiceManager"

    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    const-string/jumbo v5, "startTracingServiceProxy"

    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tracing/TracingServiceProxy;

    const-string/jumbo v5, "StartDynamicInstrumentationManager"

    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    const-string/jumbo v5, "MakeLockSettingsServiceReady"

    invoke-static {v0, v3, v2, v5}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    if-eqz v30, :cond_76

    :try_start_82
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_5b

    goto/16 :goto_90

    :catchall_5b
    move-exception v0

    const-string/jumbo v3, "making Lock Settings Service ready"

    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_76
    :goto_90
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartPersonaSystemready"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    :try_start_83
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_5c

    goto/16 :goto_91

    :catchall_5c
    move-exception v0

    const-string/jumbo v3, "making Persona Manager Service ready"

    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_91
    :try_start_84
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_5d

    goto/16 :goto_92

    :catchall_5d
    move-exception v0

    const-string/jumbo v3, "making KnoxMUMContainerPolicy Service ready"

    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_77
    :goto_92
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v3, "!@Boot_EBS_D: PHASE_LOCK_SETTINGS_READY"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x1e0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v8

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v30, v9

    const v9, 0x11101d7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-static {v0, v3, v5, v8}, Lcom/android/server/HsumBootUserInitializer;->createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;

    move-result-object v3

    if-eqz v3, :cond_78

    const-string v0, "HsumBootUserInitializer.init"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/android/server/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_78
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "CommunalProfileInitializer.init"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/CommunalProfileInitializer;

    invoke-direct {v0}, Lcom/android/server/CommunalProfileInitializer;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/server/CommunalProfileInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_93

    :cond_79
    const-string v0, "CommunalProfileInitializer.removeCommunalProfileIfPresent"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/CommunalProfileInitializer;->removeCommunalProfileIfPresent()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_93
    const-string/jumbo v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v5, "!@Boot_EBS_D: PHASE_SYSTEM_SERVICES_READY"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_85
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_5e

    goto/16 :goto_94

    :catchall_5e
    move-exception v0

    const-string/jumbo v5, "making Window Manager Service ready"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_94
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "RegisterLogMteState"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_86
    invoke-static {v7}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_5f

    goto/16 :goto_95

    :catchall_5f
    move-exception v0

    const-string/jumbo v5, "RegisterLogMteState"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_95
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-class v5, Lcom/android/server/SystemService;

    monitor-enter v5

    :try_start_87
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-eqz v0, :cond_7a

    iget-object v8, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    sput-object v21, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    goto/16 :goto_96

    :catchall_60
    move-exception v0

    goto/16 :goto_a4

    :cond_7a
    :goto_96
    monitor-exit v5
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_60

    if-eqz v6, :cond_7b

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showRescuePartyDialog()V

    :cond_7b
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v5

    if-eqz v5, :cond_7c

    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_7c
    const-string v0, "DualAppManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_88
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    if-eqz v0, :cond_7d

    invoke-static {}, Lcom/android/server/DualAppManagerService;->systemReady()V
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_61

    goto/16 :goto_97

    :catchall_61
    move-exception v0

    const-string/jumbo v5, "making DualAppManagerService ready"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7d
    :goto_97
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartPermissionPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/policy/PermissionPolicyService;

    const-string/jumbo v8, "MakePackageManagerServiceReady"

    invoke-static {v0, v5, v2, v8}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->packageWatchdogNoteBoot(Landroid/content/Context;)V

    const-string/jumbo v0, "MakeASKSManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService;->systemReady()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_89
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_62

    goto/16 :goto_98

    :catchall_62
    move-exception v0

    const-string/jumbo v5, "making Display Manager Service ready"

    invoke-static {v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_98
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    const-string/jumbo v0, "StartDeviceSpecificServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x10700d1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    const/4 v9, 0x0

    :goto_99
    if-ge v9, v8, :cond_7e

    move-object/from16 v21, v3

    aget-object v3, v5, v9

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v31, v4

    const-string/jumbo v4, "StartDeviceSpecificServices "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_8a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_63

    move-object/from16 v32, v5

    goto/16 :goto_9a

    :catchall_63
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v32, v5

    const-string/jumbo v5, "starting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const/16 v18, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v21

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    goto :goto_99

    :cond_7e
    move-object/from16 v21, v3

    move-object/from16 v31, v4

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v13, :cond_7f

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v3, "Not starting GameManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    :cond_7f
    const-string v0, "GameManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/app/GameManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_9b
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string/jumbo v0, "UwbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.uwb.UwbService"

    const-string v4, "/apex/com.android.uwb/javalib/service-uwb.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :try_start_8b
    const-string/jumbo v0, "SamsungUwbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.samsung.android.server.uwb.SamsungUwbService"

    const-string v4, "/system/framework/semuwb-service.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_64

    goto/16 :goto_9c

    :catchall_64
    move-exception v0

    const-string v3, "Failed to find class SamsungUwbService"

    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_80
    :goto_9c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingStackEnabled()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_81

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_81

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingCsEnabled()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_81
    const-string/jumbo v0, "RangingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.ranging.RangingService"

    const-string v4, "/apex/com.android.uwb/javalib/service-ranging.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_82
    const-string/jumbo v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v3, "!@Boot_EBS_D: PHASE_DEVICE_SPECIFIC_SERVICES_READY"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x208

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_83

    const-string/jumbo v0, "MdfService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_8c
    const-string/jumbo v0, "MdfService"

    new-instance v3, Lcom/android/server/MdfService;

    invoke-direct {v3, v7}, Lcom/android/server/MdfService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_65

    goto/16 :goto_9d

    :catchall_65
    move-exception v0

    const-string/jumbo v3, "SystemServer"

    const-string v4, "Failed to add MdfService"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9d
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_9e

    :cond_83
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v3, "MdfService is ready"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9e
    const-string/jumbo v0, "StartSafetyCenterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "AppSearchModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "IsolatedCompilationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_84
    const-string/jumbo v0, "StartMediaCommunicationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "AppCompatOverridesService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;

    const-string v4, "HealthConnectManagerService"

    invoke-static {v0, v3, v2, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.healthconnect.HealthConnectManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SemContinuityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/samsung/android/server/continuity/SemContinuityService;

    const-string/jumbo v4, "SemContextEngineService"

    invoke-static {v0, v3, v2, v4}, Lcom/android/server/SystemServer$$ExternalSyntheticOutline0;->m(Lcom/android/server/SystemServiceManager;Ljava/lang/Class;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;)V

    :try_start_8d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/samsung/android/server/contextengine/SemContextEngineService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_66

    goto/16 :goto_9f

    :catchall_66
    move-exception v0

    const-string/jumbo v3, "starting SemContextEngineService"

    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9f
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :try_start_8e
    const-string/jumbo v0, "SemHwrsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/samsung/android/server/hwrs/SemHwrsService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_67

    goto/16 :goto_a0

    :catchall_67
    move-exception v0

    const-string/jumbo v3, "SemHwrsService startService failed"

    invoke-static {v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android.software.device_lock"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    const-string v0, "DeviceLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.devicelock.DeviceLockService"

    const-string v4, "/apex/com.android.devicelock/javalib/service-devicelock.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_85
    const-string/jumbo v0, "StartSensitiveContentProtectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v3, "start samsung apex services"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SemPrivilegeManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v3, "com.android.server.privilege.SemPrivilegeManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v3, "finish samsung apex services"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.config.hardcoder.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    :try_start_8f
    const-string v0, "HardcoderService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/HardcoderService.jar"

    const-class v4, Lcom/android/server/SystemServer;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v3, "com.samsung.android.hardcoder.HardcoderService"

    invoke-virtual {v0, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/16 v19, 0x0

    aput-object v4, v3, v19

    const-class v4, Landroid/app/IActivityManager;

    const/16 v18, 0x1

    aput-object v4, v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    filled-new-array {v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HardcoderService"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "SystemServer"

    const-string v3, "HardcoderService loaded"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_68

    :goto_a1
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_a2

    :catchall_68
    move-exception v0

    :try_start_90
    const-string/jumbo v3, "SystemServer"

    const-string v4, "Failed to add HardcoderService."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_69

    goto :goto_a1

    :catchall_69
    move-exception v0

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0

    :cond_86
    :goto_a2
    const-string/jumbo v0, "connectivity"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/ConnectivityManager;

    move-object/from16 v18, v10

    move-object v10, v12

    move-object v12, v15

    iget-object v15, v1, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    move-object v4, v7

    move v7, v6

    move-object v6, v4

    move-object/from16 v34, v3

    move v5, v13

    move-object/from16 v13, v21

    move-object/from16 v17, v25

    move-object/from16 v21, v26

    move-object/from16 v19, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v9, v30

    move-object/from16 v33, v31

    invoke-direct/range {v0 .. v24}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/SemTelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V

    move-object/from16 v3, v34

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityManagerService;->systemReady(Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const-string/jumbo v0, "LockSettingsThirdPartyAppsStarted"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Lcom/android/internal/widget/LockSettingsInternal;->onThirdPartyAppsStarted()V

    :cond_87
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "StartSystemUI"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "SystemServer"

    const-string v1, "!@Boot_EBS_F: StartSystemUI"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v33

    :try_start_91
    invoke-static {v6, v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_6a

    goto/16 :goto_a3

    :catchall_6a
    move-exception v0

    const-string/jumbo v1, "starting System UI"

    invoke-static {v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :goto_a4
    :try_start_92
    monitor-exit v5
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_60

    throw v0

    :goto_a5
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0

    :catchall_6b
    move-exception v0

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0

    :catchall_6c
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-string/jumbo v2, "dexopt"

    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw v0

    :goto_a6
    :try_start_93
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0

    :catchall_6d
    move-exception v0

    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_6e

    :catchall_6e
    move-exception v0

    const-string/jumbo v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "System"

    const-string v2, "************ Failure starting core service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public final startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p0, "SystemServer"

    const-string/jumbo p1, "RotationResolverService is not configured on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p1, "StartRotationResolverService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    const v0, 0x1040348

    invoke-static {p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "SystemServer"

    const-string/jumbo p1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p1, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startTextToSpeechManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    const-string/jumbo v0, "StartTextToSpeechManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 1

    const-string/jumbo v0, "startWearableSensingService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method
