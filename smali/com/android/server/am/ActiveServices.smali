.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final sNumForegroundServices:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

.field public final mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppStateTracker:Lcom/android/server/AppStateTracker;

.field public mBindServiceSeqCounter:J

.field public mCachedDeviceProvisioningPackage:Ljava/lang/String;

.field public final mDestroyingServices:Ljava/util/ArrayList;

.field public final mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

.field public final mFgsAppOpCallbacks:Landroid/util/SparseArray;

.field public final mFgsDeferralEligible:Landroid/util/SparseLongArray;

.field public mFgsDeferralRateLimited:Z

.field public final mFgsDelegations:Landroid/util/ArrayMap;

.field public final mFgsObservers:Landroid/os/RemoteCallbackList;

.field public mLastAnrDump:Ljava/lang/String;

.field public final mLastAnrDumpClearer:Lcom/android/server/am/ActiveServices$1;

.field public mMaxStartingBackground:I

.field public final mPendingBringups:Landroid/util/ArrayMap;

.field public final mPendingFgsNotifications:Ljava/util/ArrayList;

.field public final mPendingServices:Ljava/util/ArrayList;

.field public final mPostDeferredFGSNotifications:Lcom/android/server/am/ActiveServices$1;

.field public final mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

.field public final mRestartingServices:Ljava/util/ArrayList;

.field public final mRevivalServicesMessages:Ljava/util/List;

.field public mScreenOn:Z

.field public final mServiceConnections:Landroid/util/ArrayMap;

.field public final mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

.field public final mServiceMap:Landroid/util/SparseArray;

.field public final mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

.field public final mTimeLimitedFgsInfo:Landroid/util/SparseArray;

.field public mTmpCollectionResults:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/ActiveServices;->sNumForegroundServices:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ActiveServices;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRevivalServicesMessages:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActiveServices;->mBindServiceSeqCounter:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;I)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Lcom/android/server/am/ActiveServices$1;

    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;I)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mPostDeferredFGSNotifications:Lcom/android/server/am/ActiveServices$1;

    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    :try_start_0
    const-string/jumbo v1, "ro.config.max_starting_bg"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x19

    :goto_1
    iput v1, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    const-string/jumbo v1, "platform_compat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    new-instance v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    invoke-direct {v1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    new-instance v2, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    new-instance v6, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {v6}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    iput-boolean v0, v6, Lcom/android/server/utils/AnrTimer$Args;->mFreeze:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v4, 0xc

    const-string/jumbo v5, "SERVICE_TIMEOUT"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;I)V

    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    new-instance v3, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v7, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {v7}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    const/16 v5, 0x4e

    const-string/jumbo v6, "SHORT_FGS_TIMEOUT"

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;I)V

    iput-object v3, p0, Lcom/android/server/am/ActiveServices;->mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    new-instance v4, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    new-instance v8, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {v8}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    iput-boolean v0, v8, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v6, 0x42

    const-string/jumbo v7, "SERVICE_FOREGROUND_TIMEOUT"

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices$ProcessAnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;I)V

    iput-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    return-void
.end method

.method public static generateAdditionalSeInfoFromService(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.service.voice.HotwordDetectionService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.service.voice.VisualQueryDetectionService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.service.wearable.WearableSensingService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "android.service.ondeviceintelligence.OnDeviceSandboxedInferenceService"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, ":isolatedComputeApp"

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getProcessNameForService(Landroid/content/pm/ServiceInfo;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 0

    if-eqz p4, :cond_0

    return-object p3

    :cond_0
    iget p4, p0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_3

    if-eqz p6, :cond_1

    iget-object p4, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object p6, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    const-string p0, ":ishared:"

    invoke-static {p2, p0, p3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public static isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p2

    :cond_1
    if-eqz p2, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 6

    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    iget-wide v1, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    iget-wide v1, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v2, v3, :cond_3

    iget v2, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_7

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v5, v4, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v5, :cond_5

    iget-object p0, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    iget p0, v4, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput p0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    return-object v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public static requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result v2

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    return-void
.end method

.method public static traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V
    .locals 3

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "(?)"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method

.method public static updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final appRestrictedAnyInBackground(ILjava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final applyForegroundServiceNotificationLocked(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .locals 4

    if-eqz p2, :cond_0

    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez p2, :cond_1

    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    :cond_1
    const/4 p5, 0x0

    move v0, p5

    :goto_0
    iget-object v1, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    iget-object v1, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v2, :cond_12

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, v2, :cond_12

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p1, Landroid/app/Notification;->flags:I

    iput-object p1, v1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p3, p3, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean p3, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    if-eqz p3, :cond_4

    iget-wide p3, v1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    cmp-long p3, p1, p3

    if-ltz p3, :cond_4

    goto :goto_2

    :cond_4
    iget-wide p3, v1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    cmp-long p3, p1, p3

    if-gez p3, :cond_5

    goto :goto_1

    :cond_5
    iget-object p3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p4, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    const-wide/16 v2, 0x0

    invoke-virtual {p4, p3, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p1, p1, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    const/16 p2, 0x1f

    if-eqz p1, :cond_7

    iget-object p1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p1, p2, :cond_7

    goto :goto_2

    :cond_7
    iget-boolean p1, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, v1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->isForegroundDisplayForceDeferred()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, v1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->shouldShowForegroundImmediately()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    iget p1, v1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    and-int/lit8 p1, p1, 0x36

    if-eqz p1, :cond_a

    :goto_2
    iput-boolean p5, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->SHOW_IMMEDIATELY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    iget-object p1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    :goto_3
    add-long/2addr p3, v2

    move v0, p5

    :goto_4
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    if-ne v2, v1, :cond_c

    goto/16 :goto_6

    :cond_c
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v3, :cond_d

    iget-wide v2, v2, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    :goto_5
    add-long/2addr v2, p3

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_10
    iput-wide p3, v1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    iput-boolean p1, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    iput-boolean p5, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p1, p2, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Deferring FGS notification in legacy app "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mPostDeferredFGSNotifications:Lcom/android/server/am/ActiveServices$1;

    invoke-virtual {p1, p0, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :goto_6
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    :cond_12
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_13
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0
.end method

.method public final attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 12

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    move-object v3, v0

    move v0, v2

    move v4, v0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v3, :cond_1

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v5, :cond_0

    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v3, v7

    goto/16 :goto_6

    :cond_0
    :goto_1
    move-object v6, p0

    move-object v8, p1

    goto :goto_3

    :cond_1
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v5, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v4, v5, v6, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v3, 0x40

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "realStartServiceLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_2
    :goto_2
    iget-boolean v10, v7, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v11, 0x0

    move-object v6, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v7, v2, v2}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v6, v7, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_3
    iget-object p0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    move v4, v1

    :goto_3
    add-int/2addr v0, v1

    move-object p0, v6

    move-object v3, v7

    move-object p1, v8

    goto/16 :goto_0

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_4
    :goto_5
    move-object v6, p0

    move-object v8, p1

    goto :goto_7

    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception in new application when starting service "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v3, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0

    :cond_5
    move v4, v2

    goto :goto_5

    :goto_7
    iget-object p0, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_9

    move p0, v2

    :goto_8
    iget-object p1, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_8

    iget-object p1, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eq v8, v0, :cond_6

    iget v0, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v3, :cond_7

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_9

    :cond_6
    iget-object p0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restarter:Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move p0, v1

    :cond_7
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    if-eqz p0, :cond_9

    iget-object p0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance p1, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v6}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return v4
.end method

.method public final bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;ZILjava/lang/String;Lcom/android/server/am/ApplicationThreadDeferred;Ljava/lang/String;I)I
    .locals 55

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v5, 0x8

    const/4 v6, 0x1

    const-string v7, "Failure sending service "

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    if-eqz v8, :cond_62

    const/4 v9, 0x0

    const/16 v21, 0x0

    if-eqz v2, :cond_4

    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v12, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-boolean v13, v12, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-nez v13, :cond_0

    goto :goto_2

    :cond_0
    monitor-enter v12

    :try_start_0
    iget-object v13, v12, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v13, :cond_1

    new-instance v13, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-direct {v13, v12}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v13, v12, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v13, v12, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    monitor-exit v12

    goto :goto_3

    :goto_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    move-object/from16 v13, v21

    :goto_3
    if-nez v13, :cond_3

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Binding with unknown activity: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3
    move-object/from16 v24, v13

    goto :goto_4

    :cond_4
    move-object/from16 v24, v21

    :goto_4
    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v13, 0x3e8

    if-ne v12, v13, :cond_5

    move v12, v6

    goto :goto_5

    :cond_5
    move v12, v9

    :goto_5
    if-eqz v12, :cond_8

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setDefusable(Z)V

    const-string/jumbo v14, "android.intent.extra.client_intent"

    invoke-virtual {v3, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    if-eqz v14, :cond_7

    const-string/jumbo v15, "android.intent.extra.client_label"

    invoke-virtual {v3, v15, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    :cond_6
    move-object/from16 v22, v14

    move/from16 v23, v15

    goto :goto_6

    :cond_7
    move/from16 v23, v9

    move-object/from16 v22, v14

    goto :goto_6

    :cond_8
    move/from16 v23, v9

    move-object/from16 v22, v21

    :goto_6
    const-wide/32 v14, 0x8000000

    and-long v14, p6, v14

    const-wide/16 v37, 0x0

    cmp-long v14, v14, v37

    if-eqz v14, :cond_9

    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v15, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string v4, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v14, v15, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-wide/32 v14, 0x80000

    and-long v14, p6, v14

    cmp-long v4, v14, v37

    if-eqz v4, :cond_b

    if-eqz v12, :cond_a

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Non-system caller (pid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_SCHEDULE_LIKE_TOP_APP when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_7
    const-wide/32 v14, 0x1000000

    and-long v14, p6, v14

    cmp-long v4, v14, v37

    if-eqz v4, :cond_d

    if-eqz v12, :cond_c

    goto :goto_8

    :cond_c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Non-system caller "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_8
    const-wide/32 v14, 0x400000

    and-long v14, p6, v14

    cmp-long v4, v14, v37

    if-eqz v4, :cond_f

    if-eqz v12, :cond_e

    goto :goto_9

    :cond_e
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Non-system caller "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") set BIND_ALLOW_INSTANT when binding service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_9
    const-wide/32 v14, 0x10000

    and-long v14, p6, v14

    cmp-long v14, v14, v37

    if-eqz v14, :cond_11

    if-eqz v12, :cond_10

    goto :goto_a

    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Non-system caller (pid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_ALMOST_PERCEPTIBLE when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_a
    const-wide/32 v14, 0x100000

    and-long v14, p6, v14

    cmp-long v12, v14, v37

    if-eqz v12, :cond_12

    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v14, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const-string v15, "BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS"

    invoke-virtual {v12, v14, v15}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-wide/32 v14, 0x40000

    and-long v14, p6, v14

    cmp-long v12, v14, v37

    if-eqz v12, :cond_13

    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v14, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    const-string v15, "BIND_ALLOW_FOREGROUND_SERVICE_STARTS_FROM_BACKGROUND"

    invoke-virtual {v12, v14, v15}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v12, v12, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    if-lez v12, :cond_14

    move v14, v6

    goto :goto_b

    :cond_14
    move v14, v9

    :goto_b
    const/high16 v12, -0x80000000

    invoke-static {v12}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v17

    and-long v17, p6, v17

    cmp-long v12, v17, v37

    if-nez v12, :cond_16

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    and-long v17, p6, v17

    cmp-long v12, v17, v37

    if-eqz v12, :cond_15

    goto :goto_c

    :cond_15
    move v15, v9

    goto :goto_d

    :cond_16
    :goto_c
    move v15, v6

    :goto_d
    if-eqz v4, :cond_17

    move/from16 v16, v6

    :goto_e
    const/4 v4, 0x4

    goto :goto_f

    :cond_17
    move/from16 v16, v9

    goto :goto_e

    :goto_f
    const-wide/16 v17, 0x2000

    and-long v17, p6, v17

    cmp-long v12, v17, v37

    if-eqz v12, :cond_18

    move/from16 v18, v6

    goto :goto_10

    :cond_18
    move/from16 v18, v9

    :goto_10
    const-wide/16 v19, 0x4000

    and-long v19, p6, v19

    cmp-long v12, v19, v37

    if-eqz v12, :cond_19

    move/from16 v19, v6

    goto :goto_11

    :cond_19
    move/from16 v19, v9

    :goto_11
    const-wide v25, 0x200000000L

    and-long v25, p6, v25

    cmp-long v12, v25, v37

    if-eqz v12, :cond_1a

    move/from16 v20, v6

    goto :goto_12

    :cond_1a
    move/from16 v20, v9

    :goto_12
    if-lez p10, :cond_1b

    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v13, p12

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    goto :goto_13

    :cond_1b
    move-object/from16 v13, p12

    move-object/from16 v12, v21

    :goto_13
    const/4 v13, 0x1

    const/16 v25, 0x3e8

    const/16 v17, 0x0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object v2, v1

    move/from16 p3, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move v1, v9

    move-object/from16 v41, v12

    move-object/from16 v8, p4

    move/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v9, p13

    move/from16 v12, p14

    invoke-virtual/range {v2 .. v20}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v13

    move-object v5, v3

    move v3, v10

    move v4, v11

    move v7, v14

    if-nez v13, :cond_1c

    move/from16 v43, v1

    goto/16 :goto_20

    :cond_1c
    iget-object v15, v13, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    const/4 v6, -0x1

    if-nez v15, :cond_1d

    return v6

    :cond_1d
    sget-boolean v8, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v8, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v8, v15}, Lcom/android/server/am/FreecessController;->shouldDelayService(Lcom/android/server/am/ServiceRecord;)Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_1f

    iget v8, v15, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v8}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v8

    iget-boolean v10, v15, Lcom/android/server/am/ServiceRecord;->delayService:Z

    if-eqz v10, :cond_20

    iget v0, v15, Lcom/android/server/am/ServiceRecord;->delayCount:I

    if-ge v0, v9, :cond_1e

    add-int/lit8 v0, v0, 0x1

    iput v0, v15, Lcom/android/server/am/ServiceRecord;->delayCount:I

    return v1

    :cond_1e
    iput-boolean v1, v15, Lcom/android/server/am/ServiceRecord;->delayService:Z

    iget-object v0, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayServiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1f
    :goto_14
    move/from16 v43, v1

    move-object v0, v5

    move-object v1, v15

    move/from16 v5, p3

    goto :goto_15

    :cond_20
    iget-boolean v10, v15, Lcom/android/server/am/ServiceRecord;->delayServiceStop:Z

    if-eqz v10, :cond_21

    iput-boolean v1, v15, Lcom/android/server/am/ServiceRecord;->delayServiceStop:Z

    goto :goto_14

    :cond_21
    iget-object v10, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->isNowAppLaunching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-object v2, v15, Lcom/android/server/am/ServiceRecord;->pendingBinds:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$BindItem;

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object v3, v5

    move-object/from16 v44, v8

    move-object/from16 v16, v15

    move-object/from16 v5, p5

    move-object/from16 v8, p8

    move-object v15, v2

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v14}, Lcom/android/server/am/ServiceRecord$BindItem;-><init>(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;ZILjava/lang/String;Lcom/android/server/am/ApplicationThreadDeferred;Ljava/lang/String;I)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/am/ServiceRecord;->delayService:Z

    iput-boolean v5, v1, Lcom/android/server/am/ServiceRecord;->serviceDelayed:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x1f4

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->delayTimeout:J

    iput v5, v1, Lcom/android/server/am/ServiceRecord;->delayCount:I

    move-object/from16 v0, v44

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayServiceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/16 v43, 0x0

    return v43

    :goto_15
    new-instance v8, Landroid/content/Intent$FilterComparison;

    invoke-direct {v8, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget-object v10, v1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/IntentBindRecord;

    if-nez v10, :cond_22

    new-instance v10, Lcom/android/server/am/IntentBindRecord;

    invoke-direct {v10, v1, v8}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    iget-object v11, v1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v8, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    move-object/from16 v11, v40

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBindRecord;

    if-eqz v8, :cond_23

    goto :goto_16

    :cond_23
    new-instance v8, Lcom/android/server/am/AppBindRecord;

    move-object/from16 v12, v41

    invoke-direct {v8, v1, v10, v11, v12}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    iget-object v10, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v11, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    iget-object v10, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v12, v10, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v12

    iget-object v14, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v14, v14, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    if-lt v12, v14, :cond_24

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bindService exceeded max service connection number per process, callerApp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v43

    :cond_24
    iget-object v12, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v12

    :try_start_1
    iget-object v14, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v14, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v14, :cond_25

    iget-object v12, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v54, v12

    move-object v12, v8

    move-object/from16 v8, v54

    goto :goto_17

    :cond_25
    move-object v12, v8

    move-object/from16 v8, p13

    :goto_17
    if-eqz v14, :cond_26

    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v15, :cond_26

    iget-boolean v15, v14, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v15, :cond_26

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v14, v14, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    goto :goto_18

    :cond_26
    move v14, v6

    :goto_18
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->updateProcessStateOnRequest()V

    sget-boolean v15, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v15, :cond_2d

    iget-object v15, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_27

    iget-object v5, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v15, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v6, v11, Lcom/android/server/am/ProcessRecord;->mPid:I

    move/from16 v35, v6

    :goto_19
    move/from16 v28, v15

    goto :goto_1a

    :cond_27
    move-object/from16 v5, v21

    move/from16 v35, v43

    goto :goto_19

    :goto_1a
    iget-object v6, v11, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v34, v6

    goto :goto_1b

    :cond_28
    move-object/from16 v34, v21

    :goto_1b
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const-string/jumbo v15, "android.permission.BIND_JOB_SERVICE"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    iget v6, v1, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    const/16 v15, 0x3e8

    if-ne v6, v15, :cond_29

    const-string/jumbo v6, "job"

    goto :goto_1c

    :cond_29
    const-string/jumbo v6, "unknown"

    :goto_1c
    const-string/jumbo v15, "job"

    if-ne v6, v15, :cond_2a

    const-string/jumbo v6, "job"

    :goto_1d
    move-object/from16 v29, v6

    goto :goto_1e

    :cond_2a
    const-string/jumbo v6, "bindService"

    goto :goto_1d

    :goto_1e
    sget-object v6, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v15, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v30, v0

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v6, v0, v15, v9, v5}, Lcom/android/server/am/MARsPolicyManager;->onSpecialBindServiceActions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v25, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v6, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_2b

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->mPid:I

    move/from16 v36, v9

    goto :goto_1f

    :cond_2b
    move/from16 v36, v6

    :goto_1f
    const/16 v33, 0x0

    const/16 v32, 0x0

    move-object/from16 v26, v0

    move-object/from16 v27, v5

    move/from16 v31, v6

    invoke-virtual/range {v25 .. v36}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    move-object/from16 v5, v30

    if-eqz v0, :cond_2c

    :goto_20
    return v43

    :cond_2c
    :goto_21
    move-object v0, v13

    goto :goto_22

    :cond_2d
    move-object v5, v0

    goto :goto_21

    :goto_22
    sget-object v13, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    move-object/from16 v30, v5

    const/4 v5, 0x0

    move-object v6, v10

    const/4 v10, 0x0

    move v9, v14

    const/4 v14, 0x1

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    move-object/from16 v15, p5

    move-object/from16 v46, v6

    move-object/from16 v45, v11

    move/from16 v28, v23

    const/16 v17, 0x3

    move v6, v4

    move v11, v7

    move-object/from16 v23, v12

    move-object/from16 v4, p13

    move/from16 v12, p14

    move v7, v3

    move-object/from16 v3, v30

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ActiveServices;->deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZZILandroid/app/BackgroundStartPrivileges;ZLandroid/app/IServiceConnection;)Z

    move-result v14

    move v4, v11

    move v11, v7

    move v7, v4

    move v4, v6

    if-nez v14, :cond_2e

    move v5, v4

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v10, p5

    move/from16 v8, p14

    move-object v6, v3

    move-object/from16 v3, p13

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v4

    move v9, v5

    move-object v12, v6

    move v10, v8

    if-nez v4, :cond_2f

    const/4 v6, 0x1

    goto :goto_23

    :cond_2e
    move-object/from16 v1, p0

    move/from16 v10, p14

    move-object v12, v3

    move v9, v4

    :cond_2f
    const/4 v6, 0x0

    :goto_23
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    move-object/from16 v15, v45

    :try_start_2
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v4, "bind service"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(ILcom/android/server/am/ServiceRecord;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x1

    and-long v3, p6, v3

    cmp-long v3, v3, v37

    if-eqz v3, :cond_32

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    move/from16 p1, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v5, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v4

    if-eqz v4, :cond_30

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    move/from16 p4, v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    goto :goto_24

    :catchall_1
    move-exception v0

    goto :goto_25

    :cond_30
    move/from16 p4, v7

    const/4 v8, 0x1

    :goto_24
    monitor-exit v3

    goto :goto_27

    :goto_25
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :catchall_2
    move-exception v0

    goto/16 :goto_46

    :cond_31
    :goto_26
    move/from16 p4, v7

    const/4 v8, 0x1

    goto :goto_27

    :cond_32
    move/from16 p1, v6

    goto :goto_26

    :goto_27
    const-wide/32 v3, 0x200000

    and-long v3, p6, v3

    cmp-long v3, v3, v37

    if-eqz v3, :cond_33

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureAllowedAssociations()V

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mAllowedAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_33

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAllowedAssociations:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;-><init>(Landroid/util/ArraySet;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_33
    const/4 v7, 0x0

    :goto_28
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v16

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v3

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    move-object/from16 v52, v3

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v53, v3

    move-object/from16 v47, v4

    move/from16 v48, v5

    move-object/from16 v49, v6

    move/from16 v50, v7

    move/from16 v51, v8

    invoke-virtual/range {v47 .. v53}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IILandroid/content/ComponentName;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v3, v4, v12, v5, v6}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    move-object/from16 v29, v22

    new-instance v22, Lcom/android/server/am/ConnectionRecord;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    move-object/from16 v25, p5

    move-wide/from16 v26, p6

    move-object/from16 v32, p13

    move/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v33, v5

    invoke-direct/range {v22 .. v33}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;JILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcom/android/server/am/ServiceRecord;->addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V

    iget-object v7, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_36

    iget-object v7, v3, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-boolean v8, v3, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    if-eqz v8, :cond_34

    monitor-exit v7

    goto :goto_2a

    :catchall_3
    move-exception v0

    goto :goto_29

    :cond_34
    iget-object v8, v3, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    if-nez v8, :cond_35

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    iput-object v8, v3, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    :cond_35
    iget-object v3, v3, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    goto :goto_2a

    :goto_29
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v0

    :cond_36
    :goto_2a
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, v46

    iget-object v7, v3, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v7, v4, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_38

    iget-object v8, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    if-eqz v8, :cond_38

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v8, v7, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-nez v8, :cond_37

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    iput-object v8, v7, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    :cond_37
    iget-object v7, v7, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_38
    invoke-virtual {v5}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    iget-object v7, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v7, v8, :cond_39

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v8

    if-eqz v8, :cond_3a

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    goto :goto_2b

    :cond_39
    const/16 v7, 0x8

    :cond_3a
    :goto_2b
    const/high16 v3, 0x1000000

    invoke-virtual {v5, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    goto :goto_2c

    :cond_3b
    const/4 v8, 0x1

    :goto_2c
    const/high16 v3, 0x100000

    invoke-virtual {v5, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_3c

    goto :goto_2d

    :cond_3c
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v8

    if-eqz v8, :cond_3d

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8, v2, v3}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    goto :goto_2d

    :cond_3d
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    :cond_3e
    :goto_2d
    const v3, 0x8000

    invoke-virtual {v5, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->isNotAppComponentUsage:Z

    :cond_3f
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x2

    if-eqz v3, :cond_40

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz v3, :cond_40

    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-gt v3, v8, :cond_40

    const/high16 v3, 0x10000

    invoke-virtual {v5, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    move/from16 v42, v7

    move/from16 p2, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v7, v2, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    goto :goto_2e

    :cond_40
    move/from16 v42, v7

    move/from16 p2, v8

    :goto_2e
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_41

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/4 v8, 0x1

    invoke-virtual {v1, v3, v5, v8}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)V

    :cond_41
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_42

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v3, v3, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_43

    move-object/from16 v3, v21

    goto :goto_2f

    :cond_43
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3, v7, v6}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    :goto_2f
    if-eqz v3, :cond_44

    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v6, v3, v5}, Lcom/android/server/am/ActiveServices;->getServiceBindingOomAdjPolicyForAddLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)I

    move-result v6

    move v8, v6

    goto :goto_30

    :cond_44
    const/4 v8, 0x0

    :goto_30
    if-nez v14, :cond_45

    if-nez p1, :cond_45

    and-int/lit8 v6, v8, 0x8

    if-eqz v6, :cond_45

    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->isFreezable()Z

    move-result v6

    if-eqz v6, :cond_45

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    const/16 v7, 0x3e9

    move-object/from16 p6, v3

    move/from16 p8, v9

    const/4 v3, 0x1

    const/4 v9, 0x4

    invoke-virtual {v6, v15, v9, v3, v7}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZI)V

    goto :goto_31

    :cond_45
    move-object/from16 p6, v3

    move/from16 p8, v9

    const/4 v9, 0x4

    :goto_31
    if-nez p6, :cond_46

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v3

    move/from16 v19, v3

    goto :goto_32

    :cond_46
    const/16 v19, 0x0

    :goto_32
    if-nez p6, :cond_47

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v3

    move/from16 v25, v3

    :goto_33
    const/4 v3, 0x1

    goto :goto_34

    :cond_47
    const/16 v25, 0x0

    goto :goto_33

    :goto_34
    invoke-virtual {v5, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_4a

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v6, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v3, 0x1

    and-int/lit8 v6, v8, 0x1

    if-nez v6, :cond_48

    move/from16 v20, v3

    move/from16 v47, v20

    goto :goto_35

    :cond_48
    move/from16 v47, v3

    const/16 v20, 0x0

    :goto_35
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v3

    move-object/from16 v22, v5

    const/4 v5, 0x0

    move/from16 v6, p1

    move/from16 p1, v11

    move v7, v14

    move-object/from16 v11, v22

    const/16 v43, 0x0

    move-object v14, v4

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZI)Ljava/lang/String;

    move-result-object v3

    move/from16 v28, v4

    move/from16 v29, v8

    if-eqz v3, :cond_49

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v43

    :cond_49
    :goto_36
    move v4, v9

    goto :goto_37

    :cond_4a
    move/from16 v28, p4

    move-object v14, v4

    move/from16 v29, v8

    move/from16 p1, v11

    const/16 v43, 0x0

    move-object v11, v5

    move/from16 v20, v43

    goto :goto_36

    :goto_37
    const/4 v9, 0x0

    const/4 v8, 0x1

    move/from16 v3, p1

    move-object v6, v2

    move-object v5, v12

    move-object v7, v13

    move-object/from16 v2, p13

    move v12, v4

    move/from16 v4, p8

    :try_start_7
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V

    move-object v3, v5

    move-object v2, v6

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_50

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/high16 v6, 0x8000000

    invoke-virtual {v11, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    goto :goto_38

    :cond_4b
    const/4 v8, 0x1

    :goto_38
    iget-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v7, :cond_4c

    iput-boolean v8, v5, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    :cond_4c
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v13

    if-eqz v13, :cond_4e

    iget-boolean v5, v5, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-nez v5, :cond_4d

    goto :goto_39

    :cond_4d
    const/4 v13, 0x2

    goto :goto_3a

    :cond_4e
    :goto_39
    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v13, 0x2

    if-gt v5, v13, :cond_4f

    invoke-virtual {v11, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_4f

    :goto_3a
    move v6, v8

    goto :goto_3b

    :cond_4f
    move/from16 v6, v43

    :goto_3b
    iget-object v5, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v9, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v5

    if-nez v5, :cond_51

    and-int/lit8 v5, v29, 0x4

    if-nez v5, :cond_51

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    move v6, v8

    goto :goto_3c

    :cond_50
    const/4 v8, 0x1

    const/4 v13, 0x2

    :cond_51
    move/from16 v6, v20

    :goto_3c
    if-eqz v6, :cond_52

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v12}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_52
    if-eqz v19, :cond_53

    move/from16 v20, v13

    goto :goto_3d

    :cond_53
    move/from16 v20, v8

    :goto_3d
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_54

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_54

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    if-eq v5, v6, :cond_54

    add-int/2addr v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_54
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_58

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v5, :cond_55

    goto :goto_3f

    :cond_55
    if-nez v18, :cond_57

    if-nez v16, :cond_56

    goto :goto_3e

    :cond_56
    move/from16 v17, v8

    goto :goto_3f

    :cond_57
    :goto_3e
    move/from16 v17, v13

    :cond_58
    :goto_3f
    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActiveServices;->getShortProcessNameForStats(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v5, :cond_59

    invoke-virtual {v5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v21

    :cond_59
    move-object/from16 v19, v21

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget v9, v2, Lcom/android/server/am/ServiceRecord;->mProcessStateOnRequest:I

    move-object/from16 v40, v15

    const/4 v15, 0x2

    const/16 v16, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v22, v11

    const/16 v11, 0x1dc

    move-object/from16 v13, v22

    move-object/from16 v22, v6

    move-object v6, v13

    move v13, v4

    move-object/from16 v21, v5

    move/from16 v23, v7

    move/from16 v24, v9

    move-object v4, v14

    move/from16 v5, v43

    move-object v14, v3

    move-object/from16 v3, v40

    invoke-static/range {v11 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IZILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIZJ)V

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v7, :cond_5c

    :try_start_8
    iget-object v7, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v9, v7, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-eqz v9, :cond_5c

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_5a

    goto :goto_40

    :cond_5a
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_40
    :try_start_9
    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    move-object/from16 v15, p5

    invoke-interface {v15, v0, v7, v5}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_41

    :catch_0
    move-exception v0

    :try_start_a
    const-string v7, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v11, v39

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to connection "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " (in "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_41
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v8, :cond_5b

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v4, :cond_5b

    const/4 v4, 0x1

    move-object/from16 p3, v0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move/from16 p5, v4

    move/from16 p4, v28

    move/from16 p6, v29

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZI)Z

    goto :goto_42

    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_46

    :cond_5b
    :goto_42
    move-object/from16 v1, p0

    goto :goto_43

    :cond_5c
    move/from16 v7, v28

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v1, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v1, :cond_5b

    const/4 v1, 0x0

    move-object/from16 p1, p0

    move-object/from16 p3, v0

    move/from16 p5, v1

    move-object/from16 p2, v2

    move/from16 p4, v7

    move/from16 p6, v29

    :try_start_b
    invoke-virtual/range {p1 .. p6}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZI)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v1, p1

    goto :goto_43

    :catchall_5
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_46

    :goto_43
    :try_start_c
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    goto :goto_44

    :cond_5d
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, v10, :cond_5f

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4, v0, v10}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_44

    :cond_5e
    const/16 v0, 0x97

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    filled-new-array/range {p13 .. p13}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    :cond_5f
    :goto_44
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_60

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_45

    :cond_60
    move-object/from16 v0, p13

    :goto_45
    if-eqz v0, :cond_61

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget v2, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v3, 0x4b

    invoke-virtual {v1, v3, v2, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_61
    return v8

    :goto_46
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_6
    move-exception v0

    :try_start_d
    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v0

    :cond_62
    move-object v1, v0

    move v7, v10

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to find app for caller "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when binding service "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZZI)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_3

    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_0
    if-ltz p3, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v9, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZILandroid/util/ArrayMap;)Z

    move-result v1

    or-int/2addr v2, v1

    if-nez p6, :cond_1

    if-eqz v2, :cond_1

    return v0

    :cond_1
    if-eqz p6, :cond_2

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget v1, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v1, :cond_4

    iget-object v9, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZILandroid/util/ArrayMap;)Z

    move-result v2

    :cond_4
    if-eqz p6, :cond_5

    if-nez p2, :cond_5

    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(ILjava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    :goto_1
    if-ltz p2, :cond_6

    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-lez p1, :cond_7

    const/16 p1, 0x16

    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_7
    if-eqz p5, :cond_8

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance p3, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;

    const/4 p4, 0x2

    invoke-direct {p3, p4, p1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    const-wide/16 p4, 0xfa

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_9
    return v2
.end method

.method public final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-void
.end method

.method public final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 21

    move-object/from16 v2, p1

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Short FGS brought down without stopping: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_0
    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    move v3, v0

    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-ltz v3, :cond_3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_2

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    iput-boolean v9, v0, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    invoke-virtual {v0}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    iget-object v5, v0, Lcom/android/server/am/ConnectionRecord;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    :goto_2
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v0, v5, v10, v9}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failure disconnecting service "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    iget-object v7, v7, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v7}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    iget-object v7, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v0

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x5

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v9

    move v6, v0

    move v0, v1

    :goto_4
    if-ltz v0, :cond_7

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/am/IntentBindRecord;

    iget-boolean v1, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v1, :cond_6

    :try_start_1
    const-string/jumbo v4, "bring down unbind"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v6, :cond_4

    move v5, v11

    goto :goto_5

    :cond_4
    move v5, v12

    :goto_5
    const/4 v3, 0x0

    move-object/from16 v1, p0

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    or-int/2addr v3, v6

    :try_start_3
    iput-boolean v11, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v11, v7, Lcom/android/server/am/IntentBindRecord;->requested:Z

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v4, v4, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v12, v5}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_5
    :goto_6
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iget-object v5, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/app/IApplicationThread$Delegator;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v6, v3

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_7
    move v3, v6

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_7

    :goto_8
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception when unbinding service "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    move v13, v3

    goto :goto_a

    :cond_6
    move-object/from16 v1, p0

    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    move-object/from16 v1, p0

    move v13, v6

    goto :goto_a

    :cond_8
    move-object/from16 v1, p0

    move v13, v0

    :goto_a
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_a

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bringing down service while still waiting for start foreground: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    iput-boolean v11, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v11, v4, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_9
    :goto_b
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v4

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v5, 0x4c

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v0, v2}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v3, 0x45

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    :goto_c
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_a
    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v14

    iget-object v0, v14, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_c

    if-eq v0, v2, :cond_c

    iget-object v3, v14, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v3, :cond_b

    goto :goto_e

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bringing down "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but actually running "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_e
    iget-object v0, v14, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "bring down"

    invoke-virtual {v1, v11, v2, v0, v9}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(ILcom/android/server/am/ServiceRecord;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_f
    if-ltz v0, :cond_e

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_d

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_e
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v1, v14, v2}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v11, v5, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_10

    :catchall_1
    move-exception v0

    goto :goto_12

    :cond_f
    :goto_10
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v15}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v16

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v17, 0x4c

    move/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    iget-wide v5, v2, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_10

    sub-long/2addr v3, v5

    long-to-int v3, v3

    move v4, v3

    goto :goto_11

    :cond_10
    move v4, v11

    :goto_11
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v4

    :try_start_7
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v2}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceStop(ILcom/android/server/am/ServiceRecord;)V

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v3, v5, v4, v11}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(ILandroid/content/ComponentName;Z)V

    goto :goto_13

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :goto_12
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :cond_11
    :goto_13
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v11, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v11, v2, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V

    iput v11, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iput-object v10, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-static {v2}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    if-eqz v0, :cond_12

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_12
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_14
    if-ltz v0, :cond_14

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v4, :cond_13

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6, v10, v10}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(IILcom/android/server/uri/GrantUri;Ljava/lang/String;)V

    iput-object v10, v3, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_14
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v14, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v0, v11}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    if-eqz v0, :cond_18

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object v0, v0, Lcom/android/server/am/ForegroundServiceDelegation;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v3, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_15
    if-ltz v0, :cond_17

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_16

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_16

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_17
    :goto_16
    move v6, v13

    goto :goto_19

    :cond_18
    :try_start_a
    const-string/jumbo v4, "destroy"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    if-eqz v13, :cond_19

    move v5, v11

    goto :goto_17

    :cond_19
    move v5, v12

    :goto_17
    const/4 v3, 0x0

    move v6, v13

    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    or-int v13, v6, v0

    :try_start_c
    iput-boolean v9, v2, Lcom/android/server/am/ServiceRecord;->destroying:Z

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {v0, v2}, Landroid/app/IApplicationThread$Delegator;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_1a

    :catch_4
    move-exception v0

    goto :goto_18

    :catch_5
    move-exception v0

    move v13, v6

    goto :goto_18

    :catch_6
    move-exception v0

    move v6, v13

    :goto_18
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception when destroying service "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_1a

    :goto_19
    move v13, v6

    :goto_1a
    if-nez v13, :cond_1a

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    if-nez p2, :cond_1a

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_1a
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :cond_1b
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->restarter:Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v0, :cond_1c

    iput-object v10, v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    :cond_1c
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v4, :cond_1d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v6, v11, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v6, v11, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    iget v0, v2, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v0, :cond_1d

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v0, v2, v11}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    iput-object v10, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_1b

    :catchall_3
    move-exception v0

    goto :goto_1c

    :cond_1d
    :goto_1b
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-virtual {v14, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices;->updateNumForegroundServicesLocked()V

    return-void

    :goto_1c
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0
.end method

.method public final bringUpServiceInnerLocked(Lcom/android/server/am/ServiceRecord;IZZZZI)Ljava/lang/String;
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v7, "Exception when starting service "

    const-string/jumbo v3, "realStartServiceLocked: "

    const-string v8, "Exception when starting service "

    const-string/jumbo v4, "realStartServiceLocked: "

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    move/from16 v5, p3

    invoke-virtual {v1, v2, v5, v9}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    return-object v10

    :cond_0
    move/from16 v5, p3

    if-nez p4, :cond_1

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v16, v10

    goto/16 :goto_15

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_2
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_3

    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v9, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v6, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v6}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    const/4 v13, 0x1

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to launch app "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is stopped"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2, v13}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-object v0

    :cond_4
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isNotAppComponentUsage:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    const/16 v15, 0x1f

    invoke-virtual {v0, v14, v15, v6}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V

    :cond_5
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v10

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v14, v6, v15, v10}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v16, v10

    :goto_0
    const-string v6, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "Failed trying to unstop package "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    goto :goto_2

    :cond_6
    move-object/from16 v0, v16

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    :cond_7
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v6, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    move/from16 v25, v13

    goto :goto_3

    :cond_8
    move/from16 v25, v9

    :goto_3
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    new-instance v17, Lcom/android/server/am/HostingRecord;

    const-string/jumbo v18, "service"

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v15, v2, Lcom/android/server/am/ServiceRecord;->definingUid:I

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const-string/jumbo v13, "android.permission.BIND_JOB_SERVICE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, v2, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    const/16 v13, 0x3e8

    if-ne v9, v13, :cond_9

    const-string/jumbo v9, "job"

    :goto_4
    move-object/from16 v22, v9

    goto :goto_5

    :cond_9
    const-string/jumbo v9, "unknown"

    goto :goto_4

    :goto_5
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v21, v0

    move-object/from16 v20, v14

    move/from16 v23, v15

    invoke-direct/range {v17 .. v23}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 v13, 0x40

    if-nez v25, :cond_c

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v3, v10}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v6

    if-eqz v6, :cond_b

    :try_start_2
    invoke-static {v13, v14}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v14, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-wide/from16 v18, v13

    goto :goto_9

    :catch_2
    move-exception v0

    move-wide/from16 v18, v13

    goto :goto_7

    :catch_3
    move-exception v0

    move-wide/from16 v18, v13

    goto :goto_8

    :cond_a
    :goto_6
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/TransactionTooLargeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v18, v13

    :try_start_3
    iget-wide v13, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v6, v13, v14, v4}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    move/from16 v6, p7

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ZI)V
    :try_end_3
    .catch Landroid/os/TransactionTooLargeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v16

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :goto_7
    :try_start_4
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_a

    :goto_8
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_9
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_b
    :goto_a
    move-object/from16 v31, v17

    goto/16 :goto_f

    :cond_c
    move-wide/from16 v18, v13

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->inSharedIsolatedProcess:Z

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v10, v4}, Lcom/android/server/am/ProcessList;->getSharedIsolatedProcess(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-boolean v0, v4, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v0, :cond_f

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v5

    if-eqz v5, :cond_e

    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v5, v18

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/TransactionTooLargeException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    const-wide/16 v18, 0x40

    goto :goto_e

    :catch_6
    move-exception v0

    move-object v3, v4

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_d

    :cond_d
    :goto_b
    const/4 v6, 0x0

    move/from16 v5, p3

    move-object v3, v4

    move-object v4, v0

    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ZI)V
    :try_end_7
    .catch Landroid/os/TransactionTooLargeException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-wide/16 v18, 0x40

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v16

    :catch_8
    move-exception v0

    :goto_c
    :try_start_8
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const-wide/16 v18, 0x40

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_a

    :goto_d
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_e
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_e
    move-object v3, v4

    goto :goto_a

    :cond_f
    move-object/from16 v3, v16

    goto :goto_a

    :cond_10
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    invoke-static {}, Landroid/webkit/WebViewZygote;->isMultiprocessEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/webkit/WebViewZygote;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ServiceRecord;->definingUid:I

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    new-instance v26, Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v35, "unknown"

    const-string v27, ""

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v29, 0x1

    move-object/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v33, v6

    invoke-direct/range {v26 .. v35}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v26

    :cond_11
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_b

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ServiceRecord;->definingUid:I

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    new-instance v26, Lcom/android/server/am/HostingRecord;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v35, "unknown"

    const-string v27, ""

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v29, 0x2

    move-object/from16 v33, v0

    move-object/from16 v30, v5

    move/from16 v31, v6

    invoke-direct/range {v26 .. v35}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v31, v26

    :goto_f
    if-nez v3, :cond_17

    if-nez p5, :cond_17

    if-nez p6, :cond_17

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    if-eqz v0, :cond_12

    iget v0, v2, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppUid:I

    invoke-static {v0}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v37

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v43, 0x0

    const/16 v44, -0x1

    const/16 v29, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move/from16 v30, p2

    move-object/from16 v26, v0

    move-object/from16 v28, v3

    move-object/from16 v38, v4

    move-object/from16 v27, v10

    invoke-virtual/range {v26 .. v44}, Lcom/android/server/am/ProcessList;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;ZI)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_10

    :cond_12
    move-object/from16 v27, v10

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v24, 0x0

    const/16 v20, 0x1

    const/16 v23, 0x0

    move/from16 v21, p2

    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v18, v27

    move-object/from16 v22, v31

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    :goto_10
    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to launch app "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": process is bad"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-object v0

    :cond_13
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    iget-object v4, v3, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_a
    iget-boolean v5, v3, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v5, :cond_14

    monitor-exit v4

    goto :goto_12

    :catchall_3
    move-exception v0

    goto :goto_13

    :cond_14
    new-instance v5, Landroid/app/ApplicationStartInfo;

    invoke-virtual {v3}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    invoke-static {v5, v0}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    invoke-virtual {v5, v6, v11, v12}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v6, :cond_15

    const-string/jumbo v7, "android.permission.BIND_JOB_SERVICE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x5

    goto :goto_11

    :cond_15
    const/16 v6, 0xa

    :goto_11
    invoke-virtual {v5, v6}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    :cond_16
    invoke-virtual {v3, v5}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_12
    if-eqz v25, :cond_17

    iput-object v0, v2, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_14

    :goto_13
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :cond_17
    :goto_14
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_18

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    int-to-long v8, v0

    const-string/jumbo v6, "fg-service-launch"

    iget v10, v2, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    const/16 v5, 0x12f

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IILjava/lang/String;IJI)V

    :cond_18
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_1a

    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_1a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_1a
    :goto_15
    return-object v16
.end method

.method public final bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZI)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "bringUpServiceLocked: "

    const-wide/16 v1, 0x40

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/ActiveServices;->bringUpServiceInnerLocked(Lcom/android/server/am/ServiceRecord;IZZZZI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/16 v1, 0x258

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Too early to start/bind service in system_server: Phase="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz p1, :cond_9

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v4, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v1, v4, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    const-wide/16 v6, 0x7d0

    if-eqz v5, :cond_7

    iget-boolean v5, v4, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "unbind"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "destroy"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    :cond_1
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    sget-boolean v8, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v8, :cond_3

    invoke-virtual {v1, p3, v5}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move p3, v2

    goto :goto_3

    :cond_3
    :goto_1
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v4, v5, p3}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v5, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v5, :cond_4

    iget-boolean p3, p3, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-nez p3, :cond_4

    move p3, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_4
    move p3, v2

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz p3, :cond_7

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_9

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean p3, p3, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez p3, :cond_6

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-static {p3}, Lcom/android/server/am/FreecessController;->isMainProcDepend(Lcom/android/server/am/ProcessRecord;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    const-string p3, "ActivityManager-MARs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mars Chain destruct kill: uid="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v1, v4, p3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget p3, p3, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p3}, Landroid/os/Process;->killProcess(I)V

    goto :goto_6

    :cond_6
    :goto_4
    const-string p3, "ActivityManager-MARs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Frozen activity protection: uid="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1, v5, p3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget p3, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v1, "ServiceANR"

    invoke-virtual {v4, p3, v1, v6, v7}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    goto :goto_6

    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_8

    iget p3, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v1, "ServiceANR"

    invoke-virtual {v4, p3, v1, v6, v7}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    :cond_8
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    const-string/jumbo v9, "ServiceANR"

    const-wide/16 v7, 0x7d0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    :cond_9
    :goto_6
    if-eqz p5, :cond_b

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_b

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean p5, p3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    if-nez p5, :cond_a

    iget-boolean p3, p3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-eqz p3, :cond_b

    :cond_a
    move p3, v3

    goto :goto_7

    :cond_b
    move p3, v2

    :goto_7
    iget p5, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez p5, :cond_10

    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    iget-object p5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p5, p5, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p5

    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :cond_c
    :goto_8
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p5, :cond_12

    iget-object p5, p5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-boolean v4, p5, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    if-nez v4, :cond_d

    if-eqz p2, :cond_e

    :cond_d
    move v2, v3

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v2, p5, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    if-eqz v0, :cond_12

    iget-object p5, p5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result p5

    if-ne p5, v3, :cond_12

    if-nez p3, :cond_f

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_a

    :cond_f
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iput-boolean v3, p3, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    goto :goto_a

    :goto_9
    :try_start_3
    monitor-exit p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_10
    iget-object p5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p5, :cond_12

    if-eqz p2, :cond_12

    iget-object p5, p5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-boolean v1, p5, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v3, p5, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    if-eqz v0, :cond_12

    if-nez p3, :cond_11

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_a

    :cond_11
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iput-boolean v3, p3, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    :cond_12
    :goto_a
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_13

    iget-object p5, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p5, p5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v0, 0xa

    if-le p5, v0, :cond_13

    iget-object p5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p5, p3}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    if-eqz p4, :cond_13

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_13
    iget-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr p0, p2

    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    iget p0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/2addr p0, v3

    iput p0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    return-void
.end method

.method public final canStartForegroundServiceLocked(IILjava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v6, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result p0

    const/4 p1, 0x0

    move-object v5, v2

    move-object v7, v6

    move v2, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_2

    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v4, p3, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;I)V

    invoke-virtual {v0, v2, p1}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    if-eqz p3, :cond_1

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    const/16 p0, 0x36

    :cond_2
    if-eq p0, p2, :cond_3

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return p1
.end method

.method public final cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    if-eq v1, p1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    iget-boolean v6, v8, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v6, :cond_3

    iget-object v6, v8, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v6, v6, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Stopping service "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v8, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-string v7, ": remove task"

    const-string v9, "ActivityManager"

    invoke-static {v5, v6, v7, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v4}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    move v5, v4

    goto :goto_2

    :cond_2
    iget-object v6, v8, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/am/ServiceRecord$StartItem;

    iget v10, v8, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v16}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {v0, v8, v4, v3}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_5
    return-void
.end method

.method public final clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, p0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public final collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZILandroid/util/ArrayMap;)Z
    .locals 9

    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_9

    invoke-virtual {p6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    if-eqz p1, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v1

    :goto_2
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v7, "ActivityManager"

    if-eqz v6, :cond_2

    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-ge v8, p5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Skip force stopping service "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": below minimum oom adj level"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    if-eqz v5, :cond_8

    if-eqz v6, :cond_3

    if-nez p3, :cond_3

    iget-boolean v5, v6, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v5, :cond_8

    :cond_3
    if-nez p4, :cond_4

    return v1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  Force stopping service "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v3, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_5
    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v5, v3}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)V

    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    iput-object v3, v4, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_9
    return v3
.end method

.method public final decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    if-gtz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object p2, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    return-void

    :cond_0
    iget-wide v0, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    invoke-static {p1, v0, v1}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    :cond_1
    return-void
.end method

.method public final deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZZILandroid/app/BackgroundStartPrivileges;ZLandroid/app/IServiceConnection;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v5, p5

    invoke-virtual {v0, v5, v4, v3}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v3, Lcom/android/server/am/ActiveServices$4;

    move-object/from16 v6, p2

    move-object/from16 v4, p4

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move-object/from16 v15, p12

    move/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v15}, Lcom/android/server/am/ActiveServices$4;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;ILjava/lang/String;IZLandroid/app/BackgroundStartPrivileges;)V

    move-object v1, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_2

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return-void

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "FGS "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not found!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget p0, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v2, Lcom/android/server/am/ServiceRecord$4;

    invoke-direct {v2, v1, p0, v0}, Lcom/android/server/am/ServiceRecord$4;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const-wide v1, 0x10b00000001L

    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget v7, v3, v6

    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    const-wide v9, 0x20b00000001L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v11, 0x10500000001L

    invoke-virtual {p1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v7, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move v8, v5

    :goto_1
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v8, v11, :cond_1

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v11, p1}, Lcom/android/server/am/ServiceRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .locals 3

    const-string v0, ""

    const-string v1, "  "

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "SERVICE "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " pid="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " user="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p3, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const-string v2, "(not running)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual {p3, p2, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object p0, p3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz p0, :cond_2

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p5, "  Client:"

    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_1
    new-instance p5, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p5}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p5}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/app/IApplicationThread$Delegator;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    const-string p0, "    "

    invoke-virtual {p5, p0}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p5}, Lcom/android/internal/os/TransferPipe;->kill()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p5}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const-string p0, "    Got a RemoteException while dumping the service"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "    Failure while dumping the service: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[I[Ljava/lang/String;Z)Z
    .locals 13

    const/4 v7, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p4, :cond_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v5}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_6

    :cond_0
    move-object/from16 v5, p4

    :goto_0
    array-length v6, v5

    move v8, v1

    :goto_1
    if-ge v8, v6, :cond_4

    aget v9, v5, v8

    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    iget-object v9, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move v10, v1

    :goto_2
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ServiceRecord;

    invoke-interface {v2, v11}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gtz v2, :cond_5

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v7}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return v1

    :cond_5
    :try_start_3
    new-instance v2, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    move v8, v1

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_8

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_7

    :cond_6
    :goto_5
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-string/jumbo v2, "SystemUIService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "  SystemUI Revival Count:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRevivalServicesMessages:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRevivalServicesMessages:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRevivalServicesMessages:Ljava/util/List;

    new-instance v2, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda11;

    invoke-direct {v2, p2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda11;-><init>(Ljava/io/PrintWriter;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_7
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v8, v8, 0x1

    move v1, v7

    goto :goto_4

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v7}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return v7

    :goto_6
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v7}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    throw p1
.end method

.method public final forceStopPackageLocked(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    iput-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v2, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne p1, v2, :cond_5

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z
    .locals 6

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    iget-boolean v0, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    add-long/2addr v2, v4

    cmp-long p0, p2, v2

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    iput-wide v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    return v1

    :cond_3
    :goto_0
    iget-wide v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iget-wide v4, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    :goto_1
    add-long/2addr v2, v4

    cmp-long v0, p2, v2

    if-ltz v0, :cond_5

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    add-long/2addr p2, v4

    cmp-long p0, p2, v2

    if-lez p0, :cond_6

    move-wide v2, p2

    :cond_6
    iput-wide v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    return v1
.end method

.method public final getClientPackagesLocked(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 13

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_2
    if-ltz v8, :cond_2

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v2

    :goto_3
    if-ge v11, v10, :cond_1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    iget-object v12, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_0

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final getExtraRestartTimeInBetweenLocked()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public final getFgsTimeLimitedInfo(II)Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getForegroundServiceTypeLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)I
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iget-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_2
    iget-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    iget-object v2, v2, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ConnectionRecord;

    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRunningServiceInfoLocked(IIZZ)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz p4, :cond_2

    :try_start_0
    iget-object p2, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p2}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object p2

    move p3, v4

    :goto_0
    array-length p4, p2

    if-ge p3, p4, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p4, p1, :cond_1

    aget p4, p2, p3

    invoke-virtual {p0, p4}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p4

    iget-object p4, p4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move v5, v4

    :goto_1
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p1, :cond_0

    invoke-virtual {p4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    invoke-static {v6}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v4, p2, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p2, p1, :cond_8

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ServiceRecord;

    invoke-static {p2}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object p3

    iget-wide v5, p2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v5, p3, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move v6, v4

    :goto_3
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, p1, :cond_5

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    if-nez p3, :cond_3

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_4

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v8, p2, :cond_4

    :cond_3
    invoke-static {v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_8

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    iget v6, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v6, p4, :cond_7

    if-nez p3, :cond_6

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_7

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v6, p2, :cond_7

    :cond_6
    invoke-static {v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v6

    iget-wide v7, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v7, v6, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    iget-object p0, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_5
    iget-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getServiceBindingOomAdjPolicyForAddLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)I
    .locals 18

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v1, p3

    const/4 v0, 0x0

    if-eqz v3, :cond_a

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v14, 0x7

    if-ne v3, v2, :cond_1

    :cond_0
    move v15, v14

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isFreezable()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xf

    move v15, v5

    goto :goto_0

    :cond_2
    move v15, v0

    :goto_0
    and-int/lit8 v5, v15, 0x4

    if-nez v5, :cond_9

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iget v8, v4, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-le v7, v8, :cond_4

    goto :goto_1

    :cond_4
    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget v8, v4, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-le v7, v8, :cond_5

    goto :goto_1

    :cond_5
    const-wide v7, 0x100001000L

    invoke-virtual {v1, v7, v8}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    and-int/2addr v6, v4

    if-eq v6, v4, :cond_6

    goto :goto_1

    :cond_6
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eqz v4, :cond_8

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-nez v4, :cond_8

    :goto_1
    iget-object v0, v5, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, v5, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-wide/from16 v16, v6

    move-object v6, v0

    move-object v0, v5

    move-wide/from16 v4, v16

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x384

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-result v0

    :cond_8
    :goto_2
    if-nez v0, :cond_9

    return v14

    :cond_9
    return v15

    :cond_a
    return v0
.end method

.method public final getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final getShortProcessNameForStats(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    aget-object v0, p0, p1

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method

.method public final getTimeLimitedFgsType(I)I
    .locals 6

    and-int/lit16 v0, p1, 0x2000

    const-wide/16 v1, 0x0

    const/16 v3, 0x2000

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    cmp-long p1, v4, v1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, p1, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    cmp-long p1, v1, v4

    if-lez p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    return v0

    :cond_2
    return v3
.end method

.method public final hasForegroundServiceNotificationLocked(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public final hasServiceTimedOutLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p0, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :cond_1
    :try_start_1
    iget p1, p1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    :cond_2
    iget-object p0, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_0
    move-exception p0

    iget-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isBgFgsRestrictionEnabled(ILcom/android/server/am/ServiceRecord;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p2, p2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v2, 0xa2c30a7

    invoke-static {v2, v3, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    const/4 p2, 0x1

    if-nez p0, :cond_2

    return p2

    :cond_2
    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_3

    return p2

    :cond_3
    invoke-static {v2, v3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return p2
.end method

.method public final isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isForegroundServiceAllowedInBackgroundRestricted(ILjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p1, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    iget-boolean p0, v0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-eqz p0, :cond_3

    iget p0, v0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/4 v1, 0x3

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    iget-boolean p0, v0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    if-eqz p0, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return p1
.end method

.method public final isTempAllowedByAlarmClock(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    const/16 v0, 0x12d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method

.method public final killServicesLocked(Lcom/android/server/am/ProcessRecord;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, -0x1

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v5, v4, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    const/4 v6, 0x0

    if-ltz v5, :cond_0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v7

    invoke-virtual {v0, v7, v1, v6, v2}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)I

    add-int/2addr v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v5, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v10, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_1

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-boolean v10, v10, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    if-eqz v10, :cond_1

    iget-object v10, v11, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz v10, :cond_1

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/2addr v8, v2

    goto :goto_1

    :cond_2
    iget-object v5, v4, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    iget-object v5, v4, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    :cond_3
    iput-boolean v7, v4, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    iget-object v5, v4, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_2
    if-ltz v5, :cond_b

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v9, v1, :cond_4

    if-eqz v9, :cond_4

    iget-boolean v9, v9, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v9, :cond_4

    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v8}, Lcom/android/server/am/ProcessStateController;->stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    :cond_4
    invoke-virtual {v8, v6}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    iput-object v6, v8, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    iput v7, v8, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v9, v9, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v10, :cond_5

    invoke-virtual {v10, v8, v2}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    iput-object v6, v8, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    :cond_5
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    :goto_3
    if-ltz v9, :cond_a

    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/IntentBindRecord;

    iput-object v6, v10, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    iput-boolean v7, v10, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v7, v10, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v7, v10, Lcom/android/server/am/IntentBindRecord;->requested:Z

    iget-object v11, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    sub-int/2addr v11, v2

    :goto_4
    if-ltz v11, :cond_9

    iget-object v12, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    iget-boolean v13, v12, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v13, :cond_8

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v12, :cond_6

    goto :goto_6

    :cond_6
    iget-object v12, v10, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/AppBindRecord;

    iget-object v13, v12, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    sub-int/2addr v13, v2

    :goto_5
    if-ltz v13, :cond_8

    iget-object v14, v12, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ConnectionRecord;

    invoke-virtual {v14, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0x30

    invoke-virtual {v14, v15}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_6

    :cond_7
    add-int/2addr v13, v3

    goto :goto_5

    :cond_8
    :goto_6
    add-int/2addr v11, v3

    goto :goto_4

    :cond_9
    add-int/2addr v9, v3

    goto :goto_3

    :cond_a
    add-int/2addr v5, v3

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    iget v5, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v5

    iget-object v8, v4, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    sub-int/2addr v8, v2

    :goto_7
    if-ltz v8, :cond_18

    invoke-virtual {v4, v8}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v9

    iget-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v10, :cond_c

    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v9}, Lcom/android/server/am/ProcessStateController;->stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    :cond_c
    iget-object v10, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v11, v9, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ServiceRecord;

    if-eq v10, v9, :cond_d

    if-eqz v10, :cond_17

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Service "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " in process "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " not same as in map: "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_d
    if-eqz p2, :cond_f

    iget v10, v9, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v10, v10

    iget-object v12, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_f

    iget-object v10, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_f

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Service crashed "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " times, stopping: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v9, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-object v13, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_e

    iget v13, v13, Lcom/android/server/am/ProcessRecord;->mPid:I

    goto :goto_8

    :cond_e
    move v13, v3

    :goto_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v10

    const/16 v11, 0x7552

    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {v0, v9, v2}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto/16 :goto_e

    :cond_f
    if-eqz p2, :cond_16

    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v11, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v10, v11, v7}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v10

    if-nez v10, :cond_10

    goto :goto_d

    :cond_10
    if-eqz p3, :cond_15

    sget-boolean v10, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v10, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v13, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v14, :cond_12

    invoke-virtual {v13, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_11

    goto :goto_9

    :cond_11
    move v10, v7

    goto :goto_b

    :cond_12
    :goto_9
    sget-object v13, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v13

    :try_start_2
    invoke-virtual {v10, v12, v11}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v10

    if-eqz v10, :cond_13

    iget-object v10, v10, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v11, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-nez v11, :cond_13

    const-string/jumbo v11, "Signal"

    iget-object v10, v10, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    move v10, v2

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_13
    move v10, v7

    :goto_a
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_b
    if-nez v10, :cond_14

    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v11, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v10, v11, v9}, Lcom/android/server/am/ActivityManagerService;->pendingScheduleServiceRestart(ILcom/android/server/am/ServiceRecord;)V

    goto :goto_e

    :cond_14
    invoke-virtual {v0, v9, v2}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_e

    :goto_c
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_15
    invoke-virtual {v0, v9}, Lcom/android/server/am/ActiveServices;->tryScheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_e

    :cond_16
    :goto_d
    invoke-virtual {v0, v9, v2}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_17
    :goto_e
    add-int/2addr v8, v3

    goto/16 :goto_7

    :cond_18
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 v8, 0x13

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    if-eqz p2, :cond_19

    if-eqz p3, :cond_1f

    :cond_19
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessServiceRecord;->clearBoundClientUids()V

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_f
    if-ltz v5, :cond_1b

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v10, :cond_1a

    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_1a
    add-int/2addr v5, v3

    goto :goto_f

    :cond_1b
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_10
    if-ltz v5, :cond_1d

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v9, :cond_1c

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1c
    add-int/2addr v5, v3

    goto :goto_10

    :cond_1d
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_11
    if-ltz v5, :cond_1f

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v9, :cond_1e

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1e
    add-int/2addr v5, v3

    goto :goto_11

    :cond_1f
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_20
    :goto_12
    if-lez v5, :cond_22

    add-int/2addr v5, v3

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v9, v1, :cond_20

    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v9, v9, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4
    iget-object v10, v8, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v10, :cond_21

    invoke-virtual {v10, v8, v2}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    iput-object v6, v8, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    :cond_21
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_22
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v4, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iput-boolean v7, v4, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    return-void
.end method

.method public final logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    invoke-static {v3, v2}, Lcom/android/server/am/ActivityManagerUtils;->shouldSamplePackageForAtom(FLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v5, v4, :cond_2

    if-eq v5, v3, :cond_2

    if-ne v5, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v6

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v7

    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean v6, v1, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgsAtEntering:Z

    iget v7, v1, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    :goto_1
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v10, v8

    goto :goto_2

    :cond_3
    move v10, v9

    :goto_2
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move v11, v3

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move v12, v4

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v13, v9

    iget v9, v1, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    iget-object v14, v1, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    const/4 v15, -0x1

    if-eqz v14, :cond_4

    iget v14, v14, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    :goto_3
    move/from16 v16, v12

    goto :goto_4

    :cond_4
    move v14, v15

    goto :goto_3

    :goto_4
    iget-boolean v12, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    move/from16 v17, v13

    iget-boolean v13, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    move/from16 v18, v15

    iget v15, v1, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    iget v11, v1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    move/from16 v21, v2

    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    move/from16 v22, v2

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    move-object/from16 v23, v4

    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v4, v4, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    move/from16 v18, v4

    :cond_5
    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v2, v2, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    move/from16 v17, v2

    :cond_6
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessList;->getUidProcStateLOSP(I)I

    move-result v26

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessList;->getUidProcessCapabilityLOSP(I)I

    move-result v27

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v4, v1, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessList;->getUidProcStateLOSP(I)I

    move-result v28

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessList;->getUidProcessCapabilityLOSP(I)I

    move-result v29

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    iget v4, v1, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    move/from16 v34, v0

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    move/from16 v37, v0

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    move/from16 v38, v0

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    move/from16 v35, v2

    const/16 v2, 0x3c

    move/from16 v24, v16

    const/16 v16, 0x0

    move/from16 v36, v4

    move-object/from16 v4, v23

    const/16 v23, 0x0

    move/from16 v25, v24

    const/16 v24, 0x0

    move/from16 v39, v25

    const/16 v25, 0x0

    move/from16 v19, v39

    move/from16 v39, v0

    move/from16 v0, v19

    move/from16 v19, p5

    move/from16 v40, p6

    move/from16 v41, p7

    move/from16 v20, v22

    move/from16 v22, v17

    move/from16 v17, v21

    move/from16 v21, v18

    move/from16 v18, v11

    move v11, v14

    move/from16 v14, p3

    invoke-static/range {v2 .. v41}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJIIIIIIIZ)V

    if-ne v5, v0, :cond_7

    const/16 v2, 0x7594

    goto :goto_5

    :cond_7
    const/4 v11, 0x2

    if-ne v5, v11, :cond_8

    const/16 v2, 0x7596

    goto :goto_5

    :cond_8
    const/4 v2, 0x3

    if-ne v5, v2, :cond_9

    const/16 v2, 0x7595

    goto :goto_5

    :cond_9
    const/4 v2, 0x5

    if-ne v5, v2, :cond_c

    const/16 v2, 0x7597

    :goto_5
    iget v3, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-boolean v3, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-boolean v3, v1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move/from16 v3, p4

    if-eq v3, v0, :cond_b

    const/4 v0, 0x2

    if-eq v3, v0, :cond_a

    const-string/jumbo v0, "UNKNOWN"

    :goto_6
    move-object/from16 v21, v0

    goto :goto_7

    :cond_a
    const-string/jumbo v0, "STOP_SERVICE"

    goto :goto_6

    :cond_b
    const-string/jumbo v0, "STOP_FOREGROUND"

    goto :goto_6

    :goto_7
    iget v0, v1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    filled-new-array/range {v11 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_c
    :goto_8
    return-void
.end method

.method public final logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Background started FGS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Allowed "

    goto :goto_0

    :cond_0
    const-string v1, "Disallowed "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " (Called on SHORT_SERVICE)"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v1

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->shouldSamplePackageForAtom(FLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v2, v0}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-static {v2, v0}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    :cond_4
    return-void
.end method

.method public final maybeStopFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 7

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActiveServices;->getFgsTimeLimitedInfo(II)Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    iget-wide v5, v0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    sub-long v5, v1, v5

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    iput-wide v1, v0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->decNumParallelServices()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Stop FGS timeout: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v1, 0x54

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v0, 0x55

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->unscheduleShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    return-void
.end method

.method public final maybeUpdateFgsTrackingLocked(ILcom/android/server/am/ServiceRecord;)V
    .locals 12

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean v0, p2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v1, p2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x55

    const/16 v2, 0x54

    if-eqz p1, :cond_4

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/ActiveServices;->getFgsTimeLimitedInfo(II)Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    iget-wide v7, p1, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    sub-long v7, v3, v7

    add-long/2addr v7, v5

    iput-wide v7, p1, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    iput-wide v3, p1, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->decNumParallelServices()V

    :cond_2
    iget-boolean p1, p2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz p1, :cond_3

    iget-object p1, p2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v3, p2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "FGS start: "

    invoke-static {p1, p2}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    iget-object v5, p2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_5

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    iget-object v6, p2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    iget v5, p2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    const-wide/16 v7, 0x0

    if-nez v6, :cond_6

    new-instance v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v9, -0x8000000000000000L

    iput-wide v9, v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    iput-wide v7, v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    const/4 v9, 0x0

    iput v9, v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    iget p1, v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    const/4 v9, 0x1

    add-int/2addr p1, v9

    iput p1, v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    if-ne p1, v9, :cond_7

    iput-wide v3, v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartUptime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartRealtime:J

    :cond_7
    iput-wide v3, v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p1, v2, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide v1, 0x7fffffffffffffffL

    if-eq v5, v9, :cond_9

    const/16 v3, 0x2000

    if-eq v5, v3, :cond_8

    move-wide v3, v1

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    :goto_2
    cmp-long p0, v3, v1

    if-nez p0, :cond_a

    move-wide v3, v1

    goto :goto_3

    :cond_a
    iget-wide v9, v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    iget-wide v5, v6, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    sub-long/2addr v3, v5

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-long/2addr v3, v9

    :goto_3
    cmp-long p0, v3, v1

    if-nez p0, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Couldn\'t calculate timeout for time-limited fgs: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final maybeUpdateShortFgsTrackingLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    iget-object p2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->unscheduleShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget p2, p1, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    iput p2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    iget p1, p1, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    iput p1, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    return-void

    :cond_3
    :goto_1
    const-string/jumbo p2, "short FGS start/extend: "

    invoke-static {p2, p1}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    iget-object p2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-direct {p2, p1, v2, v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;-><init>(Lcom/android/server/am/ServiceRecord;J)V

    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->unscheduleShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-object p0, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 p2, 0x4c

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-object p2, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final onFgsCrashTimeout(Lcom/android/server/am/ServiceRecord;)V
    .locals 14

    const-string v0, "FGS Crashed: "

    const-string v1, "A foreground service of type "

    iget v2, p1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_0
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/ActiveServices;->getFgsTimeLimitedInfo(II)Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->decNumParallelServices()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " did not stop within its timeout: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FGS Crash: "

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-static {p0}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;->createExtrasForService(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v13

    const/4 v11, 0x0

    const/4 v12, 0x7

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onFgsTimeout(Lcom/android/server/am/ServiceRecord;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v9, "Exception from scheduleTimeoutServiceForType: "

    const-string v0, "FGS ("

    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10

    :try_start_0
    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v11

    const/16 v12, 0x55

    if-eqz v11, :cond_8

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-gt v3, v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    if-eqz v3, :cond_2

    move-wide v13, v7

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-wide v13, v3, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    :goto_1
    if-eq v11, v4, :cond_4

    const/16 v3, 0x2000

    if-eq v11, v3, :cond_3

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_2

    :cond_3
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    :goto_2
    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v5, v13, v15

    if-eqz v5, :cond_5

    sub-long v15, v7, v13

    cmp-long v5, v3, v15

    if-lez v5, :cond_5

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v5, 0x54

    invoke-virtual {v0, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v0, v12, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    add-long/2addr v13, v3

    invoke-virtual {v1, v0, v13, v14}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_5
    :try_start_1
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") timed out: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FGS timed out: "

    invoke-static {v0, v2}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v11}, Lcom/android/server/am/ActiveServices;->getFgsTimeLimitedInfo(II)Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    iget-wide v13, v0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    sub-long v13, v7, v13

    add-long/2addr v13, v3

    iput-wide v13, v0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    iput-wide v7, v0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    iput-wide v7, v0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    iget-wide v3, v0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartUptime:J

    cmp-long v0, v7, v3

    if-lez v0, :cond_6

    sub-long/2addr v7, v3

    long-to-int v6, v7

    :cond_6
    move v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :try_start_2
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {v0, v2, v3, v11}, Landroid/app/IApplicationThread$Delegator;->scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v0, v12, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_8
    :goto_4
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v0, v12, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_5
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final onForegroundServiceNotificationUpdateLocked(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget v4, v3, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne p5, v4, :cond_0

    iget v4, v3, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iput-boolean v1, v3, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    iput-boolean v2, v3, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz p0, :cond_3

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    iget-boolean p5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz p5, :cond_2

    iget p5, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, p5, :cond_2

    iget-object p5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final onShortFgsAnrTimeout(Lcom/android/server/am/ServiceRecord;)V
    .locals 7

    const-string/jumbo v0, "Short FGS ANR\'ed: "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A foreground service of FOREGROUND_SERVICE_TYPE_SHORT_SERVICE did not stop within a timeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/TimeoutRecord;->forShortFgsTimeout(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v1

    iget-object v2, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v5

    :goto_0
    invoke-virtual {p1, v5, v6, v3, v4}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    iget-object v3, v3, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v3, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "short FGS ANR: "

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onShortFgsProcstateTimeout(Lcom/android/server/am/ServiceRecord;)V
    .locals 6

    const-string/jumbo v0, "Short FGS procstate demoted: "

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v4

    :goto_0
    invoke-virtual {p1, v4, v5, v2, v3}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "short FGS demote: "

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onShortFgsTimeout(Lcom/android/server/am/ServiceRecord;)V
    .locals 11

    const-string v1, "Exception from scheduleTimeoutService: "

    const-string/jumbo v0, "Short FGS timed out: "

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v5

    :goto_0
    invoke-virtual {p1, v5, v6, v3, v4}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    :try_start_1
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "short FGS timeout: "

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    iget-wide v5, p1, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    sub-long/2addr v3, v5

    long-to-int v0, v3

    :goto_1
    move v6, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x5

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    invoke-virtual {p0, v4, p1}, Landroid/app/IApplicationThread$Delegator;->scheduleTimeoutService(Landroid/os/IBinder;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    const-string p1, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object p0, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 p1, 0x4d

    invoke-virtual {p0, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-object p1, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    iget-object p0, v3, Lcom/android/server/am/ActiveServices;->mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/utils/AnrTimer;->start(JLjava/lang/Object;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Permission Denial: Accessing service from pid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requires "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final performRescheduleServiceRestartOnMemoryPressureLocked(JJJLjava/lang/String;)V
    .locals 15

    move-wide/from16 v4, p5

    sub-long v1, p3, p1

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-lez v1, :cond_6

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    add-long v6, v1, p3

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-wide v1, v4

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_7

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x8

    if-nez v11, :cond_1

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    move-object v1, v3

    move v11, v10

    goto :goto_2

    :cond_2
    cmp-long v11, v1, v4

    const/4 v12, 0x1

    if-gtz v11, :cond_3

    iget-wide v1, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v13, v3, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    move v11, v10

    iget-wide v9, v3, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    add-long v9, v9, p3

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v1, v9, v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_3
    move v11, v10

    iget-wide v9, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v9, v1

    cmp-long v9, v9, v6

    if-gez v9, :cond_4

    add-long/2addr v1, v6

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    iget-wide v9, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v1, v9, v4

    iput-wide v1, v3, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    if-eqz v12, :cond_5

    const-string/jumbo v2, "Rescheduling"

    move-object v0, p0

    move-object v1, v3

    move-object/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    move-wide v1, v9

    goto :goto_3

    :goto_2
    iget-wide v0, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide v1, v0

    :goto_3
    add-int/lit8 v10, v11, 0x1

    move-wide/from16 v4, p5

    goto :goto_0

    :cond_6
    if-gez v1, :cond_7

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    move-object v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartIfPossibleLocked(JJJLjava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restarter:Lcom/android/server/am/ActiveServices$ServiceRestarter;

    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr p4, v0

    iput-wide p4, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    const-string p0, " restart of crashed service "

    invoke-static {p2, p0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ActivityManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-wide p3, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7553

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 11

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Restarting service that is not needed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x6

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZI)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    throw p0

    :catch_0
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :goto_0
    return-void
.end method

.method public final processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    const-string/jumbo v5, "com.android.systemui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "ActivityManager"

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Do not bringing down SystemUI services : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/ActiveServices;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mRevivalServicesMessages:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Forcing bringing down service: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v3, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    move v2, v6

    :cond_3
    :goto_1
    add-int/2addr v1, v6

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_5
    return-void
.end method

.method public final publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    if-eqz v2, :cond_5

    :try_start_0
    new-instance v4, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    iget-boolean v6, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v6, :cond_3

    iput-object v3, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    iput-boolean v6, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v6

    move v6, v0

    :goto_0
    if-ltz v6, :cond_3

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/ArrayList;

    move v12, v5

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/am/ConnectionRecord;

    iget-object v0, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4, v0}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, v13, Lcom/android/server/am/ConnectionRecord;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    iget-object v14, v13, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v14, v0, v3, v5}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure sending service "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to connection "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (in "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, -0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v5, 0x14

    move v6, v5

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_5
    iget-object v1, v7, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5
    :goto_6
    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ZI)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v0, p3

    const-string v8, "Application dead when creating service "

    if-eqz v0, :cond_e

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ServiceRecord;->restartTime:J

    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v3, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    and-int/lit8 v3, p5, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_0

    move v6, v10

    goto :goto_0

    :cond_0
    move v6, v11

    :goto_0
    iget-object v3, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-static {v12, v2}, Lcom/android/server/am/ProcessStateController;->startService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z

    move-result v13

    const-string/jumbo v4, "create"

    const/4 v5, 0x0

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    iget-object v3, v9, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v14, 0x0

    invoke-virtual {v3, v7, v14, v11}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    invoke-virtual {v1, v12, v11}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    if-nez v6, :cond_1

    invoke-virtual {v9, v7}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    const/4 v3, 0x6

    invoke-virtual {v9, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_1
    :try_start_0
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    invoke-static {v6, v3, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, v9, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6, v3, v4, v5}, Lcom/android/server/am/BatteryStatsService;->noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v3, v10}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-interface {v0, v2, v3, v14, v4}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    invoke-virtual {v2, v11}, Lcom/android/server/am/ServiceRecord;->postNotification(Z)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v0, :cond_2

    iput-boolean v10, v12, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    :cond_2
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v10

    :goto_1
    if-ltz v0, :cond_4

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    const/4 v5, 0x0

    move/from16 v4, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZI)Z

    move-result v3

    move-object v15, v1

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move-object v1, v15

    goto :goto_1

    :cond_4
    move-object v15, v1

    :goto_2
    invoke-virtual {v15, v12, v14, v10}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)V

    if-eqz v13, :cond_6

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v10

    :goto_3
    if-ltz v1, :cond_6

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move v4, v11

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v12, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    iget v7, v5, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v6, v12, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-wide v7, v5, Lcom/android/server/am/ConnectionRecord;->flags:J

    iget v9, v5, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    invoke-virtual {v6, v9, v5, v7, v8}, Lcom/android/server/wm/WindowProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    iget v1, v2, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    add-int/2addr v1, v10

    iput v1, v2, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ge v1, v10, :cond_7

    iput v10, v2, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    :cond_7
    iget v3, v2, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object v1, v2

    :goto_5
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v0

    move/from16 v3, p4

    invoke-virtual {v15, v1, v3, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_9

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v11, v1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    :cond_9
    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_a

    iput-boolean v11, v1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_a

    invoke-virtual {v15, v1, v10}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    move-object v15, v1

    move-object v1, v2

    :goto_6
    move-object v7, v1

    move-object v8, v9

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v15, v1

    move-object v1, v2

    :try_start_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Died when creating service"

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v5, 0x0

    move-object v2, v7

    move-object v7, v1

    move-object v1, v9

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v8, v1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :goto_7
    iget-object v1, v15, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x13

    move v6, v1

    goto :goto_8

    :cond_b
    move v6, v11

    :goto_8
    const/4 v5, 0x0

    move v4, v3

    move-object v2, v7

    move-object v1, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    if-eqz v13, :cond_c

    iget-object v4, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v2}, Lcom/android/server/am/ProcessStateController;->stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v2, v14}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    :cond_c
    if-nez v3, :cond_d

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1, v2, v11}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    :cond_d
    throw v0

    :cond_e
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager$1()Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/server/am/ActiveServices$AppOpCallback;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-boolean p0, v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    if-eqz p0, :cond_2

    const-string p0, "ActivityManager"

    const-string/jumbo p1, "Trying to register on a stale AppOpCallback."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget p0, v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    iput p0, v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    if-ne p0, p1, :cond_3

    iget-object p0, v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object p1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    iget-object v0, v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    invoke-virtual {p0, p1, v0}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    iget-object p0, v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    invoke-virtual {p0, p1, v0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final registerForegroundServiceObserverLocked(ILandroid/app/IForegroundServiceObserver;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_1

    iget-object v7, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    iget-boolean v8, v7, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v9, :cond_0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {p2, v7, v8, v9, v3}, Landroid/app/IForegroundServiceObserver;->onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const-string p0, "Bad FGS observer from uid "

    const-string p2, "ActivityManager"

    invoke-static {p1, p0, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v8, p4

    const/4 v9, 0x1

    iget-object v3, v7, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v3}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v10, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v10, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    const-string/jumbo v5, "unbind"

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v11, 0x0

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v6, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v12, v6, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v12, :cond_3

    sget-boolean v12, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v12, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    sget-boolean v12, Lcom/android/server/am/FreecessController;->FEATURE_SERVICE_GUARD:Z

    if-eqz v12, :cond_3

    iget-object v12, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v13, v4, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v6, v13, v12}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v12, v7, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v5, "externalUnbind"

    goto :goto_0

    :cond_0
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v6, :cond_1

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v12, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-static {v6}, Lcom/android/server/am/FreecessController;->isMainProcDepend(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const-string v1, "ActivityManager-MARs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pendingRemoveConnectionLocked: s="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v4, Lcom/android/server/am/ServiceRecord;->pendingRemoveConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/ServiceRecord$removeConnectionItem;

    invoke-direct {v3, v7, v0, v2, v8}, Lcom/android/server/am/ServiceRecord$removeConnectionItem;-><init>(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object v1, v0, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    if-nez v1, :cond_2

    goto/16 :goto_16

    :cond_2
    const/16 v2, 0x19

    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v11

    :cond_3
    :goto_0
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_4
    iget-object v6, v10, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/16 v12, 0x64

    if-le v6, v12, :cond_5

    const-string v6, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Too many connections("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") owned by"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, v10, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    iget-object v6, v7, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v6, :cond_7

    if-eq v6, v2, :cond_7

    iget-object v2, v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    monitor-enter v2

    :try_start_0
    iget-object v6, v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Landroid/util/ArraySet;

    if-nez v6, :cond_6

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_2
    iget-object v2, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eq v2, v0, :cond_18

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v2, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_8

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    if-eqz v2, :cond_8

    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessServiceRecord;->mSdkSandboxConnections:Landroid/util/ArraySet;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_8
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v11, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    iget-object v6, v0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v9

    :goto_3
    if-ltz v6, :cond_b

    iget-object v12, v0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    iget-object v13, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_9

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-ne v13, v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v12, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v12

    if-eqz v12, :cond_a

    iput-boolean v9, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    goto :goto_5

    :cond_a
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_b
    :goto_5
    const/high16 v2, 0x1000000

    invoke-virtual {v7, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_f

    iput-boolean v11, v4, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v9

    :goto_6
    if-ltz v6, :cond_e

    iget-object v12, v4, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move v13, v11

    :goto_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_d

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ConnectionRecord;

    invoke-virtual {v14, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v14

    if-eqz v14, :cond_c

    iput-boolean v9, v4, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    goto :goto_8

    :cond_c
    add-int/2addr v13, v9

    goto :goto_7

    :cond_d
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_e
    :goto_8
    iget-boolean v2, v4, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-nez v2, :cond_f

    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_f

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-static {v2}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    :cond_f
    const/high16 v2, 0x100000

    invoke-virtual {v7, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v9

    move v12, v11

    :goto_9
    if-ltz v6, :cond_13

    iget-object v13, v4, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    move v14, v11

    :goto_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_11

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    invoke-virtual {v15, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v15

    if-eqz v15, :cond_10

    move v12, v9

    goto :goto_b

    :cond_10
    add-int/2addr v14, v9

    goto :goto_a

    :cond_11
    :goto_b
    if-eqz v12, :cond_12

    goto :goto_c

    :cond_12
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_13
    :goto_c
    iput-boolean v12, v4, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v4, v2}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    goto :goto_d

    :cond_15
    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    :cond_16
    :goto_d
    const/high16 v2, 0x10000

    invoke-virtual {v7, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    :cond_17
    iget-object v0, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v0, v7, v9}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)V

    :cond_18
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v4, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v12, v2, v3, v6}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(Landroid/content/ComponentName;Ljava/lang/String;II)V

    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v2, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-boolean v0, v7, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_2b

    iget-object v0, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isThreadReady()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v0, :cond_27

    iget-object v0, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_22

    if-eqz v2, :cond_22

    const/4 v3, 0x7

    if-ne v0, v2, :cond_1c

    :cond_1b
    move v12, v3

    goto :goto_f

    :cond_1c
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_e

    :cond_1d
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v12, v6, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v14, v13, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-lt v12, v14, :cond_1e

    goto :goto_e

    :cond_1e
    iget v12, v6, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget v14, v13, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-lt v12, v14, :cond_1f

    goto :goto_e

    :cond_1f
    const-wide v14, 0x100001000L

    invoke-virtual {v7, v14, v15}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v12

    if-eqz v12, :cond_20

    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iget v12, v13, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    and-int/2addr v6, v12

    if-eqz v6, :cond_20

    goto :goto_e

    :cond_20
    const/16 v6, 0x30

    invoke-virtual {v7, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_e

    :cond_21
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eqz v2, :cond_1b

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eqz v0, :cond_1b

    :cond_22
    :goto_e
    move v12, v11

    :goto_f
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_23

    move v6, v9

    goto :goto_10

    :cond_23
    move v6, v11

    :goto_10
    const/4 v0, 0x5

    move-object v2, v4

    move-object v4, v5

    if-eqz v6, :cond_24

    move v5, v11

    goto :goto_11

    :cond_24
    move v5, v0

    :goto_11
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    iget-object v3, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v4, :cond_25

    const/16 v3, 0x20

    invoke-virtual {v7, v3}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v5, 0xd

    if-gt v4, v5, :cond_25

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v11}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    goto :goto_12

    :catch_0
    move-exception v0

    goto :goto_13

    :cond_25
    :goto_12
    iget-object v3, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v11, v3, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v11, v3, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v3, :cond_26

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v3, v3, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    :cond_26
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iget-object v3, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v3, v3, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/IApplicationThread$Delegator;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_14

    :goto_13
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception when unbinding service "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v2, v8}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_14

    :cond_27
    move-object v2, v4

    move v12, v11

    :goto_14
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_28

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-virtual {v7, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v3, :cond_29

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v11, v5, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    monitor-exit v3

    goto :goto_15

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_29
    :goto_15
    invoke-virtual {v1, v2, v9, v0, v8}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    :cond_2a
    return v12

    :cond_2b
    :goto_16
    return v11
.end method

.method public final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZI)Z
    .locals 13

    move-object v7, p2

    const-string/jumbo v0, "requestServiceBinding="

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    if-eqz v3, :cond_a

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v4, v4, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    :cond_1
    and-int/lit8 v3, p5, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_2

    move v6, v9

    goto :goto_0

    :cond_2
    move v6, v8

    :goto_0
    iget-boolean v3, v7, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-eqz v3, :cond_3

    if-eqz p4, :cond_9

    :cond_3
    iget-object v3, v7, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_9

    const/4 v10, 0x5

    :try_start_0
    const-string/jumbo v4, "bind"

    if-eqz v6, :cond_4

    move v5, v8

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". bindSeq="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/ActiveServices;->mBindServiceSeqCounter:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iget-object v1, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    iget-wide v5, p0, Lcom/android/server/am/ActiveServices;->mBindServiceSeqCounter:J

    const-wide/16 v11, 0x1

    add-long/2addr v11, v5

    iput-wide v11, p0, Lcom/android/server/am/ActiveServices;->mBindServiceSeqCounter:J

    move/from16 v3, p4

    move-object v2, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Delegator;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V

    if-nez p4, :cond_6

    iput-boolean v9, v7, Lcom/android/server/am/IntentBindRecord;->requested:Z

    :cond_6
    iput-boolean v9, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v8, v7, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return v9

    :catch_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v0

    if-eqz v0, :cond_7

    move v6, v10

    goto :goto_2

    :cond_7
    move v6, v8

    :goto_2
    const/4 v5, 0x0

    move v4, v3

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    return v8

    :goto_3
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result v4

    if-eqz v4, :cond_8

    move v6, v10

    goto :goto_4

    :cond_8
    move v6, v8

    :goto_4
    const/4 v5, 0x0

    move v4, v3

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    throw v0

    :cond_9
    return v9

    :cond_a
    :goto_5
    return v8
.end method

.method public final requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(ILjava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    const/4 v7, 0x0

    if-nez p6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_0

    const-string v1, " Binding"

    goto :goto_0

    :cond_0
    const-string v1, " Starting"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a service in package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v2, " requires a permissions review"

    const-string v3, "ActivityManager"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_1
    const-string/jumbo v0, "android.intent.action.REVIEW_PERMISSIONS"

    const/high16 v4, 0x18800000

    invoke-static {v4, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v0, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p8, :cond_2

    new-instance v9, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/am/ActiveServices$2;

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices$2;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V

    invoke-direct {v9, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    const-string/jumbo v0, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    move-object/from16 v0, p5

    iget-object v9, v6, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    new-array v2, v3, [Landroid/content/Intent;

    aput-object v0, v2, v7

    iget-object v3, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v21

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x4

    const/16 v16, 0x0

    const/high16 v14, 0x54000000

    const/4 v15, 0x0

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move/from16 v11, p4

    move/from16 v12, p7

    move-object/from16 v20, v2

    invoke-virtual/range {v9 .. v21}, Lcom/android/server/am/PendingIntentController;->getIntentSender(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string/jumbo v0, "android.intent.extra.INTENT"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v2, Lcom/android/server/am/ActiveServices$3;

    move/from16 v12, p7

    invoke-direct {v2, v1, v8, v12}, Lcom/android/server/am/ActiveServices$3;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v7

    :cond_3
    return v3
.end method

.method public final rescheduleServiceRestartIfPossibleLocked(JJJLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v4, p5

    add-long v6, p1, p3

    const-wide/16 v1, 0x2

    mul-long v8, v6, v1

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v11, v2

    move-wide v2, v4

    :goto_0
    if-ge v11, v10, :cond_9

    iget-object v12, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    iget-object v13, v12, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x8

    if-nez v13, :cond_0

    iget-object v13, v12, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    move-object v1, v12

    goto/16 :goto_7

    :cond_1
    add-long v13, v2, v6

    move/from16 p3, v1

    move-wide v15, v2

    iget-wide v1, v12, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    cmp-long v3, v13, v1

    if-gtz v3, :cond_3

    if-lez v11, :cond_2

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    add-int/lit8 v13, v11, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-wide v13, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v13, v6

    goto :goto_1

    :cond_2
    const-wide/16 v13, 0x0

    :goto_1
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto :goto_3

    :cond_3
    cmp-long v3, v15, v4

    if-gtz v3, :cond_4

    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    add-long v13, v13, p1

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto :goto_2

    :cond_4
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :goto_2
    add-int/lit8 v1, p3, 0x1

    if-le v11, v1, :cond_5

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    :goto_3
    add-int/lit8 v1, p3, 0x1

    move/from16 v13, p3

    :goto_4
    if-gt v1, v11, :cond_8

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    if-nez v1, :cond_6

    move v14, v1

    move-wide v0, v15

    goto :goto_5

    :cond_6
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    add-int/lit8 v14, v1, -0x1

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    move v14, v1

    iget-wide v0, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :goto_5
    sub-long/2addr v3, v0

    cmp-long v0, v3, v8

    if-ltz v0, :cond_7

    goto :goto_6

    :cond_7
    iget-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-int/lit8 v2, v14, 0x1

    move-wide/from16 v4, p5

    move-wide v15, v0

    move v1, v2

    move v13, v14

    move-object/from16 v0, p0

    goto :goto_4

    :cond_8
    :goto_6
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v0, v0, p5

    iput-wide v0, v12, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-string/jumbo v2, "Rescheduling"

    move-object/from16 v0, p0

    move-wide/from16 v4, p5

    move-object/from16 v3, p7

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    move v1, v13

    move-wide v2, v15

    goto :goto_8

    :goto_7
    iget-wide v0, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide v2, v0

    move v1, v11

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v4, p5

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    move-object/from16 v6, p7

    move-object/from16 v1, p15

    const-string v2, " U=0: not found"

    const-string/jumbo v4, "Unable to resolve service "

    const-string v5, "BIND_EXTERNAL_SERVICE required for "

    const-string v7, "BIND_EXTERNAL_SERVICE failed, could not resolve client package "

    const-string v8, "Can\'t use instance name \'"

    if-eqz p3, :cond_1

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No instanceName provided for sdk sandbox process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v9, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x3

    move/from16 v17, v13

    goto :goto_1

    :cond_2
    const/16 v17, 0x1

    :goto_1
    const-string/jumbo v18, "service"

    const/16 v16, 0x0

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v19, v6

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v12, v19

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v13

    iget-object v15, v9, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_0
    iget-object v15, v15, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v15, ":"

    if-nez v11, :cond_3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v2, v16

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_42

    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v19, v2

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v10

    :goto_2
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-eqz v12, :cond_5

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v4}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v13

    move v6, v5

    :cond_5
    if-eqz v2, :cond_6

    iget-object v10, v13, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ServiceRecord;

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    if-nez v10, :cond_7

    if-nez p13, :cond_7

    if-nez v11, :cond_7

    new-instance v10, Landroid/content/Intent$FilterComparison;

    invoke-direct {v10, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    const/16 p10, 0x0

    iget-object v4, v13, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/server/am/ServiceRecord;

    goto :goto_5

    :cond_7
    const/16 p10, 0x0

    :goto_5
    const-string v4, " U="

    move-object/from16 v16, v15

    const-string v15, "ActivityManager"

    const-string/jumbo v11, "Unable to start service "

    if-eqz v10, :cond_9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    move-object/from16 v22, v2

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    move-object/from16 v23, v7

    const/4 v7, 0x1

    invoke-virtual {v5, v14, v6, v2, v7}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": not found ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v2, ","

    const-string v3, ")"

    invoke-static {v14, v1, v2, v3, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p10

    :cond_8
    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v18, p10

    :goto_6
    move-object/from16 v24, v11

    goto :goto_7

    :cond_9
    move-object/from16 v22, v2

    move-object/from16 v23, v7

    const/4 v7, 0x1

    :cond_a
    move-object/from16 v18, v10

    goto :goto_6

    :goto_7
    const-wide/16 v10, 0x400

    if-nez v18, :cond_e

    if-eqz v1, :cond_e

    new-instance v4, Landroid/content/pm/ServiceInfo;

    invoke-direct {v4}, Landroid/content/pm/ServiceInfo;-><init>()V

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v5, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    invoke-interface {v2, v5, v10, v11, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-object/from16 v2, p10

    :goto_8
    if-eqz v2, :cond_d

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    if-ne v5, v6, :cond_c

    iput-object v2, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/app/ForegroundServiceDelegationOptions;->mForegroundServiceTypes:I

    iput v5, v4, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v2, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz p11, :cond_b

    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v11, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-direct {v11, v0}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v12

    move-object/from16 v12, p10

    invoke-static/range {v4 .. v10}, Lcom/android/server/am/ActiveServices;->getProcessNameForService(Landroid/content/pm/ServiceInfo;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v27, v5

    move-object v5, v6

    new-instance v25, Lcom/android/server/am/ServiceRecord;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 v36, -0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v28, v27

    move/from16 v33, p12

    move-object/from16 v26, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v4

    move/from16 v30, v6

    move-object/from16 v29, v7

    move-object/from16 v34, v11

    invoke-direct/range {v25 .. v38}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLcom/android/server/am/ActiveServices$ServiceRestarter;Ljava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v25

    move-object/from16 v2, v27

    move-object/from16 v4, v31

    move-object/from16 v6, v34

    iget v7, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientNotificationId:I

    iput v7, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget-object v1, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientNotification:Landroid/app/Notification;

    iput-object v1, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    iput-object v0, v6, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v13, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v13, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    iput v14, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    goto :goto_9

    :cond_b
    move-object/from16 v12, p10

    move-object/from16 v0, v18

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/am/ActiveServices;->generateAdditionalSeInfoFromService(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v1, v0, v12}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/ComponentName;)V

    return-object v1

    :cond_c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startForegroundServiceDelegate failed, uid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not match clientUid:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object v5, v12

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "startForegroundServiceDelegate failed, could not resolve client package "

    invoke-static {v1, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v5, v12

    move-object/from16 v12, p10

    const-string v1, " and "

    const-string/jumbo v2, "Service lookup failed: "

    const-string/jumbo v11, "association not allowed between packages "

    if-nez v18, :cond_39

    if-eqz p14, :cond_f

    const-wide/32 v27, 0x10800400

    goto :goto_a

    :cond_f
    const-wide/32 v27, 0x10000400

    :goto_a
    if-eqz p18, :cond_10

    const-wide v29, 0x200000000L

    or-long v27, v27, v29

    :cond_10
    :try_start_3
    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v7, v10, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_11

    :try_start_4
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_10

    move-object/from16 v30, v2

    move-object v2, v10

    const/4 v10, 0x1

    move-object/from16 v39, v1

    move-object v1, v7

    move-object v0, v8

    move-object/from16 v17, v13

    move v8, v14

    move-object/from16 v40, v30

    const/16 p10, 0x1

    move-object v13, v4

    move-object v14, v5

    move v7, v6

    move-object/from16 v30, v12

    move-wide/from16 v5, v27

    move-object/from16 v4, p6

    move-object v12, v9

    move/from16 v9, p8

    :try_start_5
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_f

    move/from16 v27, v7

    move-object v7, v3

    move/from16 v3, v27

    move-wide/from16 v27, v5

    if-eqz v1, :cond_11

    :try_start_6
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v9, v4

    goto :goto_c

    :catch_1
    move-object v10, v7

    move v2, v8

    move-object/from16 p15, v11

    move-object v6, v14

    move-object/from16 v14, v39

    :goto_b
    move-object/from16 v41, v40

    goto/16 :goto_26

    :cond_11
    move-object/from16 v9, v30

    :goto_c
    if-nez v9, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v30

    :cond_12
    if-eqz p2, :cond_13

    iget v1, v9, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_13

    if-eqz p3, :cond_14

    :cond_13
    move-object/from16 v0, p2

    goto :goto_d

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' with non-isolated non-sdk sandbox service \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_d
    if-eqz p3, :cond_16

    iget v1, v9, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_15

    goto :goto_e

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Service cannot be both sdk sandbox and isolated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_e
    new-instance v10, Landroid/content/ComponentName;

    iget-object v1, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v22, :cond_17

    move-object/from16 v13, v22

    goto :goto_f

    :cond_17
    move-object v13, v10

    :goto_f
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v8, v2, v14, v1}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v1, v39

    :try_start_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v4, v40

    :try_start_8
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v2, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Ljava/lang/String;)V

    return-object v2

    :catch_2
    move-object/from16 v41, v4

    move-object v10, v7

    move v2, v8

    move-object/from16 p15, v11

    move-object v6, v14

    :goto_10
    move-object v14, v1

    goto/16 :goto_26

    :catch_3
    move-object v10, v7

    move v2, v8

    move-object/from16 p15, v11

    move-object v6, v14

    move-object/from16 v41, v40

    goto :goto_10

    :cond_18
    move-object/from16 v1, v39

    move-object/from16 v4, v40

    iget-object v2, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v9, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    and-int/lit8 v22, v6, 0x4

    move-object/from16 v40, v4

    const-string v4, " is not an isolatedProcess"

    move-object/from16 v39, v1

    const-string v1, "BIND_EXTERNAL_SERVICE failed, "

    if-eqz v22, :cond_20

    if-eqz p13, :cond_1f

    move/from16 v22, v2

    :try_start_9
    iget-boolean v2, v9, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v2, :cond_1e

    if-nez p17, :cond_1d

    and-int/lit8 v2, v6, 0x2

    if-eqz v2, :cond_1c

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    :try_start_a
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    move-object v6, v4

    move-object v2, v5

    const-wide/16 v4, 0x0

    move-object/from16 v21, v20

    move-object/from16 v20, v2

    move v2, v8

    move-object v8, v6

    move-object v6, v14

    move-object/from16 v14, v39

    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->isSameApp(IIJLjava/lang/String;)Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5

    move v4, v2

    move-object v2, v6

    if-eqz v1, :cond_1b

    :try_start_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v5, 0x400

    invoke-interface {v1, v2, v5, v6, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1a

    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5, v9}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    new-instance v6, Landroid/content/pm/ApplicationInfo;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, v9}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v6, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v9, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v6, Landroid/content/ComponentName;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v9, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_19

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    goto :goto_13

    :catch_4
    :goto_11
    move-object v6, v2

    move v2, v4

    move-object v10, v7

    :goto_12
    move-object/from16 p15, v11

    goto/16 :goto_b

    :cond_19
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v16

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_13
    invoke-direct {v9, v1, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v13, v9

    move-object v9, v5

    goto/16 :goto_14

    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "BIND_EXTERNAL_SERVICE failed, calling package not owned by calling UID "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move v4, v2

    move-object v2, v6

    goto :goto_11

    :catch_6
    move v4, v8

    move-object v2, v14

    move-object/from16 v14, v39

    goto :goto_11

    :catch_7
    move-object v2, v14

    move-object/from16 v14, v39

    move-object v6, v2

    move-object v10, v7

    move v2, v8

    goto :goto_12

    :cond_1c
    move v2, v8

    move-object v8, v4

    move v4, v2

    move-object v2, v14

    move-object/from16 v14, v39

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move v4, v8

    move-object v2, v14

    move-object/from16 v14, v39

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "BIND_PACKAGE_ISOLATED_PROCESS cannot be applied to an external service."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move v4, v8

    move-object v2, v14

    move-object/from16 v14, v39

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not exported"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move v4, v8

    move-object v2, v14

    move-object/from16 v14, v39

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    move/from16 v21, v8

    move-object v8, v4

    move/from16 v4, v21

    move/from16 v22, v2

    move-object v2, v14

    move-object/from16 v21, v20

    move-object/from16 v14, v39

    move-object/from16 v20, v5

    if-nez p13, :cond_38

    move-object v6, v13

    move-object v13, v10

    :goto_14
    if-eqz p16, :cond_22

    if-nez p17, :cond_21

    goto :goto_15

    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Either BIND_SHARED_ISOLATED_PROCESS or BIND_PACKAGE_ISOLATED_PROCESS should be set. Not both."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4

    :cond_22
    :goto_15
    const-string v1, "BIND_SHARED_ISOLATED_PROCESS failed, "

    if-nez p16, :cond_23

    if-eqz p17, :cond_24

    :cond_23
    :try_start_d
    iget v5, v9, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_37

    :cond_24
    if-eqz p17, :cond_26

    iget-object v5, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_16

    :cond_25
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "BIND_PACKAGE_ISOLATED_PROCESS cannot be used for services running in the main app process."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_16
    if-eqz p16, :cond_29

    if-eqz v0, :cond_28

    iget v5, v9, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_27

    goto :goto_17

    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has not set the allowSharedIsolatedProcess  attribute."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "instanceName must be provided for binding a service into a shared isolated process."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4

    :cond_29
    :goto_17
    if-lez v3, :cond_2f

    :try_start_e
    iget v1, v9, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_9

    const/high16 v5, 0x20000000

    and-int/2addr v5, v1

    if-eqz v5, :cond_2a

    move/from16 v10, p10

    goto :goto_18

    :cond_2a
    const/4 v10, 0x0

    :goto_18
    if-eqz v10, :cond_2b

    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is only available for the SYSTEM user, calling userId is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4

    return-object v30

    :cond_2b
    :try_start_10
    iget-object v5, v9, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v5, v8, v10, v1}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v1}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v1

    if-eqz v1, :cond_2d

    move-object/from16 v1, p0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v16

    iget-object v3, v12, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_9

    :try_start_11
    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v8, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const/4 v10, 0x1

    const/4 v7, 0x0

    move/from16 v9, p8

    move-object v0, v1

    move-object v2, v3

    move-object v1, v8

    move-object/from16 p15, v11

    move-object/from16 v41, v40

    move-object/from16 v3, p1

    move v8, v4

    move-object v11, v6

    move-wide/from16 v5, v27

    move-object/from16 v4, p6

    :try_start_12
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object v10, v3

    if-nez v1, :cond_2c

    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    iget-object v0, v12, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_8

    return-object v30

    :catch_8
    :goto_19
    move-object/from16 v6, p7

    goto/16 :goto_25

    :catchall_0
    move-exception v0

    goto :goto_1a

    :cond_2c
    :try_start_15
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    iget-object v1, v12, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    goto :goto_1b

    :catchall_1
    move-exception v0

    move-object v10, v3

    goto :goto_1a

    :catchall_2
    move-exception v0

    move-object v10, v7

    move-object/from16 p15, v11

    move-object/from16 v41, v40

    :goto_1a
    iget-object v1, v12, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_9
    move-object v10, v7

    move-object/from16 p15, v11

    move-object/from16 v41, v40

    goto :goto_19

    :cond_2d
    move-object/from16 v0, p0

    move-object v10, v7

    move-object/from16 p15, v11

    move-object/from16 v41, v40

    move-object v11, v6

    move v6, v3

    move-object/from16 v16, v17

    :goto_1b
    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1, v9}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_2e

    move-object/from16 v4, v30

    goto :goto_1c

    :cond_2e
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    :goto_1c
    iput-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, v16

    goto :goto_1d

    :cond_2f
    move-object/from16 v0, p0

    move-object v10, v7

    move-object/from16 p15, v11

    move-object/from16 v41, v40

    move-object v11, v6

    move-object v1, v9

    move-object/from16 v8, v17

    :goto_1d
    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/am/ServiceRecord;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_8

    if-nez v9, :cond_36

    if-eqz p11, :cond_36

    :try_start_17
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v3, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-direct {v3, v0}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_d

    move-object v4, v11

    move-object v11, v2

    move-object v2, v4

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p16

    move/from16 v7, p17

    move-object/from16 v25, v3

    move-object/from16 v3, p7

    :try_start_18
    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->getProcessNameForService(Landroid/content/pm/ServiceInfo;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v26
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_c

    move-object v6, v3

    :try_start_19
    new-instance v16, Lcom/android/server/am/ServiceRecord;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-nez p16, :cond_31

    if-eqz p17, :cond_30

    goto :goto_1f

    :cond_30
    const/16 v29, 0x0

    :goto_1e
    move/from16 v27, p4

    move-object/from16 v28, p5

    move/from16 v24, p12

    move-object/from16 v23, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v13

    move/from16 v21, v22

    move-object/from16 v22, v11

    goto :goto_20

    :cond_31
    :goto_1f
    move/from16 v29, p10

    goto :goto_1e

    :goto_20
    invoke-direct/range {v16 .. v29}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLcom/android/server/am/ActiveServices$ServiceRestarter;Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_b

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v11, v22

    move-object/from16 v9, v23

    move-object/from16 v3, v25

    :try_start_1a
    iput-object v1, v3, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_21
    if-ltz v3, :cond_33

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v7, :cond_32

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_22

    :catch_a
    move/from16 v2, p9

    move-object/from16 v18, v1

    goto :goto_26

    :cond_32
    :goto_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    :cond_33
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_23
    if-ltz v3, :cond_35

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v7, :cond_34

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_a

    :cond_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    :cond_35
    move-object/from16 v18, v1

    goto :goto_25

    :catch_b
    :goto_24
    move/from16 v2, p9

    move-object/from16 v18, v9

    goto :goto_26

    :catch_c
    move-object v6, v3

    goto :goto_24

    :catch_d
    move-object/from16 v6, p7

    goto :goto_24

    :cond_36
    move-object/from16 v6, p7

    move-object/from16 v18, v9

    :goto_25
    move/from16 v2, p9

    :catch_e
    :goto_26
    move-object/from16 v0, v18

    goto/16 :goto_28

    :cond_37
    move-object v6, v2

    move v2, v4

    move-object v10, v7

    move-object/from16 p15, v11

    move-object v9, v13

    move-object/from16 v41, v40

    :try_start_1b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    move-object v6, v2

    move v2, v4

    move-object v10, v7

    move-object/from16 p15, v11

    move-object/from16 v41, v40

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not an externalService"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_e

    :catch_f
    move v2, v8

    move-object v6, v14

    move-object/from16 v14, v39

    move-object/from16 v41, v40

    :goto_27
    move-object v10, v3

    move-object/from16 p15, v11

    goto :goto_26

    :catch_10
    move-object/from16 v41, v2

    move-object v6, v5

    move-object/from16 v30, v12

    move v2, v14

    move-object v14, v1

    move-object v12, v9

    goto :goto_27

    :catch_11
    :cond_39
    move-object/from16 v41, v2

    move-object v10, v3

    move-object v6, v5

    move-object/from16 p15, v11

    move-object/from16 v30, v12

    move v2, v14

    move-object v14, v1

    move-object v12, v9

    goto :goto_26

    :goto_28
    if-eqz v0, :cond_41

    iput-object v6, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    iput v2, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    :try_start_1c
    iget-object v1, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_1c} :catch_12

    :catch_12
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v2, v3, v6, v1}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    move-object/from16 v1, p15

    invoke-static {v1, v6, v14}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v4, v41

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_3a
    iget-object v1, v12, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    const/4 v7, 0x2

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 p17, p6

    move/from16 p16, p8

    move-object/from16 p10, v1

    move/from16 p15, v2

    move-object/from16 p12, v3

    move/from16 p18, v4

    move-object/from16 p11, v5

    move/from16 p13, v7

    move-object/from16 p14, v10

    invoke-virtual/range {p10 .. p18}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3b

    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string/jumbo v1, "blocked by firewall"

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3b
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->exported:Z

    const/4 v4, 0x0

    move/from16 p10, p8

    move/from16 p11, p9

    move-object/from16 p12, v1

    move/from16 p14, v2

    move/from16 p15, v3

    move/from16 p13, v4

    invoke-static/range {p10 .. p15}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v1

    move/from16 v9, p10

    move/from16 v8, p11

    const-string/jumbo v2, "Permission Denial: Accessing service "

    const-string v3, ", uid="

    const-string v4, " from pid="

    if-eqz v1, :cond_3d

    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-static {v9, v2, v4, v3, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that is not exported from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "not exported from uid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-static {v9, v2, v4, v3, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_3d
    const-string/jumbo v1, "android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string/jumbo v1, "android.permission.BIND_VISUAL_QUERY_DETECTION_SERVICE"

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string/jumbo v1, "android.permission.BIND_WEARABLE_SENSING_SERVICE"

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string/jumbo v1, "android.permission.BIND_ON_DEVICE_SANDBOXED_INFERENCE_SERVICE"

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    :cond_3e
    const/16 v1, 0x3e8

    if-eq v8, v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-static {v9, v2, v4, v3, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requiring permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can only be bound to from the system."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string/jumbo v1, "can only be bound to by the system."

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3f
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v1, :cond_40

    if-eqz v6, :cond_40

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager$1()Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v1, v8, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Appop Denial: Accessing service "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-static {v9, v0, v4, v3, v2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requires appop "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v30

    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActiveServices;->generateAdditionalSeInfoFromService(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-object/from16 v12, v30

    invoke-direct {v1, v0, v12}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/ComponentName;)V

    return-object v1

    :cond_41
    move-object/from16 v12, v30

    return-object v12

    :cond_42
    move-object v0, v11

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t use custom instance name \'"

    const-string v3, "\' without expicit component in Intent"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3
    move-exception v0

    :try_start_1d
    monitor-exit v15
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final schedulePendingServiceStartLocked(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_5

    if-lez v0, :cond_5

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v3, p1, :cond_4

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Not scheduling restart of crashed service "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-string v4, " - system is shutting down"

    invoke-static {v2, v1, v4, v0}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    iget-object v4, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_1

    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempting to schedule restart of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when found in map: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    move v8, v6

    goto :goto_0

    :cond_2
    move v8, v3

    :goto_0
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_19

    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iget-wide v14, v9, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_a

    sub-int/2addr v9, v6

    move/from16 v16, v3

    :goto_1
    if-ltz v9, :cond_9

    const-wide/16 v17, 0x0

    iget-object v10, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v11, v10, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    move/from16 v19, v6

    const/4 v6, 0x3

    if-eqz v11, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v11, v6, v7, v3, v3}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(IILcom/android/server/uri/GrantUri;Ljava/lang/String;)V

    iput-object v3, v10, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    :cond_3
    iget-object v3, v10, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_6

    iget v3, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-ge v3, v6, :cond_5

    iget v3, v10, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const/4 v6, 0x6

    if-ge v3, v6, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Canceling start item "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v10, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " in service "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-static {v6, v10, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v19

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    iget-wide v10, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    sub-long v21, v21, v10

    const-wide/16 v10, 0x2

    mul-long v21, v21, v10

    cmp-long v3, v12, v21

    if-gez v3, :cond_7

    move-wide/from16 v12, v21

    :cond_7
    cmp-long v3, v14, v21

    if-gez v3, :cond_8

    move-wide/from16 v14, v21

    :cond_8
    :goto_3
    add-int/lit8 v9, v9, -0x1

    move/from16 v6, v19

    const/4 v3, 0x0

    goto :goto_1

    :cond_9
    move/from16 v19, v6

    const-wide/16 v17, 0x0

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move/from16 v3, v16

    goto :goto_4

    :cond_a
    move/from16 v19, v6

    const-wide/16 v17, 0x0

    const/4 v3, 0x0

    :goto_4
    if-eqz p2, :cond_d

    invoke-virtual {v1, v3}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v6

    if-nez v6, :cond_b

    const/16 v20, 0x0

    return v20

    :cond_b
    iget-boolean v6, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v6, :cond_c

    if-nez v3, :cond_c

    const-string/jumbo v3, "start-requested"

    goto :goto_5

    :cond_c
    const-string/jumbo v3, "connection"

    goto :goto_5

    :cond_d
    const-string/jumbo v3, "always"

    :goto_5
    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v6, v9, v17

    if-nez v6, :cond_e

    iget v6, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    iput-wide v12, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    :goto_6
    move/from16 v16, v8

    goto :goto_7

    :cond_e
    iget v6, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    move/from16 v11, v19

    if-le v6, v11, :cond_f

    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    sub-int/2addr v6, v11

    int-to-long v12, v6

    mul-long/2addr v9, v12

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_6

    :cond_f
    move/from16 v16, v8

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v7, v14

    cmp-long v7, v4, v7

    if-lez v7, :cond_10

    iput v11, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    iput-wide v12, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_7

    :cond_10
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    int-to-long v7, v7

    mul-long/2addr v9, v7

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v7, v9, v12

    if-gez v7, :cond_11

    iput-wide v12, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    :cond_11
    :goto_7
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v7, v4

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    if-eqz v16, :cond_12

    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v8, 0x0

    goto :goto_8

    :cond_12
    move/from16 v8, v16

    :goto_8
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices;->getExtraRestartTimeInBetweenLocked()J

    move-result-wide v9

    add-long/2addr v9, v4

    iget-wide v11, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v9, v4

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices;->getExtraRestartTimeInBetweenLocked()J

    move-result-wide v9

    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v7, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    add-long/2addr v9, v11

    :goto_9
    iget-wide v11, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v19, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_a
    if-ltz v7, :cond_18

    iget-object v13, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ServiceRecord;

    iget-wide v13, v13, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v15, v13, v9

    cmp-long v15, v11, v15

    if-ltz v15, :cond_14

    move v15, v7

    add-long v6, v13, v9

    cmp-long v16, v11, v6

    if-gez v16, :cond_15

    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_9

    :cond_14
    move v15, v7

    :cond_15
    add-long/2addr v13, v9

    cmp-long v6, v11, v13

    if-ltz v6, :cond_16

    goto :goto_b

    :cond_16
    add-int/lit8 v7, v15, -0x1

    goto :goto_a

    :cond_17
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move/from16 v8, v16

    :cond_18
    :goto_b
    const/4 v6, 0x0

    goto :goto_c

    :cond_19
    move v6, v3

    move/from16 v16, v8

    const-wide/16 v17, 0x0

    iput v6, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move-wide/from16 v7, v17

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    const-string/jumbo v3, "persistent"

    move/from16 v8, v16

    :goto_c
    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    if-nez v8, :cond_1d

    const/4 v7, -0x1

    if-ne v2, v7, :cond_1a

    iput-boolean v6, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    monitor-exit v2

    goto :goto_d

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1a
    :goto_d
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_e
    if-ge v6, v2, :cond_1c

    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    iget-wide v7, v7, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_1b

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_f

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1c
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    const-string v2, "ChimeraManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    move-result-object v6

    if-nez v2, :cond_1e

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_1e
    iget-object v6, v6, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    :goto_10
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-wide/32 v6, 0x2bf20

    goto :goto_11

    :cond_1f
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    :goto_11
    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :cond_20
    const-string/jumbo v2, "Scheduling"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    const/16 v19, 0x1

    return v19
.end method

.method public final scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-boolean v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_TIMEOUT:J

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BACKGROUND_TIMEOUT:J

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/utils/AnrTimer;->start(JLjava/lang/Object;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/server/am/ProcessServiceRecord;->mScheduleServiceTimeoutPending:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 14

    const-string v7, "Failed delivering service starts"

    const-string v8, "ActivityManager"

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x0

    if-lez v3, :cond_9

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v3, v11, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const/4 v12, 0x1

    if-nez v3, :cond_1

    if-le v0, v12, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v11, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v11, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/2addr v3, v12

    iput v3, v11, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    iget-object v3, v11, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v5, v11, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-nez v5, :cond_2

    new-instance v5, Lcom/android/server/uri/UriPermissionOwner;

    iget-object v6, v11, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-direct {v5, v6, v11}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    iput-object v5, v11, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    :cond_2
    iget-object v5, v11, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    check-cast v4, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v5, v11, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget v6, v11, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    iget-object v13, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    invoke-virtual {v3, v4, v5, v6, v13}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    const/4 v6, 0x0

    const-string/jumbo v4, "start"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;IZ)V

    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-nez v3, :cond_6

    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v12, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/utils/AnrTimer;->start(JLjava/lang/Object;)V

    goto :goto_1

    :cond_5
    iput-boolean v10, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    :cond_6
    :goto_1
    iget v3, v11, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v3, v12, :cond_7

    const/4 v10, 0x2

    :cond_7
    iget v3, v11, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v3, :cond_8

    or-int/lit8 v10, v10, 0x1

    :cond_8
    new-instance v3, Landroid/app/ServiceStartArgs;

    iget-boolean v4, v11, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v5, v11, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v6, v11, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4, v5, v10, v6}, Landroid/app/ServiceStartArgs;-><init>(ZIILandroid/content/Intent;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    if-nez p3, :cond_a

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_a
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v9}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    :try_start_0
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {v3, p1, v0}, Landroid/app/IApplicationThread$Delegator;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :goto_2
    const-string/jumbo v3, "Unexpected exception"

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :goto_3
    invoke-static {v8, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :goto_4
    invoke-static {v8, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_6
    if-ge v10, v7, :cond_b

    const/4 v5, 0x1

    const/16 v6, 0x13

    move v4, v3

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    instance-of v1, v0, Landroid/os/TransactionTooLargeException;

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    check-cast v0, Landroid/os/TransactionTooLargeException;

    throw v0

    :cond_d
    :goto_7
    return-void
.end method

.method public final serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "ActivityManager"

    if-eqz p1, :cond_c

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p2, v5, :cond_6

    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    const/16 p2, 0x3e8

    if-eq p4, p2, :cond_0

    iput p4, p1, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    :cond_0
    if-eqz p4, :cond_4

    if-eq p4, v5, :cond_4

    if-eq p4, v2, :cond_3

    const/4 v1, 0x3

    if-eq p4, v1, :cond_2

    if-ne p4, p2, :cond_1

    invoke-virtual {p1, p3, v5, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown service start result: "

    invoke-static {p4, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1, p3, v4, v4}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object p2

    if-eqz p2, :cond_5

    iput v4, p2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    iget p3, p2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/2addr p3, v5

    iput p3, p2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p3, v4, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    iget p2, p1, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ne p2, p3, :cond_5

    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p3, v4, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    :cond_5
    :goto_0
    if-nez p4, :cond_8

    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    goto :goto_1

    :cond_6
    if-ne p2, v2, :cond_8

    if-nez v3, :cond_7

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Service done with onDestroy, but not inDestroying: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", app="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    iget p2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq p2, v5, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Service done with onDestroy, but executeNesting="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    goto :goto_2

    :cond_8
    :goto_1
    move v5, v4

    :cond_9
    :goto_2
    iget-object p2, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result p4

    if-nez p4, :cond_b

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    move v6, v4

    goto :goto_5

    :cond_b
    :goto_4
    const/16 v4, 0x14

    goto :goto_3

    :goto_5
    const/4 v5, 0x0

    move v4, v3

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Done executing unknown service from pid "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V
    .locals 5

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v0, :cond_a

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v2, v0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, v0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    :cond_3
    if-eqz p5, :cond_5

    if-eqz p4, :cond_4

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object p4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p4, :cond_5

    iget-object p5, p4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p5, p5, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    if-lez p5, :cond_5

    iget-object p2, p2, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p2, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object p4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p5, p4}, Lcom/android/server/am/ProcessStateController;->runUpdate(ILcom/android/server/am/ProcessRecord;)Z

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    :cond_6
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 p4, 0x0

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p2, p2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result p5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v2, p5, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v2, p5, v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    if-eqz p3, :cond_7

    iget-object p5, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {p5, p1, v2}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    iput-object p4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_7
    :goto_3
    monitor-exit p2

    goto :goto_5

    :goto_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_5
    if-eqz p3, :cond_a

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_9

    iget-boolean p2, p2, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_9
    invoke-virtual {p1, p4}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    :cond_a
    return-void
.end method

.method public final serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V
    .locals 6

    const-string v0, "Context.startForegroundService() did not then call Service.startForeground(): "

    const-wide/16 v1, 0x40

    :try_start_0
    const-string/jumbo v3, "serviceForegroundTimeout()"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/internal/os/TimeoutRecord;->forServiceStartWithEndTime(Ljava/lang/String;J)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    iget-object v3, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-eqz v5, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    iget-object v5, v5, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v5, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;

    const/4 v5, 0x0

    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v3, 0x43

    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    int-to-long v3, p0

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3
    :goto_2
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)V

    monitor-exit v3

    goto :goto_0

    :goto_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 8

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    const/16 v7, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V

    return-void
.end method

.method public final serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x40

    :try_start_0
    const-string/jumbo v4, "serviceTimeout()"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-eqz v5, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-wide v15, v2

    goto/16 :goto_7

    :cond_0
    :try_start_2
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v6, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v6, :cond_1

    iget-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-eqz v6, :cond_2

    :cond_1
    move-wide v15, v2

    goto/16 :goto_6

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-boolean v8, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_TIMEOUT:J

    goto :goto_0

    :cond_3
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BACKGROUND_TIMEOUT:J

    :goto_0
    sub-long v8, v6, v8

    iget-object v10, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const-wide/16 v11, 0x0

    :goto_1
    const/4 v13, 0x0

    if-ltz v10, :cond_6

    iget-object v14, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v14, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ServiceRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v15, v2

    :try_start_3
    iget-wide v2, v14, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v17, v2, v8

    if-gez v17, :cond_4

    goto :goto_2

    :cond_4
    cmp-long v13, v2, v11

    if-lez v13, :cond_5

    move-wide v11, v2

    :cond_5
    add-int/lit8 v10, v10, -0x1

    move-wide v2, v15

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :cond_6
    move-wide v15, v2

    move-object v14, v13

    :goto_2
    if-eqz v14, :cond_7

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    iget-object v2, v2, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;

    move-result-object v2

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Timeout executing service: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-direct {v5, v3, v8, v9}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    invoke-virtual {v5, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v8, "    "

    invoke-virtual {v14, v5, v8}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Lcom/android/server/am/ActiveServices$1;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Lcom/android/server/am/ActiveServices$1;

    const-wide/32 v8, 0x6ddd00

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-wide v8, v14, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long/2addr v6, v8

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/android/internal/os/TimeoutRecord;->forServiceExec(Ljava/lang/String;J)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/os/TimeoutRecord;->setExpiredTimer(Ljava/lang/AutoCloseable;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v13

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)V

    iget-boolean v2, v5, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_TIMEOUT:J

    add-long/2addr v11, v2

    goto :goto_3

    :cond_8
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BACKGROUND_TIMEOUT:J

    add-long/2addr v11, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v11, v2

    :goto_3
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v2, v11, v12, v1}, Lcom/android/server/utils/AnrTimer;->start(JLjava/lang/Object;)V

    :goto_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v13, :cond_9

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {v0, v1, v13}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_9
    :goto_5
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_6
    :try_start_5
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mActiveServiceAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)V

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_7
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_3
    move-exception v0

    move-wide v15, v2

    :goto_8
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v6, p5

    move/from16 v7, p7

    if-eqz v7, :cond_0

    iget v1, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    iget v2, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    :goto_0
    move v8, v1

    move v9, v2

    goto :goto_1

    :cond_0
    iget v1, v6, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget v2, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    goto :goto_0

    :goto_1
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eq v8, v12, :cond_2

    if-ne v9, v12, :cond_1

    goto :goto_3

    :cond_1
    move/from16 v3, p3

    :goto_2
    move-object v5, v6

    goto/16 :goto_a

    :cond_2
    :goto_3
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result v4

    if-ne v8, v12, :cond_3

    move v8, v4

    :cond_3
    if-ne v9, v12, :cond_b

    invoke-virtual {v10, v3}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object v9

    iput-object v9, v6, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v1, v4

    move-object v5, v6

    move-object/from16 v4, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result v2

    move-object/from16 v16, v4

    move v4, v1

    move-object/from16 v1, v16

    if-ne v2, v12, :cond_5

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    iget-object v14, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v15, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;

    const/4 v6, 0x0

    invoke-direct {v15, v0, v3, v13, v6}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;I)V

    invoke-virtual {v14, v15, v11}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-eqz v6, :cond_4

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_6

    const/16 v2, 0x36

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :cond_6
    :goto_5
    iget-object v13, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessList;->getUidProcStateLOSP(I)I

    move-result v13

    :try_start_0
    iget-object v14, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move v14, v12

    :goto_6
    iget-object v15, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessList;->getUidProcessCapabilityLOSP(I)I

    move-result v15

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    goto :goto_7

    :cond_7
    move v15, v11

    :goto_7
    const-string/jumbo v12, "[callingPackage: "

    const-string v11, "; callingUid: "

    move/from16 p6, v2

    const-string v2, "; uidState: "

    invoke-static {v3, v12, v1, v11, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; uidBFSL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_8

    const-string/jumbo v2, "[BFSL]"

    goto :goto_8

    :cond_8
    const-string/jumbo v2, "n/a"

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; tempAllowListReason:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_9

    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v9, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",reasonCode:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    invoke-static {v11}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",duration:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v9, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mDuration:J

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ",callingUid:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    const-string v9, ">; allowWiu:"

    const-string v11, "; targetSdkVersion:"

    invoke-static {v4, v2, v9, v11, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-string v4, "; callerTargetSdkVersion:"

    const-string v9, "; startForegroundCount:"

    invoke-static {v2, v14, v4, v9, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v2, v5, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    const-string v4, "; bindFromPackage:"

    const-string v9, ": isBindService:"

    invoke-static {v2, v4, v6, v9, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string/jumbo v2, "]"

    invoke-static {v2, v1, v7}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    iput-boolean v2, v5, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    iput-object v1, v5, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    :cond_a
    move/from16 v9, p6

    goto :goto_a

    :cond_b
    move-object/from16 v0, p0

    goto/16 :goto_2

    :goto_a
    if-eqz v7, :cond_c

    iput v8, v5, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    iput v9, v5, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    goto :goto_d

    :cond_c
    if-nez p8, :cond_d

    iput v8, v5, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iput v9, v5, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    const/4 v2, -0x1

    goto :goto_b

    :cond_d
    iget v1, v5, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    iput v8, v5, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    :cond_e
    iget v1, v5, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    if-ne v1, v2, :cond_f

    iput v9, v5, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    :cond_f
    :goto_b
    iget v1, v5, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    if-ne v1, v2, :cond_11

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;

    const/4 v6, 0x1

    invoke-direct {v4, v0, v3, v1, v6}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v4, v0}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_10

    const/4 v2, -0x1

    goto :goto_c

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_c
    iput v2, v5, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    :cond_11
    iget v0, v5, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    iget v0, v5, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    iput v0, v5, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    :cond_12
    :goto_d
    return-void
.end method

.method public final setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;IIIZ)V
    .locals 41

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v0, p2

    move/from16 v11, p5

    const-string/jumbo v12, "Service.startForeground() not allowed due to mAllowStartForeground false: service "

    const-string v13, "Foreground service started from background can not have location/camera/microphone access: service "

    const-string/jumbo v14, "startForegroundDelayMs:"

    const-string/jumbo v15, "Time limit already exhausted for foreground service type "

    const-string/jumbo v2, "Service.startForeground() not allowed due to bg restriction: service "

    const-string/jumbo v3, "Service.startForeground() not allowed due to app op: service "

    const/4 v7, 0x1

    if-eqz v0, :cond_42

    if-eqz p3, :cond_41

    const-string/jumbo v9, "startForeground(): "

    invoke-static {v9, v6}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager$1()Landroid/app/AppOpsManager;

    move-result-object v9

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x44

    invoke-virtual {v9, v5, v8, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v7, "startForeground"

    invoke-virtual {v4, v9, v5, v8, v7}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instant app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, " does not have permission to create foreground services"

    invoke-static {v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instant app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, " does not have permission to create foreground services, ignoring."

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_3

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.FOREGROUND_SERVICE"

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v9, "startForeground"

    invoke-virtual {v4, v7, v8, v5, v9}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(IILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v4

    const/4 v5, -0x1

    if-ne v11, v5, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v11

    :goto_1
    and-int v8, v7, v4

    if-eq v8, v7, :cond_6

    const-string/jumbo v8, "debug.skip_fgs_manifest_type_check"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "foregroundServiceType "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0x%08X"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not a subset of foregroundServiceType attribute "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0x%08X"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in service element of manifest file"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v8, 0xf8f6317

    invoke-static {v8, v9, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nThis will be an exception once the target SDK level is UDC"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    and-int/lit16 v4, v7, 0x800

    const/16 v5, 0x800

    if-eqz v4, :cond_7

    if-eq v7, v5, :cond_7

    const-string v4, "ActivityManager"

    const-string/jumbo v8, "startForeground(): FOREGROUND_SERVICE_TYPE_SHORT_SERVICE is combined with other types. SHORT_SERVICE will be ignored."

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v7, v7, -0x801

    :cond_7
    move v4, v7

    iget-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v7, :cond_8

    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    iput-boolean v9, v6, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mServiceFGAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v8, v6}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)V

    const/16 v19, 0x1

    const/16 v20, 0x1

    goto :goto_3

    :cond_8
    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_3
    invoke-virtual {v1, v4, v6}, Lcom/android/server/am/ActiveServices;->shouldAllowBootCompletedStart(ILcom/android/server/am/ServiceRecord;)Z

    move-result v8

    if-eqz v8, :cond_40

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    :try_start_0
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager$1()Landroid/app/AppOpsManager;

    move-result-object v9

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v7

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v10, 0x4c

    invoke-virtual {v9, v10, v5, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    const/4 v10, 0x3

    const/4 v9, 0x1

    if-eqz v5, :cond_b

    if-eq v5, v9, :cond_a

    if-ne v5, v10, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Foreground not allowed as per app op"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_28

    :cond_a
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v9

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_c

    :try_start_1
    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActiveServices;->isTempAllowedByAlarmClock(I)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v8, v2}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    move/from16 v16, v9

    :goto_6
    move/from16 v3, p6

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_28

    :cond_c
    const/4 v2, 0x0

    move/from16 v16, v3

    goto :goto_6

    :goto_7
    invoke-virtual {v1, v3, v6}, Lcom/android/server/am/ActiveServices;->isBgFgsRestrictionEnabled(ILcom/android/server/am/ServiceRecord;)Z

    move-result v18

    iget v3, v6, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    if-nez v16, :cond_2d

    const/16 v5, 0x800

    if-ne v4, v5, :cond_e

    iget-boolean v5, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_d
    new-instance v0, Landroid/app/StartForegroundCalledOnStoppedServiceException;

    const-string/jumbo v3, "startForeground(SHORT_SERVICE) called on a service that\'s not started."

    invoke-direct {v0, v3}, Landroid/app/StartForegroundCalledOnStoppedServiceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    :goto_8
    :try_start_3
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    const/16 v5, 0x800

    if-ne v4, v5, :cond_f

    move/from16 v21, v9

    :goto_9
    move v7, v3

    goto :goto_a

    :cond_f
    move/from16 v21, v2

    goto :goto_9

    :goto_a
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v5, :cond_10

    const-wide/16 v9, 0x0

    goto :goto_b

    :cond_10
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v26

    move-wide/from16 v9, v26

    :goto_b
    invoke-virtual {v6, v9, v10, v2, v3}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    iget-boolean v2, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v2, :cond_15

    if-eqz v25, :cond_15

    const/4 v2, -0x1

    :try_start_5
    iput v2, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iput v2, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iput v2, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v6, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v10

    move v11, v7

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v14, v8

    const/4 v8, 0x0

    move v15, v4

    move v4, v9

    const/4 v9, 0x0

    move-object v5, v10

    move/from16 v28, v11

    move-object v10, v14

    move v11, v15

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x2

    :try_start_6
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "ActivityManager"

    const-string v3, "FGS type change to/from SHORT_SERVICE:  BFSL DENIED."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-eqz v18, :cond_13

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_12

    goto :goto_c

    :cond_12
    if-eqz v21, :cond_14

    move v7, v14

    move v2, v15

    goto :goto_d

    :cond_13
    :goto_c
    if-eqz v21, :cond_14

    move v2, v14

    move v7, v15

    goto :goto_d

    :cond_14
    move v2, v15

    move v7, v2

    :goto_d
    move/from16 v30, v7

    move/from16 v21, v11

    move/from16 v29, v14

    move v11, v2

    move v14, v15

    move/from16 v15, v17

    move-object/from16 v17, v10

    move/from16 v10, v29

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_28

    :cond_15
    move v11, v4

    move/from16 v28, v7

    move-object v10, v8

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/16 v17, 0x2

    :try_start_7
    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v4, 0x12f13d8d

    invoke-static {v4, v5, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v3, :cond_1c

    :try_start_8
    invoke-virtual {v1, v11}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, -0x1

    iput v3, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iput v3, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iput v3, v6, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v7}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v7

    move v8, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    move v14, v8

    const/4 v8, 0x0

    move/from16 v21, v9

    const/4 v9, 0x0

    move/from16 v14, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V

    if-eqz v18, :cond_16

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_16
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_17

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mTimeLimitedFgsInfo:Landroid/util/SparseArray;

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    invoke-virtual {v1, v11}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    if-eqz v2, :cond_1b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v7, 0x5265c00

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->getTimeLimitExceededAt()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->getFirstFgsStartRealtime()J

    move-result-wide v26

    cmp-long v3, v26, v3

    if-ltz v3, :cond_1a

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-le v3, v14, :cond_1a

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v7, v3

    if-eqz v3, :cond_18

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-wide v3, v3, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_18

    goto :goto_e

    :cond_18
    const-wide/16 v23, 0x0

    cmp-long v2, v7, v23

    if-gtz v2, :cond_19

    goto :goto_f

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {v2, v0}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    :goto_e
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->reset()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1b
    :goto_f
    move-object/from16 v17, v10

    move/from16 v21, v11

    move v15, v14

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    goto/16 :goto_15

    :cond_1c
    move/from16 v15, v17

    :try_start_9
    iget v2, v6, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-nez v2, :cond_20

    :try_start_a
    iget-boolean v2, v6, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-nez v2, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v6, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    sub-long/2addr v2, v4

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1e

    invoke-static {v6}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v8}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v8

    move-wide/from16 v26, v2

    move-object v2, v4

    move v4, v7

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    move v3, v5

    move-object v5, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v17, v10

    move/from16 v21, v11

    move-wide/from16 v10, v26

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v2, :cond_1d

    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_10
    const/4 v14, 0x0

    goto :goto_12

    :catchall_3
    move-exception v0

    :goto_11
    move-object/from16 v1, p0

    goto/16 :goto_28

    :cond_1d
    :try_start_c
    iput-object v1, v6, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_10

    :goto_12
    :try_start_d
    iput-boolean v14, v6, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    const/4 v7, 0x1

    goto :goto_13

    :catchall_4
    move-exception v0

    const/4 v14, 0x0

    goto :goto_11

    :cond_1e
    move-object/from16 v17, v10

    move/from16 v21, v11

    const/4 v14, 0x0

    move v7, v14

    :goto_13
    move/from16 v29, v7

    move v11, v14

    move/from16 v30, v11

    const/4 v10, 0x1

    goto :goto_15

    :cond_1f
    move-object/from16 v17, v10

    move/from16 v21, v11

    const/4 v14, 0x0

    const/4 v10, 0x1

    goto :goto_14

    :cond_20
    move-object/from16 v17, v10

    move/from16 v21, v11

    const/4 v10, 0x1

    const/4 v14, 0x0

    if-lt v2, v10, :cond_21

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V

    move/from16 v29, v10

    move v11, v14

    move/from16 v30, v11

    goto :goto_15

    :cond_21
    :goto_14
    move v11, v14

    move/from16 v29, v11

    move/from16 v30, v29

    :goto_15
    if-nez v29, :cond_22

    iget-boolean v1, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v1, :cond_22

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    :try_start_e
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V

    goto :goto_16

    :cond_22
    move-object/from16 v1, p0

    :goto_16
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->maybeLogFgsLogicChange()V

    if-nez v30, :cond_26

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz v18, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v25, :cond_24

    const-string v3, " (Called on SHORT_SERVICE)"

    goto :goto_17

    :cond_24
    const-string v3, ""

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v2, "ActivityManager"

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    move-object/from16 v12, v17

    invoke-virtual {v1, v12, v10}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v2, p1

    :try_start_f
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object v6, v2

    :try_start_10
    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v3, 0xa5fa937

    invoke-static {v3, v4, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-nez v2, :cond_25

    move v7, v10

    goto :goto_18

    :cond_25
    new-instance v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {v0, v9}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    move-object v6, v2

    goto/16 :goto_28

    :cond_26
    move-object/from16 v12, v17

    move/from16 v7, v16

    :goto_18
    if-nez v7, :cond_2c

    if-nez v21, :cond_27

    move/from16 v2, p5

    move/from16 v3, v21

    invoke-virtual {v1, v6, v3, v14, v2}, Lcom/android/server/am/ActiveServices;->validateForegroundServiceType(Lcom/android/server/am/ServiceRecord;III)Landroid/util/Pair;

    move-result-object v2

    move-object v9, v2

    goto :goto_1b

    :cond_27
    move/from16 v2, p5

    move/from16 v3, v21

    const/high16 v8, 0x40000000    # 2.0f

    and-int v4, v3, v8

    if-eqz v4, :cond_28

    goto :goto_19

    :cond_28
    move v8, v14

    :goto_19
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    move v5, v3

    const/4 v9, 0x0

    :goto_1a
    if-eqz v4, :cond_2a

    invoke-virtual {v1, v6, v4, v8, v2}, Lcom/android/server/am/ActiveServices;->validateForegroundServiceType(Lcom/android/server/am/ServiceRecord;III)Landroid/util/Pair;

    move-result-object v9

    not-int v4, v4

    and-int/2addr v5, v4

    iget-object v4, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v10, :cond_29

    goto :goto_1b

    :cond_29
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    goto :goto_1a

    :cond_2a
    :goto_1b
    iget-object v2, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v2, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_2b

    move/from16 v16, v7

    move v2, v8

    :goto_1c
    move/from16 v8, v29

    goto :goto_1d

    :cond_2b
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x3

    move-object v2, v6

    move v6, v0

    :try_start_11
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object v6, v2

    :try_start_12
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2c
    move/from16 v3, v21

    move/from16 v16, v7

    move v2, v14

    goto :goto_1c

    :catchall_6
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_28

    :catchall_7
    move-exception v0

    move v14, v2

    goto/16 :goto_28

    :cond_2d
    move v14, v2

    move/from16 v28, v3

    move v3, v4

    move-object v12, v8

    move v10, v9

    const/4 v15, 0x2

    move v8, v2

    move v11, v8

    :goto_1d
    if-nez v16, :cond_3a

    iget v4, v6, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v4, v0, :cond_2e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    iput v0, v6, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    :cond_2e
    move-object/from16 v0, p3

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v0, Landroid/app/Notification;->flags:I

    iput-object v0, v6, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    iget-boolean v0, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_2f

    move/from16 v0, v28

    if-eq v3, v0, :cond_30

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FGS type change for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_2f
    move/from16 v0, v28

    :cond_30
    :goto_1e
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v6}, Lcom/android/server/am/ProcessStateController;->setForegroundServiceType(ILcom/android/server/am/ServiceRecord;)V

    iget-boolean v3, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v3, :cond_38

    iget v3, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    if-nez v4, :cond_33

    new-instance v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    invoke-direct {v4}, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;-><init>()V

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-boolean v5, v1, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    iput-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_32

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v5, :cond_32

    iget v5, v5, Lcom/android/server/am/UidRecord;->mCurProcState:I

    if-gt v5, v15, :cond_31

    move v7, v10

    goto :goto_1f

    :cond_31
    move v7, v14

    :goto_1f
    iput-boolean v7, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    iput-boolean v7, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    :cond_32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v14, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    iget-object v5, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v13, 0x0

    invoke-static {v3, v13, v14}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    :cond_33
    iget v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    add-int/2addr v3, v10

    iput v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v10, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v3

    iput v3, v6, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v3

    iput-boolean v3, v6, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgsAtEntering:Z

    iget v3, v6, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    add-int/2addr v3, v10

    iput v3, v6, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v6, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    if-nez v20, :cond_35

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v4

    if-eqz v4, :cond_34

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-virtual {v4, v10, v5, v13, v14}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_20

    :catchall_8
    move-exception v0

    goto :goto_21

    :cond_34
    :goto_20
    monitor-exit v3

    goto :goto_22

    :goto_21
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :try_start_14
    throw v0

    :cond_35
    const/16 v20, 0x0

    :goto_22
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v29

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v36, ""

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, -0x1

    const/16 v30, 0x4c

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v28, v3

    move/from16 v31, v4

    move-object/from16 v32, v5

    invoke-virtual/range {v28 .. v39}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v5, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v3, v5, v4, v10}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(ILandroid/content/ComponentName;Z)V

    iget-boolean v3, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v3, :cond_37

    if-eqz v22, :cond_36

    const/4 v7, 0x3

    goto :goto_23

    :cond_36
    const/4 v7, 0x2

    goto :goto_23

    :cond_37
    move v7, v10

    :goto_23
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v40, v6

    move v6, v2

    move-object/from16 v2, v40

    :try_start_15
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-object v6, v2

    :try_start_16
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceStart(ILcom/android/server/am/ServiceRecord;)V

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :try_start_18
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices;->updateNumForegroundServicesLocked()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_24

    :catchall_9
    move-exception v0

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :try_start_1a
    throw v0

    :cond_38
    :goto_24
    invoke-virtual {v1, v6, v11}, Lcom/android/server/am/ActiveServices;->maybeUpdateShortFgsTrackingLocked(Lcom/android/server/am/ServiceRecord;Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v6, v10}, Lcom/android/server/am/ServiceRecord;->postNotification(Z)V

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_39

    invoke-virtual {v1, v12, v10}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    :cond_39
    iget v2, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x2

    invoke-virtual {v2, v3, v14}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v4, 0x12f13d8d

    invoke-static {v4, v5, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v1, v0, v6}, Lcom/android/server/am/ActiveServices;->maybeUpdateFgsTrackingLocked(ILcom/android/server/am/ServiceRecord;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :cond_3a
    if-eqz v20, :cond_3c

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1b
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_25

    :catchall_a
    move-exception v0

    goto :goto_26

    :cond_3b
    :goto_25
    monitor-exit v2

    goto :goto_27

    :goto_26
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    throw v0

    :cond_3c
    :goto_27
    if-eqz v19, :cond_49

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x4c

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p2, v5

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_28
    if-eqz v20, :cond_3e

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1c
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_3d

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v4, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_29

    :catchall_b
    move-exception v0

    goto :goto_2a

    :cond_3d
    :goto_29
    monitor-exit v2

    goto :goto_2b

    :goto_2a
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    throw v0

    :cond_3e
    :goto_2b
    if-eqz v19, :cond_3f

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x4c

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p2, v6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    :cond_3f
    throw v0

    :cond_40
    move v3, v4

    new-instance v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FGS type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed to start from BOOT_COMPLETED!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null notification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    move v10, v7

    iget-boolean v0, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_49

    const-string/jumbo v0, "stopForeground(): "

    invoke-static {v0, v6}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    iget v0, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->maybeStopFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_43

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    const/4 v9, 0x0

    iput v9, v6, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_2c

    :cond_43
    const/4 v9, 0x0

    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_45

    iget-boolean v0, v6, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    if-nez v0, :cond_44

    invoke-virtual {v6, v9}, Lcom/android/server/am/ServiceRecord;->postNotification(Z)V

    :cond_44
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V

    const/16 v17, 0x2

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_45

    iput v9, v6, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    :cond_45
    :goto_2c
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v9, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1d
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_2d

    :catchall_c
    move-exception v0

    goto :goto_2f

    :cond_46
    :goto_2d
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v18

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v19, 0x4c

    move-object/from16 v17, v0

    move/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-wide v2, v6, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    iget-wide v4, v6, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_47

    sub-long/2addr v2, v4

    long-to-int v8, v2

    move v4, v8

    goto :goto_2e

    :cond_47
    const/4 v4, 0x0

    :goto_2e
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V

    move-object v6, v2

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v3

    :try_start_1e
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceStop(ILcom/android/server/am/ServiceRecord;)V

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    const/4 v9, 0x0

    iput v9, v6, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    iput-boolean v9, v6, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    invoke-static {v6}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v6, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v3, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v3, v2, v9}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(ILandroid/content/ComponentName;Z)V

    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_48

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    iget-object v0, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v0, v10}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    :cond_48
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices;->updateNumForegroundServicesLocked()V

    return-void

    :catchall_d
    move-exception v0

    :try_start_1f
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    throw v0

    :goto_2f
    :try_start_20
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    throw v0

    :cond_49
    return-void
.end method

.method public final setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V
    .locals 11

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget-object v2, v8, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, v8, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    iget-object v1, v8, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final setServiceRestartBackoffEnabledLocked(Ljava/lang/String;Z)V
    .locals 9

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, p2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    cmp-long v0, v2, v7

    if-lez v0, :cond_1

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v7, v4

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    const-string/jumbo v2, "Rescheduling"

    const-string/jumbo v3, "shell"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    iget-object p0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v6, v6, 0x1

    move-object p0, v0

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object v0, p0

    iget-object p0, v0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final shouldAllowBootCompletedStart(ILcom/android/server/am/ServiceRecord;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v0

    iget-object p2, p2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v1, 0x11ad1fc7

    invoke-static {v1, v2, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    const/16 p2, 0xc8

    if-ne v0, p2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public final shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;)I
    .locals 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p3}, Lcom/android/server/am/ProcessList;->getUidProcStateLOSP(I)I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    invoke-static {v1}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result p1

    :cond_0
    const/4 v1, 0x1

    const/4 v5, 0x0

    if-ne p1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2, p3}, Lcom/android/server/am/ProcessList;->getUidProcessCapabilityLOSP(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p3, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/ActiveServices;IZ)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_2
    if-ne p1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    const/4 v7, 0x1

    const-string/jumbo v4, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    move v2, p2

    move v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result p2

    if-nez p2, :cond_4

    const/16 p1, 0x3b

    goto :goto_1

    :cond_3
    move v2, p2

    move v3, p3

    :cond_4
    :goto_1
    if-ne p1, v0, :cond_5

    invoke-virtual {p6}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundFgsStarts()Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p1, 0x35

    :cond_5
    if-ne p1, v0, :cond_8

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, v3, v2, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-wide/32 p2, 0x130ac16c

    invoke-static {p2, p3, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p2

    const/16 p3, 0x3e

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object p2, p2, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p2, v3}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p6, p2, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {p6}, Landroid/util/ArraySet;->size()I

    move-result p6

    sub-int/2addr p6, v1

    :goto_2
    if-ltz p6, :cond_8

    invoke-virtual {p2, p6}, Lcom/android/server/am/UidRecord;->getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p6, p6, -0x1

    goto :goto_2

    :cond_7
    :goto_3
    move p1, p3

    :cond_8
    if-ne p1, v0, :cond_a

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p2, p3, v3}, Landroid/app/ActivityManagerInternal;->isAssociatedCompanionApp(II)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string/jumbo v4, "android.permission.REQUEST_COMPANION_START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    const/4 v6, -0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result p2

    if-nez p2, :cond_9

    goto :goto_4

    :cond_9
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string/jumbo v4, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    const/4 v6, -0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result p2

    if-nez p2, :cond_a

    :goto_4
    const/16 p1, 0x39

    :cond_a
    if-ne p1, v0, :cond_c

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2, v3}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object p2

    if-eqz p2, :cond_c

    sget-object p1, Lcom/android/server/am/ActivityManagerService;->FAKE_TEMP_ALLOW_LIST_ITEM:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    if-ne p2, p1, :cond_b

    const/16 p1, 0x12c

    goto :goto_5

    :cond_b
    iget p1, p2, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    :cond_c
    :goto_5
    if-ne p1, v0, :cond_d

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_d

    const/16 p1, 0x3f

    :cond_d
    if-ne p1, v0, :cond_e

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2, v3}, Landroid/app/ActivityManagerInternal;->isProfileOwner(I)Z

    move-result p2

    if-eqz p2, :cond_e

    const/16 p1, 0x38

    :cond_e
    if-ne p1, v0, :cond_f

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager$1()Landroid/app/AppOpsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p3, p3, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    if-eqz p3, :cond_f

    const/16 p3, 0x80

    invoke-virtual {p2, p3, v3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_f

    const/16 p1, 0x147

    :cond_f
    if-ne p1, v0, :cond_11

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager$1()Landroid/app/AppOpsManager;

    move-result-object p2

    const/16 p3, 0x2f

    invoke-virtual {p2, p3, v3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p3

    if-nez p3, :cond_10

    const/16 p1, 0x44

    goto :goto_6

    :cond_10
    const/16 p3, 0x5e

    invoke-virtual {p2, p3, v3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_11

    const/16 p1, 0x45

    :cond_11
    :goto_6
    if-ne p1, v0, :cond_12

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "default_input_method"

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p6

    invoke-static {p2, p3, p6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/16 p1, 0x47

    :cond_12
    if-ne p1, v0, :cond_13

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    if-eqz p0, :cond_13

    if-eqz p5, :cond_13

    iget-object p0, p5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->hasRequestForegroundServiceExemption()Z

    move-result p0

    if-eqz p0, :cond_13

    const/16 p0, 0x3e8

    return p0

    :cond_13
    return p1
.end method

.method public final shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p3}, Lcom/android/server/am/ProcessList;->getUidProcStateLOSP(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-gt v1, v2, :cond_0

    invoke-static {v1}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-ne v1, v3, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x32

    :cond_1
    if-ne v1, v3, :cond_2

    invoke-virtual {p5}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result p5

    if-eqz p5, :cond_2

    const/16 v1, 0x35

    :cond_2
    const/16 p5, 0x3e8

    if-ne v1, v3, :cond_4

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eqz v2, :cond_3

    if-eq v2, p5, :cond_3

    const/16 v4, 0x403

    if-eq v2, v4, :cond_3

    const/16 v4, 0x7d0

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x33

    :cond_4
    :goto_1
    const/4 v7, 0x0

    if-ne v1, v3, :cond_5

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;

    invoke-direct {v4, p3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v2, v4, v7}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5
    if-ne v1, v3, :cond_6

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p3}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 p0, 0x46

    return p0

    :cond_6
    if-ne v1, v3, :cond_7

    if-eqz p4, :cond_7

    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz p4, :cond_7

    iget-boolean p4, p4, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz p4, :cond_7

    const/16 v1, 0x3c

    :cond_7
    if-ne v1, v3, :cond_8

    const/4 v8, -0x1

    const/4 v9, 0x1

    const-string/jumbo v6, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    move v4, p2

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result p2

    if-nez p2, :cond_9

    const/16 v1, 0x3a

    goto :goto_2

    :cond_8
    move v5, p3

    :cond_9
    :goto_2
    if-ne v1, v3, :cond_d

    if-eqz v5, :cond_a

    if-ne v5, p5, :cond_b

    :cond_a
    move-object v9, p1

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p2

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move-object v4, p2

    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const-wide/16 v7, 0x0

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->isSameApp(IIJLjava/lang/String;)Z

    move-result p1

    goto :goto_4

    :goto_3
    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {p0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 v1, 0x41

    goto :goto_5

    :cond_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "callingPackage:"

    const-string p2, " does not belong to callingUid:"

    invoke-static {v5, p1, v9, p2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "215003903"

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_d
    :goto_5
    if-ne v1, v3, :cond_e

    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v5}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/16 p0, 0x37

    return p0

    :cond_e
    return v1
.end method

.method public final shouldServiceTimeOutLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    iget-object p0, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v0, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v4

    :goto_1
    invoke-virtual {p0, v4, v5, p1, p2}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    iget-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App restricted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/am/ActiveServices;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/app/Notification$Builder;

    const-string v4, "ALERTS"

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v4, "com.android.fgs-bg-restricted"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1080c3d

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x106001c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "Foreground Service BG-Launch Restricted"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v2, 0x3d

    invoke-virtual {p0, v0, v2, p1, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IForegroundServiceObserver;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/app/IForegroundServiceObserver;->onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final startForegroundServiceDelegateLocked(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startForegroundServiceDelegateLocked "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/ForegroundServiceDelegationOptions;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/app/ForegroundServiceDelegationOptions;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    const/16 v21, 0x0

    if-ltz v3, :cond_1

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object v5, v5, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    invoke-virtual {v5, v1}, Landroid/app/ForegroundServiceDelegationOptions;->isSameDelegate(Landroid/app/ForegroundServiceDelegationOptions;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startForegroundServiceDelegate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/ForegroundServiceDelegationOptions;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already exists, multiple connections are not allowed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v21

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    iget v10, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientPid:I

    iget v3, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    iget-object v9, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v0, v10, v3, v9}, Lcom/android/server/am/ActiveServices;->canStartForegroundServiceLocked(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "startForegroundServiceDelegateLocked aborted, app is in the background"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v21

    :cond_2
    iget-object v5, v1, Landroid/app/ForegroundServiceDelegationOptions;->mClientAppThread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_3

    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v6

    :try_start_0
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_a

    move v11, v3

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v5, v4

    const/4 v4, 0x0

    move v7, v5

    const/4 v5, 0x0

    move-object v8, v6

    const/4 v6, -0x1

    move v13, v7

    const/4 v7, 0x0

    move-object v14, v8

    const/4 v8, 0x0

    move v15, v13

    const/4 v13, 0x1

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v20, v16

    const/16 v16, 0x0

    move-object/from16 v22, v20

    const/16 v20, 0x0

    move-object/from16 v17, v1

    move-object/from16 v1, v22

    move-object/from16 v22, v2

    move-object v2, v0

    move-object/from16 v0, p2

    invoke-virtual/range {v2 .. v20}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v4

    move-object v5, v3

    move-object/from16 v3, v17

    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v4, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v4, v1}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    const/4 v13, 0x1

    iput-boolean v13, v4, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    new-instance v12, Lcom/android/server/am/ForegroundServiceDelegation;

    invoke-direct {v12, v3, v0}, Lcom/android/server/am/ForegroundServiceDelegation;-><init>(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)V

    iput-object v12, v4, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object v6, v2, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v12, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v13, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    iget-object v6, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget v3, v3, Landroid/app/ForegroundServiceDelegationOptions;->mForegroundServiceTypes:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, v4, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    sget-object v6, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v3, v5

    move-object v5, v4

    move-object v4, v3

    move-object v14, v1

    move-object v1, v9

    move v3, v11

    move-object v9, v0

    move-object v0, v2

    move v2, v10

    move-object/from16 v10, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V

    iget-object v2, v14, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5}, Lcom/android/server/am/ProcessStateController;->startService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z

    invoke-virtual {v0, v2, v13}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v13, v4, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_6
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v1, v3}, Lcom/android/server/am/BatteryStatsService;->noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v14}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v15

    iget-object v1, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x4c

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    move/from16 v17, v1

    move-object/from16 v18, v2

    invoke-virtual/range {v14 .. v25}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActiveServices;->registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mFGSLogger:Lcom/android/server/am/ForegroundServiceTypeLoggerModule;

    iget-object v3, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logForegroundServiceStart(ILcom/android/server/am/ServiceRecord;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V

    if-eqz v9, :cond_7

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v3, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;

    invoke-direct {v3, v9, v10, v12}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;-><init>(Landroid/content/ServiceConnection;Landroid/content/ComponentName;Lcom/android/server/am/ForegroundServiceDelegation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    iget v0, v1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_8

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {v1, v13}, Lcom/android/server/am/ServiceRecord;->postNotification(Z)V

    :cond_8
    return v13

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_9
    :goto_4
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "startForegroundServiceDelegateLocked retrieveServiceLocked returns null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v21

    :cond_a
    move/from16 v26, v10

    move-object v10, v2

    move/from16 v2, v26

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to find app for caller "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when startForegroundServiceDelegateLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZILjava/lang/String;IZLjava/lang/String;)Landroid/content/ComponentName;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v9, v4, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x63

    invoke-static {v3, v12, v11, v2, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v3, v12, v11, v2}, Lcom/android/server/am/BatteryStatsService;->noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v3

    move v13, v3

    goto :goto_1

    :cond_1
    move v13, v10

    :goto_1
    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v2

    move/from16 v25, v2

    goto :goto_2

    :cond_2
    move/from16 v25, v10

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZI)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "!!"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/4 v2, 0x2

    if-eqz v13, :cond_4

    move/from16 v20, v2

    goto :goto_3

    :cond_4
    move/from16 v20, v9

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    if-nez p9, :cond_7

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v13, p6

    move-object/from16 v2, p7

    move/from16 v17, v9

    goto :goto_6

    :cond_7
    :goto_4
    move/from16 v13, p6

    move/from16 v17, v2

    move-object/from16 v2, p7

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v2, 0x3

    goto :goto_4

    :goto_6
    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/ActiveServices;->getShortProcessNameForStats(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    :goto_7
    move-object/from16 v19, v2

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    :goto_8
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->mProcessStateOnRequest:I

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v21, v11

    const/16 v11, 0x1dc

    const-wide/16 v26, 0x0

    move/from16 v23, p8

    move-object/from16 v22, p10

    move/from16 v24, v2

    invoke-static/range {v11 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IZILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIZJ)V

    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_b

    if-eqz p5, :cond_b

    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_9

    :cond_a
    move v9, v10

    :goto_9
    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    if-eqz v9, :cond_d

    invoke-virtual {v8}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    goto :goto_a

    :cond_b
    if-nez p4, :cond_c

    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {v8, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_d
    :goto_a
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    :goto_b
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IILjava/lang/String;IZZLandroid/app/BackgroundStartPrivileges;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v11, p7

    move-object/from16 v12, p9

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object v3, v1

    check-cast v3, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v6

    const-string/jumbo v1, "start service"

    const/4 v13, 0x0

    invoke-virtual {v0, v5, v2, v1, v13}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(ILcom/android/server/am/ServiceRecord;Ljava/lang/String;Z)V

    iget-boolean v14, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v3, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x1

    iput-boolean v15, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    iput-boolean v11, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    move-object v3, v1

    new-instance v1, Lcom/android/server/am/ServiceRecord$StartItem;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    add-int/2addr v4, v15

    iput v4, v2, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ge v4, v15, :cond_0

    iput v15, v2, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    :cond_0
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    move-object v7, v3

    const/4 v3, 0x0

    move-object/from16 v8, p5

    move/from16 v10, p6

    move-object/from16 v9, p10

    move-object v15, v7

    move v7, v5

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILjava/lang/String;Ljava/lang/String;I)V

    move v5, v7

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v1, :cond_3

    iget-boolean v1, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, v2, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    :goto_0
    move-object/from16 v9, p10

    goto :goto_4

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result v1

    invoke-static {v1, v5}, Lcom/android/server/am/ActivityManagerService;->doesReasonCodeAllowSchedulingUserInitiatedJobs(II)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move/from16 v3, p4

    move-object/from16 v9, p10

    invoke-virtual {v1, v5, v3, v9}, Lcom/android/server/am/ActivityManagerService;->canScheduleUserInitiatedJobs(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v13

    goto :goto_3

    :cond_5
    move-object/from16 v9, p10

    :goto_2
    const/4 v1, 0x1

    :goto_3
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    if-ne v3, v1, :cond_6

    goto :goto_4

    :cond_6
    iput-boolean v1, v2, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    :goto_4
    if-eqz v11, :cond_8

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v3, v8, v4, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v18

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v19, 0x4c

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    move-object/from16 v17, v1

    move/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v17 .. v28}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    goto :goto_7

    :goto_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    :goto_7
    iget v1, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreecessController;->shouldDelayService(Lcom/android/server/am/ServiceRecord;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->delayService:Z

    if-eqz v3, :cond_a

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->delayCount:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_9

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/am/ServiceRecord;->delayCount:I

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    :cond_9
    iput-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->delayService:Z

    iget-object v3, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayServiceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->delayServiceStop:Z

    if-eqz v3, :cond_b

    iput-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->delayServiceStop:Z

    goto :goto_8

    :cond_b
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->isNowAppLaunching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->delayService:Z

    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->serviceDelayed:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/am/ServiceRecord;->delayTimeout:J

    iput v8, v2, Lcom/android/server/am/ServiceRecord;->delayCount:I

    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayServiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x65

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    :cond_c
    :goto_8
    if-nez p8, :cond_11

    if-nez v11, :cond_11

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_d

    goto :goto_9

    :cond_d
    const/16 v4, 0xa

    if-lt v3, v4, :cond_11

    const/4 v13, 0x1

    goto :goto_a

    :cond_e
    :goto_9
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v3, :cond_f

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    :cond_f
    iget-object v3, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, v0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v3, v4, :cond_10

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delaying start of: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    :cond_10
    const/4 v8, 0x1

    move v13, v8

    :cond_11
    :goto_a
    invoke-virtual {v12}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v12}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v12, v3}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    if-ne v4, v3, :cond_12

    goto :goto_b

    :cond_12
    iput-object v3, v2, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    goto :goto_b

    :cond_14
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    :goto_b
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_15

    iput-object v3, v2, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    :cond_15
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

    if-nez v3, :cond_16

    new-instance v3, Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ServiceRecord;)V

    iput-object v3, v2, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

    :cond_16
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v4, p8

    move-object v3, v2

    move v6, v5

    move-object v10, v9

    move v5, v13

    move v9, v14

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZILjava/lang/String;IZLjava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public final startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;ZILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    if-eqz v1, :cond_3

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    if-lez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move/from16 v1, v22

    :goto_0
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object/from16 v4, v21

    :goto_1
    move-object/from16 v24, v4

    move-object/from16 v25, v6

    move/from16 v23, v7

    move/from16 v26, v8

    move v6, v1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to find app for caller "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when starting service "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move/from16 v23, v4

    move v6, v5

    move-object/from16 v24, v21

    move-object/from16 v25, v24

    move/from16 v26, v22

    :goto_2
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v8, p3

    move/from16 v11, p5

    move-object/from16 v9, p7

    move/from16 v12, p9

    move-object/from16 v7, p13

    move-object/from16 v4, p14

    move v10, v3

    move v14, v6

    move/from16 v6, p12

    move-object v3, v2

    move-object v2, v0

    move v0, v5

    move/from16 v5, p11

    invoke-virtual/range {v2 .. v20}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v15

    if-nez v15, :cond_4

    goto/16 :goto_10

    :cond_4
    iget-object v1, v15, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v1, :cond_6

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "!"

    iget-object v2, v15, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const-string/jumbo v2, "private to package"

    :goto_3
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const-string/jumbo v2, "startService(): "

    invoke-static {v2, v1}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v6, p10

    move v9, v0

    move-object v5, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;ZZ)V

    move-object v12, v1

    move v13, v3

    move-object v8, v4

    move-object v1, v5

    move v3, v2

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v4, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v2, v2, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Trying to start service with non-existent user! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {v2, v1, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-object v21

    :cond_7
    if-eqz p11, :cond_8

    move/from16 v2, p12

    goto :goto_4

    :cond_8
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_4
    if-eqz p11, :cond_9

    move-object/from16 v4, p13

    goto :goto_5

    :cond_9
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    :goto_5
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eqz p11, :cond_a

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x400

    move/from16 v7, p9

    :try_start_1
    invoke-interface {v6, v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_0
    :cond_a
    move/from16 v7, p9

    :catch_1
    :goto_6
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLOSP(I)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->isTempAllowedByAlarmClock(I)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActiveServices;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    move v7, v9

    goto :goto_7

    :cond_b
    move/from16 v7, v22

    :goto_7
    if-eqz p6, :cond_d

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedStart()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0, v13, v1}, Lcom/android/server/am/ActiveServices;->isBgFgsRestrictionEnabled(ILcom/android/server/am/ServiceRecord;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startForegroundService() not allowed due to mAllowStartForeground false: service "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p6, v0

    move-object/from16 p7, v1

    move/from16 p10, v3

    move/from16 p11, v4

    move/from16 p8, v5

    move/from16 p9, v6

    move/from16 p12, v7

    move/from16 p13, v8

    invoke-virtual/range {p6 .. p13}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;IIIIIZ)V

    const-wide/32 v0, 0xa5fa937

    invoke-static {v0, v1, v13}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_10

    :cond_c
    new-instance v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {v0, v2}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object v10, v0

    move-object v11, v1

    if-eqz p6, :cond_f

    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager$1()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    if-eq v0, v9, :cond_e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "!!"

    const-string/jumbo v2, "foreground not allowed as per app op"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_e
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startForegroundService not allowed due to app op: service "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-string v9, " from pid="

    move/from16 v17, v2

    const-string v2, " uid="

    invoke-static {v3, v6, v9, v2, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v9, v22

    const/16 v18, 0x1

    goto :goto_8

    :cond_f
    move/from16 v17, v2

    move/from16 v9, p6

    move/from16 v18, v22

    :goto_8
    if-nez v7, :cond_11

    iget-boolean v0, v11, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_10

    if-nez v9, :cond_10

    goto :goto_9

    :cond_10
    move v1, v3

    goto :goto_a

    :cond_11
    :goto_9
    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLOSP(IIILjava/lang/String;ZZZ)I

    move-result v0

    move v5, v2

    move v2, v1

    move v1, v3

    if-eqz v0, :cond_14

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Background start not allowed: service "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-string v6, " from pid="

    const-string v8, " uid="

    invoke-static {v1, v5, v6, v8, v4}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v1, " pkg="

    const-string v5, " startFg?="

    invoke-static {v13, v1, v12, v5, v4}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    if-eqz v18, :cond_12

    goto/16 :goto_10

    :cond_12
    if-eqz v7, :cond_13

    if-eqz v9, :cond_13

    goto/16 :goto_10

    :cond_13
    iget-object v0, v10, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "?"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "app is in background uid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_14
    :goto_a
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    iget-object v1, v11, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const-string/jumbo v4, "startService"

    iget v6, v11, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v2, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_15

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    goto :goto_b

    :cond_15
    move v2, v6

    :goto_b
    const/4 v8, 0x0

    const/4 v7, 0x0

    move/from16 v13, p4

    move/from16 v17, v9

    move-object v12, v10

    move-object/from16 v16, v11

    move/from16 p1, v14

    move/from16 v3, v23

    move-object/from16 v9, v24

    move/from16 v10, v26

    move v11, v2

    move v14, v5

    move-object/from16 v2, v25

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_10

    :cond_16
    move v13, v1

    move/from16 v17, v9

    move-object v12, v10

    move-object/from16 v16, v11

    move/from16 p1, v14

    move v14, v5

    :cond_17
    const/16 v0, 0x1a

    if-ge v14, v0, :cond_18

    if-eqz v17, :cond_18

    move/from16 v7, v22

    goto :goto_c

    :cond_18
    move/from16 v7, v17

    :goto_c
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    :try_start_2
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v5, v1

    goto :goto_d

    :cond_19
    move-object/from16 v5, p7

    :goto_d
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v1, :cond_1a

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    :goto_e
    move v6, v0

    goto :goto_f

    :cond_1a
    const/4 v0, -0x1

    goto :goto_e

    :goto_f
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ServiceRecord;->updateProcessStateOnRequest()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v10, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v11, p9

    move v8, v6

    move v9, v7

    move-object v0, v12

    move-object/from16 v1, v16

    move/from16 v6, p4

    move-object/from16 v12, p10

    move-object v7, v5

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/am/ActiveServices;->deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IZZILandroid/app/BackgroundStartPrivileges;ZLandroid/app/IServiceConnection;)Z

    move-result v13

    move v11, v8

    move/from16 v17, v9

    move v14, v10

    move-object v10, v7

    if-eqz v13, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move/from16 v4, p5

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v7, p9

    move v6, v14

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_1c
    :goto_10
    return-object v21

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v3, p5

    move-object/from16 v9, p10

    move-object v5, v10

    move v6, v11

    move v8, v14

    move/from16 v7, v17

    move-object/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IILjava/lang/String;IZZLandroid/app/BackgroundStartPrivileges;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, v15, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v0, v15, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    :cond_1e
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final stopAllForegroundServicesLocked(ILjava/lang/String;)V
    .locals 12

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v7, :cond_0

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v6, :cond_1

    iget v6, v5, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    const/16 v7, 0x12d

    if-eq v6, v7, :cond_1

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v3, p1, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;IIIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final stopForegroundServiceDelegateLocked(Landroid/app/ForegroundServiceDelegationOptions;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const-string v1, "ActivityManager"

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object v2, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    invoke-virtual {v2, p1}, Landroid/app/ForegroundServiceDelegationOptions;->isSameDelegate(Landroid/app/ForegroundServiceDelegationOptions;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopForegroundServiceDelegateLocked "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/ForegroundServiceDelegationOptions;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stopForegroundServiceDelegateLocked delegate does not exist "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/ForegroundServiceDelegationOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopForegroundServiceDelegateLocked(Landroid/content/ServiceConnection;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const-string v1, "ActivityManager"

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object v3, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mConnection:Landroid/content/ServiceConnection;

    if-ne v3, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopForegroundServiceDelegateLocked "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    invoke-virtual {v2}, Landroid/app/ForegroundServiceDelegationOptions;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mFgsDelegations:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->updateOomAdjSeq()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-void

    :cond_2
    const-string/jumbo p0, "stopForegroundServiceDelegateLocked delegate does not exist"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopInBackgroundLocked(I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ltz v2, :cond_4

    iget-object v6, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v8, p1

    if-ne v9, v8, :cond_3

    iget-boolean v10, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v10, :cond_3

    iget-object v12, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v10, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v11, -0x1

    const/4 v13, 0x0

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLOSP(IIILjava/lang/String;ZZZ)I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eqz v9, :cond_0

    :try_start_0
    const-string/jumbo v7, "application_policy"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v7, "ActivityManager"

    if-eqz v5, :cond_1

    const-string/jumbo v5, "cannot stop service due to MDM policy restriction"

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8, v5}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x7568

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v9, "Stopping service due to app idle: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v6, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_4
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    :goto_2
    if-ltz v6, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    iput-boolean v5, v7, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v0, v7, v3}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_5
    if-lez v2, :cond_6

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_6
    return-void
.end method

.method public final stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/android/server/am/ProcessStateController;->stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    iget-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    :cond_0
    return-void
.end method

.method public final stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZILjava/lang/String;Ljava/lang/String;)I
    .locals 21

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    iget-object v1, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v0, p2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to find app for caller "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when stopping service "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_0
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v8, p3

    move/from16 v12, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v4, p8

    move-object v3, v0

    invoke-virtual/range {v2 .. v20}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZLandroid/app/ForegroundServiceDelegationOptions;ZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v0

    const/4 v10, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    :try_start_0
    const-string/jumbo v3, "application_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move/from16 v5, p4

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move v3, v10

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    invoke-virtual {v2, v0, v10}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_4
    const/4 v0, -0x1

    return v0

    :cond_5
    :goto_2
    return v10
.end method

.method public final stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 8

    const-string/jumbo v0, "stopService(): "

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->traceInstant(Ljava/lang/String;Lcom/android/server/am/ServiceRecord;)V

    const-wide/16 v0, 0x40

    :try_start_0
    const-string/jumbo v2, "stopServiceLocked()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->maybeStopFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x63

    const/4 v6, 0x2

    invoke-static {v5, v2, v3, v4, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0

    :cond_1
    :goto_0
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    invoke-virtual {p0, p1, v2, v2, p2}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final stopServiceTokenLocked(ILandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/ServiceRecord;

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    const/4 p2, 0x0

    if-eqz p3, :cond_7

    if-ltz p1, :cond_5

    invoke-virtual {p3, p1, p2, p2}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v2, p3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v3, :cond_2

    const/4 v4, -0x1

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4, v0, v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(IILcom/android/server/uri/GrantUri;Ljava/lang/String;)V

    iput-object v0, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    :cond_2
    if-ne v2, v1, :cond_1

    :cond_3
    iget v0, p3, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eq v0, p1, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v0, p3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "stopServiceToken startId "

    const-string v2, " is last, but have "

    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " remaining args"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->maybeStopShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->maybeStopFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    iget-object p1, p3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    const/4 v3, 0x2

    invoke-static {v2, p1, v0, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p2, p3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iget-object p1, p3, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p1, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p3, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_1
    iput-boolean p2, p3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {p0, p3, p2, p2, p2}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return p2
.end method

.method public final tryScheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, p0, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;)V
    .locals 13

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_5

    :try_start_0
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lcom/android/server/am/IntentBindRecord;

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz v6, :cond_3

    iget-object v4, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_2

    if-nez p2, :cond_2

    iget-object v4, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_0
    if-ltz v4, :cond_1

    iget-object v7, v6, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_0

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v7, :cond_0

    move v7, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZI)Z
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v5

    goto :goto_2

    :catch_0
    move-object v8, v5

    goto :goto_2

    :cond_2
    move-object v4, p0

    move-object v8, p1

    :try_start_2
    iput-boolean v5, v6, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    goto :goto_2

    :cond_3
    move-object v4, p0

    move-object v8, p1

    :goto_2
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->wasOomAdjUpdated()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    :cond_4
    move v12, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, p2

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    iget-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_5
    :goto_4
    iget-object p0, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .locals 24

    move-object/from16 v1, p0

    const-string/jumbo v0, "unbindServiceLocked: "

    invoke-interface/range {p1 .. p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const-string v4, "ActivityManager"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unbind failed: could not find connection for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const-wide/16 v9, 0x40

    :try_start_0
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v22, v9

    goto/16 :goto_5

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    move v0, v5

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v11, 0x1

    if-lez v6, :cond_b

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    const/4 v12, 0x0

    invoke-virtual {v1, v6, v12, v12, v11}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)I

    move-result v13

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v6, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Connection "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " not removed for binder "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v14, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v14, v14, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v14, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_9

    sget-boolean v15, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v15, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v5, v15, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v5, :cond_4

    iget v5, v14, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v22, v9

    :try_start_1
    const-string/jumbo v9, "unbindService"

    move v10, v13

    const-wide/16 v12, 0x7d0

    invoke-virtual {v15, v5, v9, v12, v13}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)V

    iget-object v5, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    const-string/jumbo v21, "unbindService"

    const-wide/16 v19, 0x7d0

    move/from16 v17, v5

    move-object/from16 v18, v9

    move-object/from16 v16, v15

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;JLjava/lang/String;)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_4
    move-wide/from16 v22, v9

    move v10, v13

    :goto_2
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v5, :cond_6

    iget-object v5, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_5

    iget-object v5, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    sget-object v9, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v12, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v12, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v12, v12, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v12}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    iget-object v15, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget v15, v15, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v13, v12, v5}, Lcom/android/server/am/MARsPolicyManager;->onSpecialUnBindServiceActions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v5, v14, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-boolean v9, v5, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    if-eqz v9, :cond_7

    invoke-static {v5}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    :cond_7
    const/high16 v9, 0x8000000

    invoke-virtual {v6, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v11, v5, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v6, 0x0

    invoke-virtual {v5, v14, v6, v11}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    :cond_8
    if-nez v10, :cond_a

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    move v0, v11

    goto :goto_4

    :cond_9
    move-wide/from16 v22, v9

    :cond_a
    :goto_4
    move-wide/from16 v9, v22

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_b
    move-wide/from16 v22, v9

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_c
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :goto_5
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 13

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$AppOpCallback;

    if-eqz v0, :cond_7

    iget v1, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    if-gtz v1, :cond_6

    iput-boolean v2, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    aget v9, v3, v5

    iget-object v7, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    iget-object v7, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-gtz v11, :cond_0

    if-lez v12, :cond_4

    :cond_0
    iget-object v7, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v2, :cond_2

    if-eq v7, v6, :cond_1

    move v10, v4

    goto :goto_2

    :cond_1
    const/4 v6, 0x3

    :goto_1
    move v10, v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    move v10, v2

    :goto_2
    const/16 v7, 0x100

    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager;->stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    goto :goto_4

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_4
    iget-boolean v0, v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_7
    return-void
.end method

.method public final unscheduleServiceRestartLocked(ILcom/android/server/am/ServiceRecord;Ljava/lang/String;Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p4, :cond_0

    iget-wide v2, p2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long p4, v2, v0

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object v2, p2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v2, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput p1, p2, Lcom/android/server/am/ServiceRecord;->restartCount:I

    iput-wide v0, p2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    iput-wide v0, p2, Lcom/android/server/am/ServiceRecord;->restartTime:J

    iput-wide v0, p2, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    iput-wide v0, p2, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    iget p1, p2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p4, p2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, p4, v0, p3}, [Ljava/lang/Object;

    move-result-object p1

    const p3, 0xf42a6

    invoke-static {p3, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object p1, p2, Lcom/android/server/am/ServiceRecord;->restarter:Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unscheduleShortFgsTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mShortFGSAnrTimer:Lcom/android/server/am/ActiveServices$ProcessAnrTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v0, 0x4c

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateNumForegroundServicesLocked()V
    .locals 12

    sget-object v0, Lcom/android/server/am/ActiveServices;->sNumForegroundServices:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v8, v7, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    move v9, v3

    move v10, v9

    :goto_1
    if-ge v9, v8, :cond_1

    iget-object v11, v7, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ServiceRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v11, :cond_0

    add-int/lit8 v10, v10, 0x1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-lez v10, :cond_2

    add-int/2addr v5, v10

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    new-instance p0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateScreenStateLocked(Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eq v2, v1, :cond_7

    iput-boolean v1, v0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_7

    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v6, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v4

    const/4 v9, 0x0

    const-wide v10, 0x7fffffffffffffffL

    :goto_1
    const-wide/16 v12, 0x0

    if-ltz v6, :cond_4

    iget-object v14, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    const-wide v15, 0x7fffffffffffffffL

    iget-wide v7, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    cmp-long v7, v7, v12

    if-nez v7, :cond_0

    iget-boolean v7, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v7, :cond_3

    iput-boolean v4, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    goto :goto_2

    :cond_0
    iget-boolean v7, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v7, :cond_1

    iget-wide v7, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v7, v7, v12

    if-nez v7, :cond_1

    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    :cond_1
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    move v9, v4

    goto :goto_2

    :cond_2
    iget-wide v7, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v12, v7, v10

    if-gez v12, :cond_3

    move-wide v10, v7

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    const-wide v15, 0x7fffffffffffffffL

    if-eqz v9, :cond_5

    invoke-static {v5, v12, v13}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_3

    :cond_5
    cmp-long v6, v10, v15

    if-gez v6, :cond_6

    invoke-static {v5, v10, v11}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)V
    .locals 8

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p2, p2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p2, p1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    :goto_0
    if-ltz p2, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_1
    if-ltz v3, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    :goto_2
    if-ltz v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_2

    iget-object v7, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_1

    goto :goto_3

    :cond_1
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v6, :cond_2

    move v1, v0

    goto :goto_4

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_5
    iget-boolean p2, p1, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-eq v1, p2, :cond_6

    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, p1, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    iget-object p2, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v1, p2, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    if-eqz p3, :cond_6

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    :cond_6
    :goto_5
    return-void
.end method

.method public final updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    iget-object v4, p1, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_3

    iget-object v5, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .locals 8

    iget-object v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v5, v3

    move v6, v5

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v4, :cond_1

    :cond_0
    iget v2, v2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    or-int/2addr v3, v2

    move v5, v1

    if-nez v2, :cond_1

    move v6, v5

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(ILcom/android/server/am/ProcessRecord;ZZZ)V

    iput-boolean v5, p1, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    return-void
.end method

.method public final updateServiceGroupLocked(Landroid/app/IServiceConnection;II)V
    .locals 3

    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    iget-object v0, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-lez p2, :cond_0

    iput-object v0, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    iput p2, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    iput p3, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    iput v2, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    iput v2, v1, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    goto :goto_1

    :cond_1
    if-lez p2, :cond_2

    iput p2, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    iput p3, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    goto :goto_1

    :cond_2
    iput v2, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    iput v2, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not find connection for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final validateForegroundServiceType(Lcom/android/server/am/ServiceRecord;III)Landroid/util/Pair;
    .locals 7

    invoke-static {}, Landroid/app/ForegroundServiceTypePolicy;->getDefaultPolicy()Landroid/app/ForegroundServiceTypePolicy;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/ForegroundServiceTypePolicy;->getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    move-result-object v6

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result p0

    const/4 p3, -0x1

    if-eq p0, p3, :cond_0

    const/4 p0, 0x1

    :goto_0
    move v5, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v6}, Landroid/app/ForegroundServiceTypePolicy;->checkForegroundServiceTypePolicy(Landroid/content/Context;Ljava/lang/String;IIZLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;)I

    move-result p0

    const/4 v0, 0x2

    const-string v1, " code="

    const-string v2, "ActivityManager"

    const-string v3, " callerApp="

    const-string/jumbo v4, "Starting FGS with type "

    const-string v5, " targetSDK="

    if-eq p0, v0, :cond_7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 p3, 0x4

    const-string p4, ""

    const-string v0, " and the app must be in the eligible state/exemptions to access the foreground only permission"

    if-eq p0, p3, :cond_3

    const/4 p3, 0x5

    if-eq p0, p3, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p3, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires permissions: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->hasForegroundOnlyPermission()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p4, v0

    :cond_2
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requiredPermissions="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->hasForegroundOnlyPermission()Z

    move-result p1

    if-eqz p1, :cond_4

    move-object p4, v0

    :cond_4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    if-ne p4, p3, :cond_6

    if-nez p2, :cond_6

    new-instance p3, Landroid/app/MissingForegroundServiceTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "Starting FGS without a type  callerApp="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/app/MissingForegroundServiceTypeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance p3, Landroid/app/InvalidForegroundServiceTypeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-string p2, " has been prohibited"

    invoke-static {p1, p4, p2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/app/InvalidForegroundServiceTypeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/content/pm/ServiceInfo;->foregroundServiceTypeToLabel(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p3, 0x0

    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
