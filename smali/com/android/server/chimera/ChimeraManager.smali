.class public final Lcom/android/server/chimera/ChimeraManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

.field public final mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public final mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public final mContext:Landroid/content/Context;

.field public mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public mGenieUnloadPolicyHandler:Lcom/android/server/chimera/GenieUnloadPolicyHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

.field public mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

.field public mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

.field public mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

.field public final mPsiMonitor:Lcom/android/server/chimera/PsiMonitor;

.field public final mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public final mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mGenieUnloadPolicyHandler:Lcom/android/server/chimera/GenieUnloadPolicyHandler;

    new-instance v0, Lcom/android/server/chimera/PsiMonitor;

    invoke-direct {v0}, Lcom/android/server/chimera/PsiMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPsiMonitor:Lcom/android/server/chimera/PsiMonitor;

    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/RepositoryFactory;->getSystemRepository(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/chimera/RepositoryFactory;->getSettingRepository(Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/SettingRepository;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "ObserverHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/chimera/ChimeraRecentAppManager;-><init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/chimera/ChimeraStrategy;

    invoke-direct {v3, v0, v1}, Lcom/android/server/chimera/ChimeraStrategy;-><init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    iput-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    new-instance v1, Lcom/android/server/chimera/ChimeraAppManager;

    invoke-direct {v1, v0}, Lcom/android/server/chimera/ChimeraAppManager;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/android/server/chimera/SystemEventListener;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/chimera/SystemRepository;)V

    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    new-instance v1, Lcom/android/server/chimera/AbnormalFgsDetector;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    sget-object v2, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    if-nez v2, :cond_0

    sput-object v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    :cond_0
    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    new-instance v1, Lcom/android/server/chimera/heimdall/Heimdall;

    invoke-direct {v1, p1, p2}, Lcom/android/server/chimera/heimdall/Heimdall;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    sget-object p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    iget-boolean v2, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mIsInit:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iput-object p1, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mContext:Landroid/content/Context;

    iput-object v1, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    iput-object v0, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "HeimdallAlwaysRunningMonitor"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    new-instance p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    invoke-direct {p1, p2}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;-><init>(Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;)V

    iput-object p1, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    :try_start_0
    iget-object p1, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo v0, "com.salab.issuetracker"

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_0

    :catch_0
    :cond_2
    move p1, v3

    :goto_0
    iput-boolean p1, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mIsIssueTrackerInstalled:Z

    iput-boolean v4, p2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mIsInit:Z

    :goto_1
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object p1, p1, Lcom/android/server/chimera/SystemEventListener;->mMediaScanFinishedListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object p1, p1, Lcom/android/server/chimera/SystemEventListener;->mLazyBootCompleteListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object p2, p0, Lcom/android/server/chimera/ChimeraManager;->mPsiMonitor:Lcom/android/server/chimera/PsiMonitor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    mul-int/lit16 v0, v0, 0x3e8

    new-instance v1, Lcom/android/server/chimera/SystemEventListener$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/chimera/SystemEventListener$1;-><init>(Lcom/android/server/chimera/SystemEventListener;I)V

    invoke-virtual {p2, v3, v0, v1}, Lcom/android/server/chimera/PsiMonitor;->registerMemoryEvent(IILcom/android/server/chimera/SystemEventListener$1;)Z

    move-result v0

    const-string/jumbo v1, "SystemEventListener"

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PSI mem some event triggered register successfully"

    invoke-static {v1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    mul-int/lit16 v0, v0, 0x3e8

    new-instance v2, Lcom/android/server/chimera/SystemEventListener$1;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/server/chimera/SystemEventListener$1;-><init>(Lcom/android/server/chimera/SystemEventListener;I)V

    invoke-virtual {p2, v4, v0, v2}, Lcom/android/server/chimera/PsiMonitor;->registerMemoryEvent(IILcom/android/server/chimera/SystemEventListener$1;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "PSI mem full event triggered register successfully"

    invoke-static {v1, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPsiMonitor:Lcom/android/server/chimera/PsiMonitor;

    iget-boolean p1, p0, Lcom/android/server/chimera/PsiMonitor;->mAvailable:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/server/chimera/PsiMonitor;->mIsMonitoring:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/chimera/PsiMonitor;->mThread:Lcom/android/server/chimera/PsiMonitor$PsiMonitorThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iput-boolean v4, p0, Lcom/android/server/chimera/PsiMonitor;->mIsMonitoring:Z

    const-string p0, "ChimeraPsiMonitor"

    const-string/jumbo p1, "start psi monitoring"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method


# virtual methods
.method public final createPolicyHandler()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-boolean v0, v0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraManager;->unRegisterSystemEventListener(Z)V

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/server/chimera/ConservativePolicyHandler;

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v4, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v5, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v6, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-object v7, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/chimera/PolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {p0, v1}, Lcom/android/server/chimera/ChimeraManager;->registerSystemEventListener(Z)V

    goto/16 :goto_3

    :cond_1
    new-instance v3, Lcom/android/server/chimera/AggressivePolicyHandler;

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v4, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v5, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v6, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v7, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-object v8, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    invoke-direct/range {v3 .. v9}, Lcom/android/server/chimera/PolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V

    const v0, 0x2932e00

    iput v0, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    sget-object v2, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    iput-object v2, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    iput-boolean v0, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    iput v0, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    iput v0, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v4, Ljava/lang/String;

    const/16 v5, 0xc8

    invoke-direct {v2, v4, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mSubProcessKillList:Lcom/android/internal/util/RingBuffer;

    new-instance v2, Lcom/android/server/chimera/SkipReasonLogger;

    invoke-direct {v2, v6}, Lcom/android/server/chimera/SkipReasonLogger;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v2, v3, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    const-string v2, "Adjust targetfree : "

    iget-object v4, v3, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "ro.slmk.chimera_kill_interval_ms"

    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, ","

    const/4 v8, 0x2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v9, v4

    if-ne v9, v8, :cond_2

    aget-object v9, v4, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "PKG_KILL_INTERVAL_DEFAULT: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "AggressivePolicyHandler"

    invoke-static {v9, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "PKG_KILL_INTERVAL_HEAVY: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v3, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, "persist.sys.chimera_pkg_kill_interval_ms"

    invoke-static {v10, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v10, "ro.slmk.chimera_cem_pkg_kill_interval_ms"

    sget-object v11, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    const/16 v10, 0x352

    filled-new-array {v5, v10, v4}, [I

    move-result-object v4

    const/16 v5, 0x64

    iget v11, v3, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    filled-new-array {v5, v10, v11}, [I

    move-result-object v5

    filled-new-array {v4, v5}, [[I

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    const-string/jumbo v4, "ro.slmk.chimera_kill_boost_on_normal"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda0;

    const/4 v10, 0x0

    invoke-direct {v5, v10}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v5

    const/4 v10, 0x3

    if-gt v5, v10, :cond_3

    move v5, v1

    goto :goto_0

    :cond_3
    move v5, v0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    const-string/jumbo v4, "ro.slmk.chimera_kill_boost_on_heavy"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda0;

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v5

    if-gt v5, v10, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    const-string/jumbo v4, "persist.sys.bub_onoff"

    const-string/jumbo v5, "on"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    const-string/jumbo v4, "ro.slmk.chimera_adjust_boot_targetfree"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v8, :cond_5

    :try_start_0
    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    mul-int/lit16 v6, v5, 0x3e8

    int-to-long v12, v6

    add-long/2addr v10, v12

    iput-wide v10, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    iput-boolean v1, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "Error while adjust targetfee"

    invoke-static {v9, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v2

    const/4 v4, 0x4

    if-gt v2, v4, :cond_6

    const/16 v2, 0x50

    iput v2, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    const/16 v2, 0x19

    iput v2, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    iput-boolean v1, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    :cond_6
    iget-boolean v1, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/server/chimera/HeavyLaunchCounter;

    iget v2, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    iget v4, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    invoke-direct {v1, v2, v4}, Lcom/android/server/chimera/HeavyLaunchCounter;-><init>(II)V

    iput-object v1, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Heavy launch param : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchPackageLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iput-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraManager;->registerSystemEventListener(Z)V

    :goto_3
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "ChimeraManager"

    const-string v0, "Chimera instance created"

    invoke-static {p0, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onMediaScanFinished()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ChimeraManager"

    const-string/jumbo v2, "onMediaScanFinished() to start the policy "

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-virtual {v2}, Lcom/android/server/chimera/SettingRepository;->initialize()V

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object v4, v3, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/chimera/heimdall/Heimdall;->updateAlwaysRunningGlobalQuota(Landroid/content/ContentResolver;)V

    invoke-virtual {v3, v4}, Lcom/android/server/chimera/heimdall/Heimdall;->updateAnomalyType(Landroid/content/ContentResolver;)V

    invoke-virtual {v3, v4}, Lcom/android/server/chimera/heimdall/Heimdall;->updateSpec(Landroid/content/ContentResolver;)V

    const-string/jumbo v5, "heimdall_report_hour_interval"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, v3, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    iget-object v7, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    iput v5, v7, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    :goto_0
    const-string/jumbo v5, "heimdall_random_sample_rate"

    const/16 v7, 0xa

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v3, v3, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v4, :cond_1

    const/16 v3, 0x3e8

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I

    :cond_1
    const-string/jumbo v3, "retrieveSettings done"

    invoke-static {v3}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    invoke-static {}, Lcom/android/server/chimera/genie/GenieConfigurations;->isGenieUnloadPolicyEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "createGeniePolicyHandler"

    invoke-static {v1, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mGenieUnloadPolicyHandler:Lcom/android/server/chimera/GenieUnloadPolicyHandler;

    if-eqz v3, :cond_2

    iget-object v5, v4, Lcom/android/server/chimera/SystemEventListener;->mGeniePsiMemEventListeners:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v3, "removeLmkdEventListener for mGeniePolicyHandler"

    invoke-static {v1, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v7, Lcom/android/server/chimera/GenieUnloadPolicyHandler;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    iget-object v11, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-object v12, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    iget-object v8, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v9, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v10, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-direct/range {v7 .. v13}, Lcom/android/server/chimera/PolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/chimera/ChimeraManager;->mGenieUnloadPolicyHandler:Lcom/android/server/chimera/GenieUnloadPolicyHandler;

    iget-object v3, v4, Lcom/android/server/chimera/SystemEventListener;->mGeniePsiMemEventListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "create new mGeniePolicyHandler and addLmkdEventListener"

    invoke-static {v1, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    iget-boolean v1, v2, Lcom/android/server/chimera/SettingRepository;->mIsPSITrackerEnable:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    if-eqz v1, :cond_4

    iget-object v2, v4, Lcom/android/server/chimera/SystemEventListener;->mTimeOrTimeZoneChangedListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    new-instance v1, Lcom/android/server/chimera/psitracker/PSITracker;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/chimera/psitracker/PSITracker;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/chimera/SystemRepository;)V

    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    iget-object v2, v4, Lcom/android/server/chimera/SystemEventListener;->mTimeOrTimeZoneChangedListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/server/chimera/psitracker/PSITracker;->mFirstTriggeredAfterBooting:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/chimera/psitracker/PSITracker;->mFirstTriggeredAfterBooting:Z

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    const-string/jumbo v2, "MEDIA_SCAN_FINISHED"

    invoke-virtual {v1, v2}, Lcom/android/server/chimera/psitracker/PSITracker;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V

    :cond_5
    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    const-string/jumbo v1, "ro.slmk.chimera_quota_enable"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->INSTANCE:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mAlwaysRunningProcessQuota:I

    iput-object v0, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    int-to-long v2, p0

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mQuota:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    const-string v2, "ChimeraQuotaMonitor"

    if-gtz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "ChimeraQuotaMonitor invalid quota: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mQuota:J

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object p0, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTimer:Ljava/util/Timer;

    if-nez p0, :cond_7

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, v1, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTimer:Ljava/util/Timer;

    new-instance v4, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;

    invoke-direct {v4, v1}, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;-><init>(Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;)V

    const-wide/32 v5, 0x124f80

    const-wide/32 v7, 0x124f80

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1

    :cond_7
    const-string p0, "ChimeraQuotaMonitor already start!"

    invoke-static {v2, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    invoke-direct {p0}, Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;-><init>()V

    iput-object p0, v0, Lcom/android/server/chimera/SystemRepository;->mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

    :cond_9
    return-void
.end method

.method public final registerSystemEventListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mPsiMemEventListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    if-nez p1, :cond_0

    iget-boolean p1, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    :cond_1
    iget-boolean p1, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object p1

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mCameraStateListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->startOneHourTimer()V

    :cond_3
    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mQuotaListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final unRegisterSystemEventListener(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mPsiMemEventListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    if-nez p1, :cond_0

    iget-boolean p1, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "camera"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iget-object v2, v0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, v2, Lcom/android/server/chimera/SystemRepository;->mCameraDeviceStateCallback:Lcom/android/server/chimera/SystemRepository$3;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    :cond_1
    iget-boolean p1, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object p1

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-object v2, p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v3, p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mCameraStateListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v1, v0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object p1, v0, Lcom/android/server/chimera/SystemEventListener;->mQuotaListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
