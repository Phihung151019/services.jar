.class public abstract Lcom/android/server/chimera/PolicyHandler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;
.implements Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;
.implements Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;
.implements Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;
.implements Lcom/android/server/chimera/SystemEventListener$CameraStateListener;
.implements Lcom/android/server/chimera/SystemEventListener$AlwaysRunningQuotaExceedListener;
.implements Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;
.implements Lcom/android/server/chimera/SystemEventListener$PsiMemMonitorListener;
.implements Lcom/android/server/chimera/SystemEventListener$GeniePsiMemMonitorListener;


# static fields
.field public static final CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

.field public static final CMDLINE_OUT:[I

.field public static final PICKED_OOM_ADJ:I

.field public static mIsBubEnabled:Z


# instance fields
.field public mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

.field public mActionCnt:I

.field public final mActionCntSrc:[I

.field public final mAdjKillCnt:Landroid/util/SparseIntArray;

.field public mAlwaysRunningQuotaKillCnt:I

.field public mAlwaysRunningQuotaKillTriggerCnt:I

.field public final mAppFileCacheRecliamCnt:[J

.field public final mAppKillCnt:Landroid/util/ArrayMap;

.field public final mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public mAvgAvailableMem:J

.field public mAvgReleasedMem:J

.field public final mBigAppPssMap:Ljava/util/Map;

.field public final mCameraAppInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

.field public final mCameraProviderInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

.field public final mCameraRelateInfos:Ljava/util/List;

.field public final mCameraServerInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

.field public mCemPkgKillIntervalMs:I

.field public final mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public final mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

.field public final mDefaultQuickReclaimAdditionalMemory:I

.field public mDynamicQuickReclaimAdditionalMemory:I

.field public final mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

.field public mIsCarMode:Z

.field public mIsDynamicCameraMemorySuccess:Z

.field public mIsKillBoostModeOnHeavy:Z

.field public mIsKillBoostModeOnNormal:Z

.field public mKillCnt:I

.field public final mKillCntByGrp:[I

.field public final mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

.field public final mLastKilledTimeMap:Ljava/util/Map;

.field public mNoActionCnt:I

.field public mPkgKillIntervalHeavy:I

.field public final mPkgKillIntervalMs:I

.field public mPkgProtectedParameters:[[I

.field public mPowerWhitelistedApps:Ljava/util/List;

.field public final mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mQuickReclaimLastFilterTime:J

.field public final mQuickReclaimPreKillApps:Ljava/util/List;

.field public final mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

.field public mSubProcessKillCnt:I

.field public mSubProcessKillTriggerCnt:I

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mTriggerCnt:I

.field public final mTriggerCntSrc:[I

.field public final mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

.field public mWeightLru:F

.field public mWeightMem:F

.field public mWeightStandbyBucket:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x927c0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    const/16 v0, 0x352

    sput v0, Lcom/android/server/chimera/PolicyHandler;->PICKED_OOM_ADJ:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    const/16 v0, 0x1000

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PolicyHandler;->CMDLINE_OUT:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    iput-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    const/4 v1, 0x4

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAppFileCacheRecliamCnt:[J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    sget-object v2, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    const v2, 0x2932e00

    iput v2, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    const-string/jumbo v2, "vendor.samsung.hardware.camera.provider"

    invoke-direct {v1, v2}, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraProviderInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    new-instance v2, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    const-string/jumbo v3, "cameraserver"

    invoke-direct {v2, v3}, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraServerInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    new-instance v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    const-string/jumbo v4, "com.sec.android.app.camera"

    invoke-direct {v3, v4}, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraAppInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    filled-new-array {v1, v2, v3}, [Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iput-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iput-object p3, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance p1, Lcom/android/server/chimera/WakeLockManager;

    invoke-direct {p1, p3}, Lcom/android/server/chimera/WakeLockManager;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    new-instance p1, Lcom/android/internal/util/RingBuffer;

    const-class v0, Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    iput-object p4, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    new-instance p1, Lcom/android/server/chimera/SkipReasonLogger;

    invoke-direct {p1, p3}, Lcom/android/server/chimera/SkipReasonLogger;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    new-instance p1, Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    invoke-direct {p1, p0, p6}, Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;-><init>(Lcom/android/server/chimera/PolicyHandler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    iget p1, p2, Lcom/android/server/chimera/ChimeraStrategy;->mQuickReclaimDefaultThreshold:I

    mul-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mDefaultQuickReclaimAdditionalMemory:I

    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    iput-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    const p1, 0x1b7740

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "persist.sys.chimera_pkg_kill_interval_ms"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalMs:I

    const-string/jumbo p1, "ro.slmk.chimera_cem_pkg_kill_interval_ms"

    sget-object p2, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    iget p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalMs:I

    const/16 p2, 0x12c

    const/16 p4, 0x352

    filled-new-array {p2, p4, p1}, [I

    move-result-object p1

    iget p5, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    filled-new-array {p2, p4, p5}, [I

    move-result-object p2

    filled-new-array {p1, p2}, [[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    invoke-virtual {p3, p0}, Lcom/android/server/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static addRescheduleExceptionPackage(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    move-result-object v0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :catch_0
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v2, v2, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getDRAMUsedByApp(Lcom/android/server/chimera/ChimeraAppInfo;)J
    .locals 6

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-wide v4, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->DRAMUsed:J

    add-long/2addr v1, v4

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/chimera/ChimeraAppInfo;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    invoke-virtual {p0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHHmmss(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    const-wide/16 v0, 0xe10

    div-long v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    rem-long v0, p0, v0

    const-wide/16 v3, 0x3c

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    rem-long/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearQuickReclaimFields()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo;

    invoke-static {v3}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public final dumpAdjInfo(Ljava/io/PrintWriter;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->getKillCntByAdj()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "kills at or below oom_adj "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "details:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "killed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at adj "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpAppInfo(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "App-KillCount List :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpCommonInfo(Ljava/io/PrintWriter;)V
    .locals 9

    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PSI_MEM_MONITOR:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_DEVICE_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v5, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    filled-new-array/range {v0 .. v5}, [Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Total Trigger Count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ActionCnt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Triggered by "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "\nAction by "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KillCnt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    move v0, v2

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    aget v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "     G%d: %d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NoActionCnt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    const-string v3, "AvgAvailableMem: "

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    const-string v1, "AvgReleasedMem: "

    invoke-static {v0, v3, v4, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    const-string/jumbo v1, "mIsQuickReclaimEnabled: "

    invoke-static {v0, v3, v4, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-boolean v3, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", heavy apps : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v5, v4, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "ro.slmk.chimera.quickreclaim_big_game_enable"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ", BigGame:"

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string/jumbo v2, "QuickReclaimKillCnt: "

    invoke-static {p1, v3, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "QuickReclaimDynamicThreshold: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    const-string/jumbo v3, "Protected AccessibilityPackges: "

    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v4}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "App File Cache Reclaim Enable: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    const-string v3, "App File Cache Reclaim: "

    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAppFileCacheRecliamCnt:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Fast Madvise Enable: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/chimera/SettingRepository;->mIsFastMadviseEnable:Z

    const-string/jumbo v3, "SubProcessKillEnable: "

    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v1, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    const-string/jumbo v2, "SubProcessKillTriggerCnt: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillTriggerCnt:I

    const-string/jumbo v2, "SubProcessKillCnt: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSubProcessKillCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpQuotaPPN(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpHistoryBuffer(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "Date Time PackageName AppType StandbyBucket PSS PIDs OomScores TriggerSource:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final dumpQuotaPPN(Ljava/io/PrintWriter;)V
    .locals 4

    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    const-string/jumbo v0, "ro.slmk.chimera_quota_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AlwaysRunningQuotaPPN Trigger Cnt: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    const-string v3, "AlwaysRunningQuotaPPN Cnt: "

    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AlwaysRunningQuotaKill Enable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AlwaysRunningQuotaKill Trigger Cnt: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillTriggerCnt:I

    const-string v3, "AlwaysRunningQuotaKill Cnt: "

    invoke-static {v0, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillCnt:I

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_0
    sget-object p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->INSTANCE:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object v0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\n************** Task History ****************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method public abstract executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
.end method

.method public final getKillCntByAdj()[I
    .locals 5

    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/16 v1, 0xc

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    :goto_1
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    aget v4, v4, v1

    if-le v3, v4, :cond_1

    add-int/lit8 v4, v1, -0x1

    if-gez v4, :cond_0

    move v1, v4

    goto :goto_2

    :cond_0
    aget v1, v0, v1

    aput v1, v0, v4

    move v1, v4

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v1, :cond_2

    goto :goto_3

    :cond_2
    aget v3, v0, v1

    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/2addr v4, v3

    aput v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-lez v1, :cond_4

    add-int/lit8 p0, v1, -0x1

    aget v1, v0, v1

    aput v1, v0, p0

    move v1, p0

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method public final isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z
    .locals 12

    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p1, "PolicyHandler"

    const-string p2, "Invalid app group id"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {p1, v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/16 v6, -0x3e8

    const/16 v7, 0x64

    if-ne p2, v3, :cond_5

    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->getDRAMUsedByApp(Lcom/android/server/chimera/ChimeraAppInfo;)J

    move-result-wide v8

    const-wide/16 v10, 0x2800

    cmp-long p2, v8, v10

    if-gez p2, :cond_1

    goto/16 :goto_d

    :cond_1
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {p1, p2}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    :cond_2
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object p2, p2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v0, p2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_f

    aget v8, p2, v3

    if-lt v8, v7, :cond_4

    const/16 v9, 0xfa

    if-le v8, v9, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object p2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    return v1

    :cond_5
    if-eqz v0, :cond_27

    move p2, v1

    :goto_2
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v3, v3

    if-ge p2, v3, :cond_f

    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v0, v0, p2

    const/16 v3, 0x12c

    if-ge v0, v3, :cond_6

    goto/16 :goto_f

    :cond_6
    iget-object v8, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v9, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v1

    if-ge v0, v8, :cond_7

    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v0, v0, p2

    if-lt v0, v6, :cond_7

    goto/16 :goto_f

    :cond_7
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v0, v0, p2

    if-lt v0, v7, :cond_a

    if-ge v0, v3, :cond_a

    iget v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    if-ne v8, v5, :cond_8

    goto/16 :goto_f

    :cond_8
    const/16 v9, 0xc8

    if-ge v0, v9, :cond_9

    const/16 v0, 0x28

    if-ge v8, v0, :cond_9

    goto/16 :goto_f

    :cond_9
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPowerWhitelistedApps:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_f

    :cond_a
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v8, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    aget v8, v8, p2

    if-eq v8, v4, :cond_27

    if-ne v8, v5, :cond_b

    goto/16 :goto_f

    :cond_b
    sget-boolean v8, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    if-nez v8, :cond_c

    iget-object v8, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v8, v8, p2

    sget v9, Lcom/android/server/chimera/PolicyHandler;->PICKED_OOM_ADJ:I

    if-ne v8, v9, :cond_c

    goto/16 :goto_f

    :cond_c
    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v0, v0, p2

    const/16 v8, 0x2bc

    if-ne v0, v8, :cond_d

    goto/16 :goto_f

    :cond_d
    if-ne v0, v3, :cond_e

    goto/16 :goto_f

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_f
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    iget-object p2, p2, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_10

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowManagerService;->isOnScreenWindow(I)Z

    move-result p2

    goto :goto_3

    :cond_10
    move p2, v1

    :goto_3
    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p2, "PolicyHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Skipped by visible screen : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_11
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    sget-object p2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Skipped by WAKELOCK "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p2, "PolicyHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_12
    iget p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v0, 0x20000

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_1d

    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz p2, :cond_1a

    move p2, v1

    :goto_4
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v3, v3

    if-ge p2, v3, :cond_1a

    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v0, v0, p2

    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v8, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v3, v3, v8

    aget v3, v3, v2

    if-gt v0, v3, :cond_19

    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v0, v0, p2

    if-lt v0, v6, :cond_19

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v9, v8, v3}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v8, :cond_17

    iget-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-eqz v8, :cond_13

    goto :goto_5

    :cond_13
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-lez v8, :cond_14

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x2

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_14
    :try_start_1
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    iget v8, v8, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    if-lez v8, :cond_15

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v0, v4

    goto :goto_6

    :cond_15
    :try_start_2
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-ge v8, v7, :cond_16

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v0, v5

    goto :goto_6

    :cond_16
    :try_start_3
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->hasContentProviderConnection(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_18

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x6

    goto :goto_6

    :cond_17
    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v0, v2

    goto :goto_6

    :cond_18
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v0, v1

    :goto_6
    if-lez v0, :cond_19

    goto :goto_8

    :goto_7
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_19
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_4

    :cond_1a
    move v0, v1

    :goto_8
    invoke-static {}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    move-result-object p2

    aget-object p2, p2, v0

    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    sget-object v4, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    if-ne v3, v4, :cond_1b

    if-gtz v0, :cond_1c

    :cond_1b
    sget-object v4, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    if-ne v3, v4, :cond_1d

    if-lez v0, :cond_1d

    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    if-eq p2, v0, :cond_1d

    :cond_1c
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v2, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v0, "PolicyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Skipped by Normal Service condition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reason: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1d
    iget p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_1f

    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz p2, :cond_1f

    move p2, v1

    :goto_9
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v3, v3

    if-ge p2, v3, :cond_1f

    iget-object v0, v0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v0, v0, p2

    const/16 v3, 0x320

    if-ge v0, v3, :cond_1e

    move p2, v2

    goto :goto_a

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_1f
    move p2, v1

    :goto_a
    if-eqz p2, :cond_20

    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p2, "PolicyHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Skipped by uid     : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_20
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v3

    if-nez v3, :cond_21

    :goto_b
    move p2, v1

    goto :goto_c

    :cond_21
    iget-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v3, :cond_22

    iget-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p2, Lcom/android/server/chimera/SystemRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v3, :cond_22

    goto :goto_b

    :cond_22
    iget-object p2, p2, Lcom/android/server/chimera/SystemRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2, v0}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p2

    :goto_c
    if-eqz p2, :cond_23

    :goto_d
    return v1

    :cond_23
    iget-object p2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :cond_24
    if-ge v3, v0, :cond_26

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v5

    if-ne v5, v6, :cond_25

    move v5, v2

    goto :goto_e

    :cond_25
    move v5, v1

    :goto_e
    if-nez v5, :cond_24

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p2, "PolicyHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Skipped by Thread Group Leader condition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :cond_26
    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_27
    :goto_f
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p2, "PolicyHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Skipped by adj     : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final onAppLaunchIntent(Ljava/lang/String;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimLastFilterTime:J

    sub-long v5, v3, v5

    const-wide/32 v7, 0x493e0

    cmp-long v5, v5, v7

    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v7, "PolicyHandler"

    if-lez v5, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "filter overtime, quit quick reclaim"

    invoke-static {v7, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    return-void

    :cond_1
    const-string/jumbo v5, "com.sec.android.app.camera"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v8, v6, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {v8, v1}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_3

    const-string/jumbo v8, "ro.slmk.chimera.quickreclaim_big_game_enable"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {v8, v1}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    move v8, v9

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-nez v5, :cond_4

    if-nez v8, :cond_4

    invoke-virtual {v0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    return-void

    :cond_4
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    sget-object v10, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    invoke-virtual {v6}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    iget-object v12, v0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    if-eqz v5, :cond_5

    iget-wide v12, v12, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    iget v5, v0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    int-to-long v14, v5

    add-long/2addr v12, v14

    sub-long/2addr v12, v10

    move-wide v15, v3

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, v0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    const-wide/32 v13, 0x19000

    if-nez v5, :cond_6

    :goto_2
    move-wide v15, v3

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/32 v17, 0x64000

    sub-long v15, v15, v17

    const-wide/16 v17, 0x2

    div-long v15, v15, v17

    add-long/2addr v15, v13

    cmp-long v5, v15, v13

    if-gez v5, :cond_7

    goto :goto_2

    :cond_7
    iget v5, v0, Lcom/android/server/chimera/PolicyHandler;->mDefaultQuickReclaimAdditionalMemory:I

    int-to-long v13, v5

    cmp-long v5, v15, v13

    if-lez v5, :cond_8

    goto :goto_2

    :cond_8
    move-wide v13, v15

    const/4 v5, 0x1

    move-wide v15, v3

    :goto_3
    iget-wide v2, v12, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    add-long/2addr v13, v2

    sub-long v12, v13, v10

    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_9

    invoke-virtual {v0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "available memory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", quit chimera quick reclaim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    iget v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    const/4 v4, 0x5

    aget v10, v3, v4

    add-int/2addr v10, v5

    aput v10, v3, v4

    invoke-virtual {v0, v2}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v3

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v18, v5

    move v5, v9

    move v10, v5

    move v11, v10

    move v14, v11

    move/from16 v17, v14

    :goto_5
    if-ge v5, v4, :cond_19

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, v19

    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo;

    move/from16 v19, v3

    if-nez v17, :cond_a

    iget-object v3, v9, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v8

    move-wide/from16 v25, v12

    move-wide/from16 v23, v15

    goto/16 :goto_e

    :cond_b
    iget-object v3, v9, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    move/from16 v20, v3

    iget-object v3, v9, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    if-eqz v20, :cond_c

    move/from16 v20, v4

    move/from16 v21, v5

    :goto_6
    move/from16 v4, v18

    goto :goto_7

    :cond_c
    move/from16 v20, v4

    iget-object v4, v9, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    move/from16 v21, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget v4, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    iget-object v5, v6, Lcom/android/server/chimera/SystemRepository;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5, v4}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    iget-object v4, v9, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/chimera/PolicyHandler;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    :goto_7
    const-string/jumbo v5, "quick reclaim skip "

    move/from16 v22, v4

    const-string v4, ": "

    if-eqz v22, :cond_e

    invoke-static {v9}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    move-object/from16 v22, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for process changed"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v25, v12

    move-wide/from16 v23, v15

    goto/16 :goto_d

    :cond_e
    move-object/from16 v22, v8

    iget-object v8, v9, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    move-wide/from16 v23, v15

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-wide/from16 v25, v12

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v15, :cond_11

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    move-object/from16 v16, v8

    iget-object v8, v13, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    move/from16 v27, v12

    iget v12, v9, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v6, v12, v8}, Lcom/android/server/chimera/SystemRepository;->hasConnectionProvider(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string/jumbo v8, "hasConnectionProvider"

    goto :goto_9

    :cond_f
    iget v8, v13, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v6, v8}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v8

    aget v8, v8, v18

    const/16 v12, 0x12c

    if-ge v8, v12, :cond_10

    const-string/jumbo v8, "importantAdj"

    goto :goto_9

    :cond_10
    move-object/from16 v8, v16

    move/from16 v12, v27

    goto :goto_8

    :cond_11
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_12

    invoke-static {v9}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_12
    iget-object v5, v0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Killed on trigger5 : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", freed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v9, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    iget-object v3, v9, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v5, :cond_15

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v8, v8, 0x1

    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    if-nez v19, :cond_13

    iget v13, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v13}, Landroid/os/Process;->killProcessQuiet(I)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "quick reclaim kill "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " without pidfd"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_13
    iget-object v13, v12, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    if-eqz v13, :cond_14

    iget-object v13, v0, Lcom/android/server/chimera/PolicyHandler;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v15, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;

    invoke-direct {v15, v0, v12}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V

    invoke-virtual {v13, v15}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_14
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_15
    int-to-long v3, v14

    iget-wide v12, v9, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    add-long/2addr v3, v12

    long-to-int v14, v3

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v0, v9, v2}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    int-to-long v3, v14

    cmp-long v5, v3, v25

    if-lez v5, :cond_16

    goto :goto_c

    :cond_16
    sub-long v12, v25, v3

    const-wide/16 v3, 0x5000

    cmp-long v3, v12, v3

    if-gez v3, :cond_17

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "relTarget - released < 20480, stop kill"

    invoke-static {v7, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_17
    const/4 v3, 0x4

    if-lt v10, v3, :cond_18

    :goto_c
    move/from16 v17, v18

    goto :goto_d

    :cond_18
    const/16 v17, 0x0

    :goto_d
    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v8, v22

    move-wide/from16 v15, v23

    move-wide/from16 v12, v25

    const/4 v9, 0x0

    goto/16 :goto_5

    :goto_e
    invoke-static {v9}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    goto :goto_d

    :cond_19
    move-wide/from16 v25, v12

    move-wide/from16 v23, v15

    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "quick reclaim kill before "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " complete: killed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apps, freed "

    const-string v2, " KB, before kill relTarget: "

    invoke-static {v14, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " KB and Processing time(ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onCameraClose()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "PolicyHandler"

    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    iget v6, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    invoke-static {v6}, Landroid/os/Process;->getRss(I)[J

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v7, v6, v7

    const/4 v9, 0x3

    aget-wide v9, v6, v9

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->closeRss:J

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " closeRss: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->closeRss:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v6}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->openRss:J

    iget-wide v6, v3, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->closeRss:J

    sub-long/2addr v4, v6

    add-long/2addr v1, v4

    goto :goto_0

    :cond_1
    long-to-int v0, v1

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mDefaultQuickReclaimAdditionalMemory:I

    shr-int/lit8 v2, v1, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "get dynamic quick reclaim additional memory successfully "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (MB)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onCameraOpen()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    iget v2, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    invoke-static {v2}, Landroid/os/Process;->getRss(I)[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->openRss:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " openRss: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->openRss:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "PolicyHandler"

    invoke-static {v2, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final onDeviceIdle()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "PolicyHandler"

    const-string/jumbo v0, "onDeviceIdle()"

    invoke-static {p0, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handler onDozeState catch exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "HeimdallAlwaysRunningMonitor"

    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .locals 7

    const/4 p2, 0x0

    aget-object p4, p5, p2

    if-nez p6, :cond_7

    if-eqz p3, :cond_0

    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast p5, Ljava/util/HashMap;

    invoke-virtual {p5, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p5, p5, Lcom/android/server/chimera/SystemRepository;->mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    if-eqz p5, :cond_7

    monitor-enter p5

    :try_start_0
    iget-object v0, p5, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;->mForegroundActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p5

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-boolean p5, p5, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    if-eqz p5, :cond_7

    iget-object p5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v0, p5, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {v0, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "com.sec.android.app.camera"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x64000

    const/4 v5, 0x0

    if-nez v0, :cond_5

    iget-object v0, p5, Lcom/android/server/chimera/SystemRepository;->mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    invoke-virtual {v0, p4}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->contains(Ljava/lang/String;)Z

    move-result v0

    iget-object v6, p5, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {v6, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v0, :cond_3

    if-nez v6, :cond_3

    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {p1, v5, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v1

    if-eqz v0, :cond_4

    cmp-long p1, v1, v3

    if-lez p1, :cond_4

    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->update(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-static {p1, v5, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v0

    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    cmp-long p1, v0, v3

    if-lez p1, :cond_7

    iget-object p1, p5, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->update(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    const-string/jumbo p1, "com.samsung.android.permissioncontroller"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string/jumbo p1, "com.google.android.permissioncontroller"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-boolean p1, p1, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    if-eqz p1, :cond_d

    if-nez p6, :cond_e

    if-nez p3, :cond_e

    sget-object p1, Lcom/android/server/chimera/ChimeraCommonUtil;->mAppLaunchInfoMap:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_9

    const-string p5, "COLD"

    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    goto :goto_1

    :cond_9
    move p3, p2

    :goto_1
    if-nez p3, :cond_c

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_a

    const-string/jumbo p2, "WARM"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    :cond_a
    if-eqz p2, :cond_b

    goto :goto_2

    :cond_b
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p1, "PolicyHandler"

    const-string p2, "Chimera AppFileCacheReclaim do reclaimAppCaches skip: "

    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iput-object p4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mHandler:Lcom/android/server/chimera/PolicyHandler$PolicyEventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_d
    sget-object p0, Lcom/android/server/chimera/ChimeraCommonUtil;->mAppLaunchInfoMap:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_e
    :goto_3
    return-void
.end method

.method public final onHomeLaunched()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "PolicyHandler"

    const-string/jumbo v4, "onHomeLaunched()"

    invoke-static {v3, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-boolean v6, v6, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    if-nez v6, :cond_0

    goto/16 :goto_11

    :cond_0
    sget-object v6, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    invoke-virtual {v2}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-wide v8, v2, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    sub-long/2addr v8, v6

    iget v6, v0, Lcom/android/server/chimera/PolicyHandler;->mDynamicQuickReclaimAdditionalMemory:I

    int-to-long v6, v6

    add-long/2addr v8, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v8, v6

    if-gtz v8, :cond_1

    goto/16 :goto_11

    :cond_1
    iget v2, v2, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    shr-int/2addr v2, v1

    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    iget-object v9, v0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v10, v9, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v10}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v8, v2, v4, v10}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_1a

    iget-boolean v8, v0, Lcom/android/server/chimera/PolicyHandler;->mIsDynamicCameraMemorySuccess:Z

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    iget v10, v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    const/4 v11, 0x0

    sget-object v12, Lcom/android/server/chimera/PolicyHandler;->CMDLINE_OUT:[I

    const-string v13, "/cmdline"

    const-string v14, "/proc/"

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    new-array v10, v1, [Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    invoke-static {v6, v15, v13}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12, v10, v11, v11}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v10, v5

    if-eqz v6, :cond_5

    iget-object v7, v9, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v8, Ljava/io/File;

    const-string v9, "/proc"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    :cond_6
    :goto_2
    move/from16 v18, v1

    move/from16 v17, v5

    goto/16 :goto_9

    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v8

    move v15, v5

    :goto_3
    if-ge v15, v10, :cond_8

    aget-object v16, v8, v15

    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v17, v5

    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move/from16 v17, v5

    :catch_1
    :goto_4
    add-int/2addr v15, v1

    move/from16 v5, v17

    goto :goto_3

    :cond_8
    move/from16 v17, v5

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v10, v17

    move v15, v10

    :goto_5
    if-ge v15, v8, :cond_e

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/2addr v15, v1

    move/from16 v18, v1

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-wide/from16 v19, v6

    const/16 v6, 0x64

    if-ge v11, v6, :cond_9

    goto :goto_7

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v12, v5, v7, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v6

    if-eqz v6, :cond_d

    aget-object v6, v5, v17

    if-nez v6, :cond_a

    goto :goto_7

    :cond_a
    iget-object v11, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraProviderInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    iget-object v7, v11, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_6

    :cond_b
    iget-object v11, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraAppInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    iget-object v7, v11, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    iget-object v11, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraServerInfo:Lcom/android/server/chimera/SystemRepository$CameraProcInfo;

    iget-object v7, v11, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    :goto_6
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v11, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "get camera process\'s pid: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v11, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->pid:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " name: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/chimera/PolicyHandler;->mCameraRelateInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v10, v1, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    move/from16 v1, v18

    move-wide/from16 v6, v19

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_e
    move/from16 v18, v1

    move-wide/from16 v19, v6

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "get camera process\'s pid success and Processing time(ms): "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v19

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v5, v18

    const-wide/16 v6, 0x0

    :cond_f
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo;

    iget-wide v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    iget-wide v11, v8, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    sub-long/2addr v9, v11

    cmp-long v11, v9, v6

    if-lez v11, :cond_10

    move-wide v6, v9

    :cond_10
    iget v8, v8, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    if-le v8, v5, :cond_f

    move v5, v8

    goto :goto_a

    :cond_11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x4

    if-eqz v8, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v10, v8, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    int-to-float v11, v5

    div-float/2addr v10, v11

    iget v11, v8, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    int-to-float v11, v11

    const v12, 0x3dcccccd    # 0.1f

    mul-float/2addr v11, v12

    const/high16 v12, 0x42480000    # 50.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v10

    iget-wide v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    iget-wide v14, v8, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    sub-long/2addr v12, v14

    long-to-float v10, v12

    const v12, 0x3ecccccd    # 0.4f

    mul-float/2addr v10, v12

    long-to-float v12, v6

    div-float/2addr v10, v12

    add-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    iput v10, v8, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    iget v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    mul-float/2addr v9, v11

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    goto :goto_b

    :cond_12
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimLastFilterTime:J

    invoke-virtual {v0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v2, v17

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo;

    iget v6, v5, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    if-lt v6, v9, :cond_13

    const-string/jumbo v0, "killing stopped to group 4"

    invoke-static {v3, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_13
    invoke-virtual {v0, v5, v4}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v6

    if-nez v6, :cond_14

    move/from16 v13, v17

    goto/16 :goto_10

    :cond_14
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v6

    if-eqz v6, :cond_18

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v10, v17

    :goto_d
    if-ge v10, v8, :cond_18

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    :try_start_2
    iget v12, v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v13, v17

    :try_start_3
    invoke-static {v12, v13}, Landroid/os/Process;->openPidFd(II)Ljava/io/FileDescriptor;

    move-result-object v12

    if-nez v12, :cond_15

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v13

    :catch_2
    :goto_e
    if-ge v7, v5, :cond_17

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_e

    :cond_15
    :try_start_5
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    iput-object v12, v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    move/from16 v17, v13

    goto :goto_d

    :catch_3
    move/from16 v13, v17

    :catch_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v13

    :catch_5
    :goto_f
    if-ge v7, v5, :cond_16

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/io/FileDescriptor;

    :try_start_6
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_f

    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "open pid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_10
    move/from16 v17, v13

    goto/16 :goto_c

    :cond_18
    move/from16 v13, v17

    iget-object v6, v5, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    iget-object v6, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v2, v9, :cond_17

    :cond_19
    :goto_11
    return-void

    :cond_1a
    move v13, v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "executePolicy() - getAppsToKill return "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_12

    :cond_1b
    move v5, v13

    :goto_12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPsiMemMonitorEvent(I)V
    .locals 12

    const-string/jumbo v0, "onPsiMonitorTriggered() - psiLevel: "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "PolicyHandler"

    invoke-static {v1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PSI_MEM_MONITOR:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    iget-object p1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const-string v5, "AbnormalFgsDetector"

    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    iget-object v7, v6, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x1388

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    iget-wide v8, v6, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->detectPss:J

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "TYPE"

    const/16 v11, 0x67

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "PNAME"

    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "PSS"

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v6, v5}, Lcom/android/server/chimera/SystemRepository;->sendHqmBigData(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    sget-object v6, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "failed to create the KPUT"

    invoke-static {v5, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.sdhms.MEMORY_ABNORMAL_APP_DETECTION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo p1, "uid"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo p1, "anomaly_type"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo p1, "com.sec.android.sdhms"

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p1, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reported AbnormalHeavyApp : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method public final onQuotaKill(Z)V
    .locals 26

    move-object/from16 v0, p0

    const/16 v1, 0xa

    const-wide/32 v2, 0x7d000

    if-eqz p1, :cond_0

    move-wide v7, v2

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v0, v4}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "PolicyHandler"

    const-string/jumbo v2, "executePolicy() - prepareForTrigger fails"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v4, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getShmemSizeKb()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v7, v0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-wide v7, v7, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    sub-long/2addr v7, v5

    const-wide/32 v9, 0xc800

    cmp-long v11, v7, v9

    if-gez v11, :cond_3

    invoke-static {v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result v4

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getMinSwapFreePercentage()I

    move-result v7

    add-int/2addr v7, v1

    if-ge v4, v7, :cond_2

    move-wide v7, v9

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "PolicyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onQuotaKill() skip by memory enough, memAvailable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", swapfree(%): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    iget v4, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillTriggerCnt:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillTriggerCnt:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v4, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v4}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda5;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v4

    const/4 v11, 0x0

    if-eqz v4, :cond_4

    iget-object v12, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v12, :cond_5

    :cond_4
    move/from16 p1, v5

    goto :goto_2

    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v13, v11

    :goto_1
    move-object v14, v6

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_7

    iget-object v15, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, [I

    aget v15, v15, v13

    move/from16 p1, v5

    const/16 v5, 0x64

    if-gt v5, v15, :cond_6

    const/16 v5, 0xfa

    if-gt v15, v5, :cond_6

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, p1

    goto :goto_1

    :cond_7
    move/from16 p1, v5

    goto :goto_3

    :goto_2
    const/4 v12, 0x0

    :goto_3
    if-nez v12, :cond_8

    return-void

    :cond_8
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v5, "PolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "onQuotaKill(), remain target: "

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v11

    :goto_4
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_9

    iget-object v6, v4, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    aget-object v6, v6, v5

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    iget-object v4, v0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v5, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v6, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v4, v5, v11, v6, v12}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    goto/16 :goto_14

    :cond_a
    iget-object v5, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v5, v5, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v5}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo;

    iget-object v12, v12, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v11

    :goto_5
    if-ge v14, v13, :cond_b

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget v11, v15, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    move-wide/from16 v16, v2

    iget-wide v1, v15, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    invoke-static {v11, v1, v2, v5}, Lcom/android/server/chimera/ChimeraCommonUtil;->getDRAMUsed(IJZ)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->DRAMUsed:J

    move-wide/from16 v2, v16

    const/16 v1, 0xa

    const/4 v11, 0x0

    goto :goto_5

    :cond_c
    move-wide/from16 v16, v2

    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/PolicyHandler;)V

    invoke-interface {v4, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    iget v2, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    const/4 v3, 0x6

    aget v5, v2, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v2, v3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    invoke-virtual {v0, v4, v1}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v11

    if-nez v11, :cond_d

    :goto_7
    move-object/from16 v20, v2

    move/from16 v21, v3

    goto/16 :goto_f

    :cond_d
    iget-object v11, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v11, v11, Lcom/android/server/chimera/SystemRepository;->mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    if-eqz v11, :cond_f

    iget-object v12, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    monitor-enter v11

    :try_start_0
    iget-object v13, v11, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;->mForegroundActivities:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v12, :cond_e

    move/from16 v12, p1

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    :goto_8
    monitor-exit v11

    if-eqz v12, :cond_f

    move/from16 v11, p1

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_f
    const/4 v11, 0x0

    :goto_9
    iget-object v12, v0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v13, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget v14, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    const-wide/16 v18, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v12, v12, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v12, v12, Lcom/android/server/chimera/SystemRepository;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v12, v14, v13, v5, v6}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    move-result v5

    const/16 v6, 0xa

    if-gt v5, v6, :cond_19

    if-eqz v11, :cond_10

    goto :goto_7

    :cond_10
    iget-object v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v12, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v12}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v12, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v13, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    iget-object v12, v12, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12

    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v6, v13, v15}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    if-nez v6, :cond_11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :cond_11
    :try_start_3
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ServiceRecord;

    iget-object v15, v15, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move-object/from16 v20, v2

    move/from16 v21, v3

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_14

    move/from16 v22, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v23, v5

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v2, :cond_15

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    add-int/lit8 v5, v5, 0x1

    move/from16 v25, v2

    move-object/from16 v2, v24

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    move-object/from16 v24, v3

    iget v3, v2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v2, v2, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_e

    :cond_12
    move-object/from16 v3, v24

    move/from16 v2, v25

    goto :goto_d

    :cond_13
    :goto_e
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_f
    move-object/from16 v2, v20

    move/from16 v3, v21

    goto/16 :goto_6

    :cond_14
    move/from16 v22, v2

    move-object/from16 v23, v5

    :cond_15
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v5, v23

    goto :goto_c

    :cond_16
    move-object/from16 v2, v20

    move/from16 v3, v21

    goto :goto_b

    :cond_17
    const/16 v6, 0xa

    goto/16 :goto_a

    :cond_18
    move-object/from16 v20, v2

    move/from16 v21, v3

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    goto :goto_11

    :goto_10
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_19
    move-object/from16 v20, v2

    move/from16 v21, v3

    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-wide/from16 v12, v18

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v5, :cond_1a

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v6, v6, 0x1

    check-cast v14, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v15, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    move-object/from16 v22, v3

    iget-object v3, v14, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    move/from16 v23, v5

    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    move/from16 v24, v6

    const-string/jumbo v6, "QuotaKill"

    invoke-virtual {v15, v5, v3, v6, v11}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-wide v5, v14, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->DRAMUsed:J

    add-long/2addr v12, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    move/from16 v5, v23

    move/from16 v6, v24

    goto :goto_12

    :cond_1a
    iget-object v3, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v5, v21, v3

    iget v6, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillCnt:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/android/server/chimera/PolicyHandler;->mAlwaysRunningQuotaKillCnt:I

    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v6, "PolicyHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "QuotaKill on trigger6"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", freed: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", allow restart: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v3, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long v16, v16, v12

    cmp-long v2, v16, v18

    if-gtz v2, :cond_1b

    move v3, v5

    goto :goto_13

    :cond_1b
    move v3, v5

    move-object/from16 v2, v20

    goto/16 :goto_6

    :cond_1c
    move/from16 v21, v3

    const-wide/16 v18, 0x0

    :goto_13
    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    const-string/jumbo v4, "PolicyHandler"

    invoke-virtual {v2, v4}, Lcom/android/server/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v9

    sub-long v7, v7, v16

    cmp-long v2, v7, v18

    if-eqz v2, :cond_1d

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "PolicyHandler"

    const-string/jumbo v2, "Quota kill complete: killed "

    const-string v6, " apps, freed "

    invoke-static {v3, v2, v7, v8, v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB, cost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "PolicyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No Quota kill target, cost "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    :goto_14
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "PolicyHandler"

    const-string/jumbo v2, "No Quota kill target after filtering!"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    return v0

    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p1, "PolicyHandler"

    const-string/jumbo v1, "prepareForTrigger() - skip reason: screen off"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v1, p1, Lcom/android/server/chimera/SystemRepository;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p1, Lcom/android/server/chimera/SystemRepository;->mAudioManager:Landroid/media/AudioManager;

    :cond_4
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_5

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p1, "PolicyHandler"

    const-string/jumbo v1, "prepareForTrigger() - skip reason: incall"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mSmartSwitchEventReceiver:Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;

    iget-boolean v2, p1, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnStart:Z

    if-nez v2, :cond_b

    iget-boolean p1, p1, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnTransfer:Z

    if-eqz p1, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    if-eqz p1, :cond_7

    const-string/jumbo p0, "PolicyHandler"

    const-string/jumbo p1, "prepareForTrigger() - skip reason: car mode"

    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    iget-object v2, p1, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p1, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/server/chimera/WakeLockManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    monitor-enter p1

    :try_start_0
    iget-object v2, p1, Lcom/android/server/chimera/SystemRepository;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-nez v2, :cond_a

    const-string/jumbo v2, "deviceidle"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v3

    iput-object v3, p1, Lcom/android/server/chimera/SystemRepository;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_8

    :try_start_1
    new-instance v3, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "SystemRepositoryDefault"

    const-string/jumbo v2, "mDeviceIdleController is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const-string/jumbo v0, "SystemRepositoryDefault"

    const-string/jumbo v2, "binder is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    iget-object v0, p1, Lcom/android/server/chimera/SystemRepository;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPowerWhitelistedApps:Ljava/util/List;

    return v1

    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_b
    :goto_3
    const-string/jumbo p0, "PolicyHandler"

    const-string/jumbo p1, "prepareForTrigger() - skip reason: smart switch"

    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .locals 1

    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public final updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .locals 12

    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    if-lez v0, :cond_0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v4, v4, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget v4, v4, v0

    const/16 v5, -0x3e8

    if-lt v4, v5, :cond_2

    const/16 v5, 0x3e8

    if-gt v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    add-int/2addr v5, v1

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    const-string/jumbo v4, "null"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%18s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/android/server/chimera/ChimeraDataCache;->DATE_FORMAT_MAP:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string/jumbo v8, "MM/dd HH:mm:ss.SSS"

    if-nez v7, :cond_5

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/DateFormat;

    if-nez v6, :cond_6

    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    move v9, v8

    :cond_7
    :goto_4
    const-string v10, ","

    if-ge v9, v7, :cond_8

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget v11, v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v8, v1

    iget-object v11, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_7

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    iget v6, p1, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v6, v7, v8, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%s %xH %d %d %s"

    invoke-static {v5, v2, v0, v4}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v2, :cond_a

    :goto_5
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v5, v2

    if-ge v3, v5, :cond_a

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method
