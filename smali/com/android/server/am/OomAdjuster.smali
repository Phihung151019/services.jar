.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final VENDING_PKG:Ljava/lang/String;

.field public final mActiveUids:Lcom/android/server/am/ActiveUids;

.field public mAdjSeq:I

.field public mCFMS:Landroid/os/ICustomFrequencyManager;

.field public final mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field public final mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field public final mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public final mFollowUpUpdateSet:Landroid/util/ArraySet;

.field public final mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public final mHeimdallAlwaysRunningMonitor:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

.field public final mInjector:Lcom/android/server/am/OomAdjuster$Injector;

.field public mLastFreeSwapPercent:D

.field public mLastReason:I

.field public final mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

.field public mNewNumAServiceProcs:I

.field public mNewNumServiceProcs:I

.field public mNextFollowUpUpdateUptimeMs:J

.field public mNextNoKillDebugMessageTime:J

.field public mNumCachedHiddenProcs:I

.field public mNumCachedProcessCount:I

.field public mNumNonCachedProcs:I

.field public mNumServiceProcs:I

.field public final mNumSlots:I

.field public mOomAdjUpdateOngoing:Z

.field public mPendingFullOomAdjUpdate:Z

.field public final mPendingProcessSet:Landroid/util/ArraySet;

.field public final mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

.field public final mProcessGroupHandler:Landroid/os/Handler;

.field public final mProcessList:Lcom/android/server/am/ProcessList;

.field public mProcessStateCurTop:I

.field public final mProcessesInCycle:Landroid/util/ArraySet;

.field public final mProcsToOomAdj:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpBecameIdle:Ljava/util/ArrayList;

.field public final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field public final mTmpProcessList:Ljava/util/ArrayList;

.field public final mTmpProcessSet:Landroid/util/ArraySet;

.field public final mTmpQueue:Ljava/util/ArrayDeque;

.field public final mTmpSchedGroup:[I

.field public final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/ProcessStateController$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    new-instance p5, Landroid/util/ArraySet;

    invoke-direct {p5}, Landroid/util/ArraySet;-><init>()V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    new-instance p5, Landroid/util/ArraySet;

    invoke-direct {p5}, Landroid/util/ArraySet;-><init>()V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    new-instance p5, Landroid/util/ArraySet;

    invoke-direct {p5}, Landroid/util/ArraySet;-><init>()V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 p5, 0x2

    iput p5, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    new-instance p5, Landroid/util/ArraySet;

    invoke-direct {p5}, Landroid/util/ArraySet;-><init>()V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    const-string/jumbo p5, "com.android.vending"

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    new-instance p5, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {p5, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p7, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object p5, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget-object p3, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object p6, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    new-instance p5, Lcom/android/server/am/CacheOomRanker;

    new-instance p6, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    invoke-direct {p5, p1, p6}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    new-instance p5, Lcom/android/server/am/OomAdjusterDebugLogger;

    iget-object p6, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p5, p0, p6}, Lcom/android/server/am/OomAdjusterDebugLogger;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;

    move-result-object p5

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    sget-object p5, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mHeimdallAlwaysRunningMonitor:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object p5

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    new-instance p5, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance p6, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;

    invoke-direct {p6, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-direct {p5, p4, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/am/ActiveUids;

    invoke-direct {p4, p1, v0}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object p4, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    new-instance p4, Ljava/util/ArrayDeque;

    iget p5, p3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/2addr p5, v1

    invoke-direct {p4, p5}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p4, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    const/16 p4, 0xa

    iput p4, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    sget-boolean p4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    sget-object p4, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    iput-object p4, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/am/DynamicHiddenApp;->initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V

    return-void
.end method

.method public static evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getDefaultCapability(ILcom/android/server/am/ProcessRecord;)I
    .locals 3

    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    move-result v0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz p0, :cond_4

    const/4 v2, 0x6

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz p0, :cond_2

    const/16 v2, 0x16

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    goto :goto_0

    :cond_3
    const/16 v2, 0xff

    :cond_4
    :goto_0
    or-int p0, v2, v0

    return p0
.end method

.method public static final oomAdjReasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "_unknown"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "updateOomAdj_fgsfilter"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "updateOomAdj_slowdown"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "updateOomAdj_reconfiguration"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "updateOomAdj_followUp"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "updateOomAdj_componentDisabled"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "updateOomAdj_restrictionChange"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "updateOomAdj_executingService"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "updateOomAdj_stopService"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "updateOomAdj_uidIdle"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "updateOomAdj_removeTask"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "updateOomAdj_shell"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "updateOomAdj_backup"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "updateOomAdj_systemInit"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "updateOomAdj_shortFgs"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "updateOomAdj_processEnd"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "updateOomAdj_processBegin"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "updateOomAdj_allowlistChange"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "updateOomAdj_uiVisibility"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "updateOomAdj_removeProvider"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "updateOomAdj_getProvider"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "updateOomAdj_startService"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "updateOomAdj_unbindService"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "updateOomAdj_bindService"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "updateOomAdj_startReceiver"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "updateOomAdj_finishReceiver"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "updateOomAdj_activityChange"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "updateOomAdj_meh"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const-string/jumbo v0, "fg-service-act"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const-string/jumbo v0, "vis-activity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const-string/jumbo v0, "service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    iget-object p0, p2, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const-string/jumbo p1, "provider"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result p0

    iget p1, v0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    if-le p0, p1, :cond_1

    const/16 p0, 0xfa

    if-gt p1, p0, :cond_0

    const/4 p2, 0x2

    :cond_0
    move p0, p1

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    return p2
.end method

.method public static setProcessGroup(IILjava/lang/String;)V
    .locals 5

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "setProcessGroup "

    const-string v4, " to "

    invoke-static {p1, v3, p2, v4}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    throw p0

    :catch_0
    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    iget v2, v0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-le v2, v3, :cond_0

    iput v3, v0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    :cond_1
    iget p0, v0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    or-int/2addr p0, v1

    iput p0, v0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    :cond_2
    return-void
.end method


# virtual methods
.method public final applyLruAdjust(Ljava/util/ArrayList;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v3, 0xa

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v6, v5, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    const/16 v7, 0x38e

    const/16 v8, 0x3e9

    const/16 v9, 0x384

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x2bc

    if-eqz v6, :cond_6

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget v0, v5, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    add-int/2addr v0, v3

    sub-int/2addr v4, v11

    move v6, v12

    :goto_0
    if-ltz v4, :cond_18

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    const/16 v16, -0x1

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move/from16 v17, v11

    iget v11, v2, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-gt v12, v11, :cond_0

    sget v18, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    if-gt v11, v12, :cond_0

    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_3

    :cond_0
    iget-boolean v12, v15, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v12, :cond_5

    iget-object v12, v15, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v12, :cond_5

    if-ge v11, v8, :cond_1

    iget-boolean v12, v2, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-eqz v12, :cond_5

    if-lt v11, v9, :cond_5

    :cond_1
    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v11, :cond_2

    iget-boolean v11, v11, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    if-eqz v11, :cond_2

    move v11, v3

    move v3, v9

    goto :goto_2

    :cond_2
    iget-boolean v11, v2, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-eqz v11, :cond_3

    if-ge v3, v0, :cond_3

    add-int/lit8 v11, v3, 0x1

    add-int/2addr v3, v9

    goto :goto_2

    :cond_3
    iget v11, v2, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-lt v11, v9, :cond_4

    iget-wide v11, v2, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    iget-wide v8, v5, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    add-long/2addr v11, v8

    cmp-long v8, v11, v13

    if-gez v8, :cond_4

    iget v8, v5, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    add-int/lit16 v8, v8, 0x3ac

    :goto_1
    move v11, v3

    move v3, v8

    goto :goto_2

    :cond_4
    iget v8, v5, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    add-int/2addr v8, v7

    goto :goto_1

    :goto_2
    invoke-virtual {v2, v3, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    move v3, v11

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, -0x1

    move/from16 v11, v17

    const/16 v8, 0x3e9

    const/16 v9, 0x384

    const/16 v12, 0x2bc

    goto :goto_0

    :cond_6
    move/from16 v17, v11

    const/16 v16, -0x1

    iget v2, v5, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget v5, v5, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v5, v2

    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v2, v4, v2

    iget v6, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v2, v6

    if-le v2, v5, :cond_7

    goto :goto_4

    :cond_7
    move v5, v2

    :goto_4
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    if-lez v6, :cond_8

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_8
    move/from16 v6, v17

    :goto_5
    div-int/2addr v6, v2

    move/from16 v8, v17

    if-ge v6, v8, :cond_9

    move v6, v8

    :cond_9
    add-int/2addr v5, v2

    sub-int/2addr v5, v8

    div-int v2, v5, v2

    if-ge v2, v8, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    move v8, v2

    :goto_6
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v0, :cond_b

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    iget-object v2, v2, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_b
    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    const/16 v2, 0x389

    const/16 v5, 0x393

    move v12, v10

    move v14, v12

    move v15, v14

    move/from16 v20, v15

    move/from16 v13, v16

    move/from16 v19, v13

    const/16 v9, 0x384

    const/16 v11, 0x2bc

    :goto_7
    if-ltz v4, :cond_18

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v1, v10, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    move/from16 p0, v4

    const/16 v4, 0x2bc

    if-gt v4, v1, :cond_c

    sget v18, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    if-gt v1, v4, :cond_c

    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_8
    move/from16 v24, v5

    const/4 v5, 0x0

    const/16 v17, 0x1

    goto/16 :goto_e

    :cond_c
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v4, :cond_17

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v4, :cond_17

    const/16 v4, 0x3e9

    if-lt v1, v4, :cond_17

    iget v1, v10, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    packed-switch v1, :pswitch_data_0

    if-eq v2, v5, :cond_e

    const/16 v17, 0x1

    add-int/lit8 v13, v13, 0x1

    if-lt v13, v8, :cond_e

    add-int/lit8 v3, v5, 0xa

    const/16 v1, 0x3e7

    move v2, v5

    if-le v3, v1, :cond_d

    const/4 v1, 0x0

    const/16 v5, 0x3e7

    const/4 v13, 0x0

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    const/4 v13, 0x0

    move v5, v3

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v10, v2, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    goto :goto_8

    :pswitch_0
    iget v1, v4, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    move/from16 v23, v2

    if-eqz v1, :cond_12

    iget v2, v4, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    move/from16 v24, v5

    iget v5, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v12, v5, :cond_11

    if-ne v14, v1, :cond_11

    if-le v2, v15, :cond_10

    if-ge v9, v7, :cond_f

    const/16 v1, 0x3e7

    if-ge v9, v1, :cond_f

    const/16 v17, 0x1

    add-int/lit8 v20, v20, 0x1

    :cond_f
    move v15, v2

    :cond_10
    const/4 v1, 0x1

    goto :goto_b

    :cond_11
    move v14, v1

    move v15, v2

    move v12, v5

    :goto_a
    const/4 v1, 0x0

    goto :goto_b

    :cond_12
    move/from16 v24, v5

    goto :goto_a

    :goto_b
    if-nez v1, :cond_15

    if-eq v9, v7, :cond_15

    const/16 v17, 0x1

    add-int/lit8 v1, v19, 0x1

    if-lt v1, v6, :cond_14

    add-int/lit8 v1, v7, 0xa

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_13

    move v1, v2

    :cond_13
    const/16 v19, 0x0

    :goto_c
    const/16 v20, 0x0

    goto :goto_d

    :cond_14
    move/from16 v19, v1

    move v1, v7

    move v7, v9

    goto :goto_c

    :cond_15
    const/16 v17, 0x1

    move v1, v7

    move v7, v9

    :goto_d
    add-int v2, v7, v20

    const/4 v5, 0x0

    invoke-virtual {v10, v2, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    if-eqz v0, :cond_16

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    iget-object v4, v2, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v9, v2, Lcom/android/server/am/BGProtectManager;->recentActivityProcessLimit:I

    if-ge v4, v9, :cond_16

    invoke-static {v3}, Lcom/android/server/am/BGProtectManager;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v2, v2, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    move v9, v7

    move/from16 v2, v23

    move v7, v1

    goto :goto_e

    :cond_17
    move/from16 v23, v2

    move/from16 v24, v5

    const/4 v5, 0x0

    const/16 v17, 0x1

    move/from16 v2, v23

    :goto_e
    add-int/lit8 v4, p0, -0x1

    move-object/from16 v1, p1

    move v10, v5

    move/from16 v3, v22

    move/from16 v5, v24

    goto/16 :goto_7

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    const-string/jumbo v4, "SLOWDOWN::OOM Request PID = "

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    iget v0, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    if-eq v0, v7, :cond_0

    iput v0, v5, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    :cond_0
    iget v0, v5, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v8, 0x352

    if-eq v0, v7, :cond_1

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v17

    if-eqz v17, :cond_1

    if-ge v0, v7, :cond_1

    if-ge v0, v8, :cond_1

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;->OOM_IMPROVEMENT:Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V

    :cond_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    const-wide/16 v18, 0x0

    move-object/from16 v20, v4

    if-eqz v0, :cond_18

    iget-object v14, v1, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    if-eqz v14, :cond_18

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iget v15, v5, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget v4, v5, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget v11, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v12, v12, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    move/from16 v22, v12

    iget-boolean v12, v14, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-nez v12, :cond_2

    goto/16 :goto_8

    :cond_2
    if-nez v22, :cond_11

    const-string/jumbo v12, "PerProcessNandswap"

    const-string/jumbo v13, "nandswap "

    move-object/from16 v23, v6

    :try_start_0
    const-string/jumbo v6, "com.google.android.providers.media.module"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v0

    move-object/from16 v24, v5

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v14}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPageoutCachedEmptyEnable()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x10

    if-lt v11, v6, :cond_4

    const/16 v6, 0x13

    if-gt v11, v6, :cond_4

    const/16 v6, 0x384

    if-lt v15, v6, :cond_4

    const/16 v6, 0x3e7

    if-gt v15, v6, :cond_4

    move-object/from16 v24, v5

    const/16 v5, 0xe

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string/jumbo v6, "ro.slmk.chimera_quota_enable"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v24, v5

    const/4 v5, 0x0

    :try_start_2
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_5

    const/16 v5, 0xfa

    if-lt v15, v5, :cond_5

    const/4 v5, 0x5

    if-ne v11, v5, :cond_5

    const/16 v5, 0x8

    goto :goto_0

    :cond_5
    const/16 v5, -0x320

    if-eq v15, v5, :cond_c

    const/16 v5, -0x2bc

    if-eq v15, v5, :cond_c

    const/16 v5, 0x64

    if-eq v15, v5, :cond_b

    const/16 v5, 0xc8

    if-eq v15, v5, :cond_a

    const/16 v5, 0xe1

    if-eq v15, v5, :cond_9

    const/16 v5, 0xfa

    if-eq v15, v5, :cond_8

    const/16 v5, 0x1f4

    if-eq v15, v5, :cond_7

    const/16 v5, 0x320

    if-eq v15, v5, :cond_6

    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    const/4 v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v5, 0x2

    goto :goto_0

    :cond_8
    const/4 v5, 0x3

    goto :goto_0

    :cond_9
    const/4 v5, 0x4

    goto :goto_0

    :cond_a
    const/4 v5, 0x5

    goto :goto_0

    :cond_b
    const/4 v5, 0x6

    goto :goto_0

    :cond_c
    const/4 v5, 0x7

    :goto_0
    if-eqz v5, :cond_12

    iget-object v6, v14, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v2, :cond_d

    new-instance v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    invoke-direct {v2, v7, v8, v15, v11}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    iget-object v6, v14, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v6, v0

    goto :goto_3

    :catch_0
    :goto_2
    move v6, v0

    goto/16 :goto_4

    :cond_d
    iput v15, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_3
    :try_start_3
    iget-wide v0, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    cmp-long v25, v0, v18

    if-nez v25, :cond_e

    const-wide/32 v0, 0x83d60

    sub-long v0, v9, v0

    iput-wide v0, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    goto/16 :goto_5

    :cond_e
    sub-long v0, v9, v0

    const-wide/32 v25, 0x927c0

    cmp-long v0, v0, v25

    if-lez v0, :cond_13

    iput-wide v9, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " curAdj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, v14, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v25, 0x14

    cmp-long v0, v0, v25

    if-gez v0, :cond_10

    iget-object v0, v14, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v14, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v15, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :cond_10
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "Skipping send NANDSWAP_NON_ACTIVITY_APP_MSG"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_1
    move-object/from16 v24, v5

    goto :goto_2

    :catch_2
    move v6, v0

    move-object/from16 v24, v5

    :catch_3
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "failed to tryNandswapNonActivityApp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    move-object/from16 v24, v5

    move-object/from16 v23, v6

    :cond_12
    move v6, v0

    :cond_13
    :goto_5
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    if-lez v0, :cond_17

    const/16 v1, 0x2bc

    if-ne v3, v1, :cond_15

    const/16 v1, 0x352

    if-lt v15, v1, :cond_15

    const/16 v1, 0x3e7

    if-gt v15, v1, :cond_15

    if-eqz v22, :cond_15

    :try_start_4
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_6

    :cond_14
    new-instance v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    invoke-direct {v0, v6, v7, v8, v15}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(ILjava/lang/String;II)V

    iget-object v1, v14, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_6
    const/16 v5, 0xc8

    const/4 v1, 0x5

    if-gt v3, v5, :cond_16

    if-le v4, v1, :cond_17

    :cond_16
    const/16 v2, 0x64

    if-lt v15, v2, :cond_17

    if-ge v15, v5, :cond_17

    if-ne v11, v1, :cond_17

    invoke-virtual {v14, v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->notifyReentryAppToPPR(I)V

    :cond_17
    :goto_7
    move-object/from16 v1, p0

    goto :goto_9

    :cond_18
    :goto_8
    move-object/from16 v24, v5

    move-object/from16 v23, v6

    goto :goto_7

    :goto_9
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    move-object/from16 v2, p1

    if-eqz v0, :cond_23

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v11, v24

    iget v5, v11, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget v4, v11, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iget v7, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget v6, v11, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v12, v12, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    iget-boolean v13, v11, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    const-string v14, "GMR"

    const-string/jumbo v15, "bg : "

    move/from16 v22, v12

    const-string/jumbo v12, "bg_async : "

    move/from16 v24, v3

    const-string/jumbo v3, "fg : "

    move/from16 v25, v13

    const-string/jumbo v13, "fg_async : "

    :try_start_5
    sget-boolean v26, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    if-eqz v26, :cond_24

    iget-object v9, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    if-nez v9, :cond_19

    goto/16 :goto_f

    :cond_19
    if-lez v24, :cond_24

    const-string/jumbo v9, "com.sec.android.app.launcher"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    goto/16 :goto_f

    :cond_1a
    if-ne v5, v4, :cond_1b

    if-eq v6, v7, :cond_24

    if-nez v5, :cond_24

    :cond_1b
    const/16 v9, 0x352

    if-lt v4, v9, :cond_1c

    const/16 v9, 0x3e7

    if-le v4, v9, :cond_1d

    :cond_1c
    const/16 v9, 0x64

    if-le v4, v9, :cond_1e

    const/16 v9, 0xc8

    if-gt v4, v9, :cond_1e

    :cond_1d
    if-nez v5, :cond_1e

    goto :goto_a

    :cond_1e
    if-nez v4, :cond_21

    const/4 v9, 0x2

    if-eq v6, v9, :cond_21

    if-nez v5, :cond_21

    if-ne v7, v9, :cond_21

    :goto_a
    if-eqz v25, :cond_21

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1f

    iget-object v9, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    if-eqz v9, :cond_1f

    if-eqz v8, :cond_1f

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v8}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_b

    :catch_5
    move-exception v0

    goto/16 :goto_e

    :cond_1f
    :goto_b
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutPids:Ljava/util/Set;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutPids:Ljava/util/Set;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    if-eqz v9, :cond_20

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v3, v24

    invoke-static/range {v3 .. v8}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getProcDebugMessage(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move v13, v6

    move v6, v4

    move v4, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    iget-object v3, v3, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    iget-object v3, v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    move/from16 v21, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v3, v10, v4, v9, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v3, v4

    move v4, v6

    move v6, v13

    move/from16 v5, v21

    :goto_c
    const/16 v9, 0x2bc

    goto :goto_d

    :cond_20
    move/from16 v21, v5

    move v13, v6

    move v6, v4

    move/from16 v4, v24

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v4

    move v4, v6

    move v6, v13

    move/from16 v5, v21

    invoke-static/range {v3 .. v8}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getProcDebugMessage(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    invoke-virtual {v9, v3}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapInImpl(I)I

    goto :goto_c

    :cond_21
    move/from16 v3, v24

    goto :goto_c

    :goto_d
    if-ne v4, v9, :cond_24

    const/16 v9, 0x352

    if-lt v5, v9, :cond_24

    const/16 v9, 0x3e7

    if-gt v5, v9, :cond_24

    if-eqz v22, :cond_24

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    if-eqz v9, :cond_22

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v3 .. v8}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getProcDebugMessage(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v3, v5, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_f

    :cond_22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v3 .. v8}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getProcDebugMessage(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    invoke-virtual {v0, v3, v8}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapOut(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_f

    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to handle onOomAdjChanged: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_23
    move-object/from16 v11, v24

    :cond_24
    :goto_f
    iget v9, v11, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v0, v2}, Lcom/android/server/am/DynamicHiddenApp;->setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    iget v3, v11, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget v4, v11, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-eq v3, v4, :cond_31

    if-eqz p8, :cond_25

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    if-eqz v4, :cond_25

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_25
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4, v5, v3, v0}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    :goto_10
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mHeimdallAlwaysRunningMonitor:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    if-eqz v0, :cond_2e

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v10, v11, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iget v6, v11, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isEnable()Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_15

    :cond_26
    if-eqz v10, :cond_28

    const/16 v3, 0xfa

    if-le v10, v3, :cond_27

    goto :goto_11

    :cond_27
    const/4 v3, 0x0

    goto :goto_12

    :cond_28
    :goto_11
    const/4 v3, 0x1

    :goto_12
    if-eqz v3, :cond_29

    invoke-static {v6}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isAlwaysRunningAdj(I)Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_29
    invoke-static {v10}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isAlwaysRunningAdj(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz v6, :cond_2b

    const/16 v3, 0xfa

    if-le v6, v3, :cond_2a

    goto :goto_13

    :cond_2a
    const/4 v3, 0x0

    goto :goto_14

    :cond_2b
    :goto_13
    const/4 v3, 0x1

    :goto_14
    if-nez v3, :cond_2d

    :cond_2c
    if-eqz v6, :cond_2d

    if-nez v10, :cond_2e

    :cond_2d
    iget-object v12, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    new-instance v3, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v12, v4, v10, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_15

    :catch_6
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Handler onOomAdjChanged catch exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "HeimdallAlwaysRunningMonitor"

    invoke-static {v0, v3, v4}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2e
    :goto_15
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v3, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Set "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adj "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_2f
    iget v0, v11, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput v0, v11, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    move-object/from16 v4, v23

    const/4 v10, 0x1

    if-eqz v23, :cond_30

    iput-boolean v10, v4, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    :cond_30
    const/16 v0, -0x2710

    iput v0, v11, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    goto :goto_16

    :cond_31
    move-object/from16 v4, v23

    const/4 v10, 0x1

    const/16 v5, 0xb4

    if-lt v0, v5, :cond_32

    const/16 v5, 0xc8

    if-ge v0, v5, :cond_32

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5, v6, v3, v0}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    :cond_32
    :goto_16
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    if-eqz v0, :cond_33

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    :cond_33
    iget v3, v11, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    const/16 v12, 0xa

    if-eqz v0, :cond_34

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    iget v0, v0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    if-nez v0, :cond_34

    iget v0, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, v11, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-nez v0, :cond_34

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    if-nez v0, :cond_34

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mKeepSEMPrcp:Z

    if-nez v0, :cond_34

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    const/16 v3, 0xa

    move-object/from16 v23, v4

    const/16 v4, 0x16

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v6, v5

    move-wide/from16 v14, v18

    move-object/from16 v13, v23

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    move-object v8, v2

    move/from16 v4, p7

    const/4 v0, 0x0

    goto/16 :goto_22

    :cond_34
    move-object v8, v2

    move-object v13, v4

    move-wide/from16 v14, v18

    iget v2, v11, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    const/16 v0, 0x1c

    if-ne v2, v3, :cond_36

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v4, :cond_35

    move/from16 v4, p7

    if-ne v4, v0, :cond_4a

    goto :goto_17

    :cond_35
    move/from16 v4, p7

    goto/16 :goto_21

    :cond_36
    move/from16 v4, p7

    :goto_17
    iput v3, v11, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v6, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v6, :cond_37

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Setting sched group of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v7, " to "

    const-string v14, ": "

    invoke-static {v3, v6, v7, v14, v5}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v6, v11, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_37
    const/4 v5, -0x2

    if-eq v3, v5, :cond_3f

    if-eqz v3, :cond_3e

    if-eq v3, v10, :cond_3d

    const/4 v7, 0x3

    if-eq v3, v7, :cond_3c

    const/4 v7, 0x4

    if-eq v3, v7, :cond_3c

    const/4 v7, 0x5

    if-eq v3, v7, :cond_3b

    const/4 v7, 0x6

    if-eq v3, v7, :cond_3a

    const/4 v7, 0x7

    if-eq v3, v7, :cond_38

    :goto_18
    const/4 v7, -0x1

    goto :goto_1a

    :cond_38
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_39

    const/16 v0, 0xb

    goto :goto_19

    :cond_39
    const/4 v0, -0x1

    :goto_19
    move v7, v0

    goto :goto_1a

    :cond_3a
    move v7, v12

    goto :goto_1a

    :cond_3b
    const/16 v7, 0x8

    goto :goto_1a

    :cond_3c
    const/4 v7, 0x5

    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v14, :cond_40

    if-ne v4, v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Top app "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " change to THREAD_GROUP_DEFAULT(BLOCK)"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v0, "OomAdjuster"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Top app "

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-wide/from16 v16, v14

    const-string v14, " should not change TOP sched group"

    invoke-static {v7, v6, v14, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_18

    :cond_3d
    const/4 v7, 0x7

    goto :goto_1a

    :cond_3e
    const/4 v7, 0x0

    goto :goto_1a

    :cond_3f
    const/16 v0, 0x9

    goto :goto_19

    :cond_40
    :goto_1a
    if-eq v3, v5, :cond_41

    if-ne v2, v5, :cond_46

    :cond_41
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_42

    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    :cond_42
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    if-eqz v0, :cond_46

    :try_start_7
    const-string/jumbo v0, "OomAdjuster"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v14, v20

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v8, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", slowdown = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v5, :cond_43

    move v14, v10

    goto :goto_1b

    :cond_43
    const/4 v14, 0x0

    :goto_1b
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    iget v6, v8, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v14, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_44

    iget-object v14, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1c

    :catch_7
    move-exception v0

    goto :goto_1e

    :cond_44
    iget v14, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_1c
    if-ne v3, v5, :cond_45

    move v5, v10

    goto :goto_1d

    :cond_45
    const/4 v5, 0x0

    :goto_1d
    const-string/jumbo v15, "slowdown"

    invoke-interface {v0, v6, v14, v5, v15}, Landroid/os/ICustomFrequencyManager;->requestFreezeSlowdown(IIZLjava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_1f

    :goto_1e
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_46
    :goto_1f
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_8
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_48

    if-eq v2, v7, :cond_4a

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    move-result v2

    if-eqz v2, :cond_47

    iget v0, v8, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, v11, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    invoke-static {v8, v10}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/ProcessRecord;Z)V

    goto :goto_21

    :cond_47
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    iget v3, v8, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, -0xa

    invoke-static {v3, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    if-eqz v0, :cond_4a

    :try_start_9
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_21

    :cond_48
    if-ne v2, v7, :cond_4a

    if-eq v3, v7, :cond_4a

    :try_start_a
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v5, 0x0

    invoke-static {v8, v5}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/ProcessRecord;Z)V

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    iget v3, v8, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v5, v11, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5}, Landroid/os/Process;->setThreadPriority(II)V

    goto :goto_20

    :cond_49
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/Process;->setThreadPriority(II)V

    :goto_20
    if-eqz v0, :cond_4a

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x4

    invoke-static {v0, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    :cond_4a
    :goto_21
    move v0, v10

    :goto_22
    iget-boolean v2, v11, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    iget-boolean v3, v11, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    if-eq v2, v3, :cond_4b

    iput-boolean v3, v11, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    move v14, v10

    :goto_23
    const/4 v5, 0x0

    goto :goto_24

    :cond_4b
    const/4 v14, 0x0

    goto :goto_23

    :goto_24
    invoke-virtual {v1, v8, v4, v5, v9}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZI)V

    iget v2, v11, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-eq v2, v3, :cond_4c

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v2, :cond_4c

    :try_start_b
    iget v3, v11, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {v2, v3}, Landroid/app/IApplicationThread$Delegator;->setProcessState(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    :cond_4c
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_4d

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v2

    if-eqz v2, :cond_4e

    :cond_4d
    move-wide/from16 v5, p3

    goto :goto_25

    :cond_4e
    move-wide/from16 v5, p3

    const/4 v7, 0x0

    goto :goto_26

    :goto_25
    iput-wide v5, v11, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    move v7, v10

    :goto_26
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v15, v2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_c
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iput v4, v2, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput v4, v2, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iput v4, v2, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    iget-wide v3, v3, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    iput-wide v3, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-eq v3, v4, :cond_57

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Proc state change of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_4f
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    if-ge v3, v12, :cond_50

    move v3, v10

    goto :goto_27

    :cond_50
    const/4 v3, 0x0

    :goto_27
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-ge v4, v12, :cond_51

    move v4, v10

    goto :goto_28

    :cond_51
    const/4 v4, 0x0

    :goto_28
    if-eqz v3, :cond_52

    if-nez v4, :cond_52

    iput-wide v5, v11, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    iget-object v3, v11, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-wide v5, v3, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    move/from16 v16, v10

    move-object/from16 v24, v11

    const-wide/16 v10, 0x0

    invoke-virtual {v3, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_29
    move-wide/from16 v11, p5

    goto :goto_2a

    :cond_52
    move/from16 v16, v10

    move-object/from16 v24, v11

    goto :goto_29

    :goto_2a
    invoke-virtual {v1, v8, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    move-object/from16 v3, v24

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/4 v7, 0x2

    if-gt v4, v7, :cond_53

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-le v4, v7, :cond_53

    iput-wide v5, v3, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    :cond_53
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    iget v5, v3, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v5

    if-nez v5, :cond_54

    iget v5, v3, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    :cond_54
    iput v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_55

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    :cond_55
    if-nez p2, :cond_56

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v4, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(ILcom/android/server/am/ProcessRecord;)V

    monitor-exit v4

    goto :goto_2d

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v0

    :cond_56
    move/from16 v10, v16

    iput-boolean v10, v3, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    goto :goto_2d

    :cond_57
    move-object v3, v11

    move-wide/from16 v11, p5

    iget-boolean v4, v3, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    if-eqz v4, :cond_59

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v4

    if-eqz v4, :cond_58

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_2b

    :cond_58
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_2b
    iget-wide v6, v3, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    sub-long v6, v11, v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_5b

    invoke-virtual {v1, v8, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_2d

    :cond_59
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_2c

    :cond_5a
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_2c
    iget-wide v6, v3, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    sub-long v6, v11, v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_5b

    invoke-virtual {v1, v8, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    :cond_5b
    :goto_2d
    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iget v5, v3, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    if-eq v4, v5, :cond_5c

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iput v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    :cond_5c
    iget-boolean v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    iget-boolean v5, v3, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    if-eq v4, v5, :cond_5d

    iput-boolean v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    if-nez v4, :cond_5d

    iget-boolean v4, v3, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-eqz v4, :cond_5d

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v5, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1, v8}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5d
    if-eqz v14, :cond_5e

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v7, v3, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    iget-object v10, v4, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_e
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v4

    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr v5, v14

    iput v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    monitor-exit v10

    goto :goto_2e

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0

    :cond_5e
    :goto_2e
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v4

    if-eqz v4, :cond_62

    iget-boolean v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    if-eqz v4, :cond_5f

    iget-boolean v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    if-eqz v4, :cond_62

    :cond_5f
    iput-wide v11, v3, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v6, 0x3a

    if-nez v5, :cond_60

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_62

    :cond_60
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v5, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v4

    if-eqz v4, :cond_61

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v5, v13, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    iget-object v10, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    iget-object v4, v4, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v4, v4, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    long-to-int v10, v10

    const-string v11, ""

    const/4 v12, 0x2

    move/from16 p5, v4

    move/from16 p3, v5

    move/from16 p4, v7

    move/from16 p6, v10

    move-object/from16 p7, v11

    move/from16 p2, v12

    invoke-static/range {p2 .. p7}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    :cond_61
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v5, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_62
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    if-ne v2, v4, :cond_63

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-eq v9, v4, :cond_64

    :cond_63
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v5, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v6

    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    move-object/from16 p0, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p1, v4

    move/from16 p2, v5

    move/from16 p3, v6

    move/from16 p6, v9

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/OomAdjusterDebugLogger;->logProcStateChanged(IIIIII)V

    :cond_64
    return v0

    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v0
.end method

.method public final collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_0

    move-object/from16 v8, p1

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-boolean v7, v10, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    invoke-virtual {v3, v9}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    :goto_1
    if-eqz v4, :cond_15

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v8, :cond_1

    iget v9, v8, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v2, v9, v8}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    :cond_1
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v9, v8, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    sub-int/2addr v9, v7

    :goto_2
    const/16 v10, -0x384

    if-ltz v9, :cond_7

    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v12

    iget-object v13, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v12, :cond_2

    iget-object v12, v13, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_3

    :cond_2
    iget-object v12, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_3
    if-eqz v12, :cond_6

    if-eq v12, v4, :cond_6

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v14, v13, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    if-lt v14, v10, :cond_3

    if-gez v14, :cond_3

    goto :goto_4

    :cond_3
    iget-boolean v10, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    or-int/2addr v6, v10

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    const/16 v10, 0x20

    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const v10, 0x8000080

    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iput-boolean v7, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    :cond_6
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_7
    iget-object v9, v4, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v11, v9, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v7

    :goto_5
    if-ltz v11, :cond_b

    iget-object v12, v9, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ContentProviderConnection;

    iget-object v12, v12, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v12, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_a

    if-eq v12, v4, :cond_a

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v14, v13, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    if-lt v14, v10, :cond_8

    if-gez v14, :cond_8

    goto :goto_6

    :cond_8
    iget-boolean v14, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    or-int/2addr v6, v14

    if-eqz v14, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v3, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iput-boolean v7, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    :cond_a
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_b
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v9, v9, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    iget v11, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    :goto_7
    sub-int/2addr v11, v7

    :goto_8
    if-ltz v11, :cond_e

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v13, v13, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    or-int/2addr v6, v13

    if-eqz v13, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v3, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-boolean v7, v12, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    :goto_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    :cond_e
    iget-boolean v9, v4, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v9, :cond_14

    iget-object v9, v8, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    sub-int/2addr v9, v7

    :goto_a
    if-ltz v9, :cond_14

    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v7

    :goto_b
    if-ltz v12, :cond_13

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v7

    :goto_c
    if-ltz v14, :cond_12

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    iget-object v15, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v15, :cond_11

    if-eq v15, v4, :cond_11

    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    if-lt v7, v10, :cond_f

    if-gez v7, :cond_f

    goto :goto_d

    :cond_f
    iget-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    if-eqz v7, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {v3, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    :cond_11
    :goto_d
    add-int/lit8 v14, v14, -0x1

    const/4 v7, 0x1

    goto :goto_c

    :cond_12
    add-int/lit8 v12, v12, -0x1

    const/4 v7, 0x1

    goto :goto_b

    :cond_13
    add-int/lit8 v9, v9, -0x1

    const/4 v7, 0x1

    goto :goto_a

    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-boolean v7, v5, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_16
    return v6
.end method

.method public final computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p10, :cond_2

    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v4, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    if-ne v3, v4, :cond_2

    iget v3, v7, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    if-ne v4, v3, :cond_1

    :cond_0
    move/from16 v23, v2

    goto/16 :goto_65

    :cond_1
    iput-boolean v1, v7, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v2

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialAdj(Lcom/android/server/am/ProcessRecord;)I

    move-result v3

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialCapability(Lcom/android/server/am/ProcessRecord;)I

    move-result v8

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const-wide v10, 0x7fffffffffffffffL

    iput-wide v10, v9, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    const/16 v10, 0x13

    if-nez v9, :cond_3

    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v7, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    iput v10, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    const/16 v0, 0x3e7

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    invoke-virtual {v7, v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iget v0, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    iput v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return v2

    :cond_3
    iput v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    iput-object v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    const/4 v11, 0x2

    if-eqz p10, :cond_4

    if-nez p7, :cond_6

    :cond_4
    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v12, :cond_5

    iget-boolean v12, v12, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v12, :cond_5

    move v12, v1

    goto :goto_0

    :cond_5
    move v12, v2

    :goto_0
    iget v14, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v13, v11, v14, v12, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(IIZZ)Z

    :cond_6
    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v12, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget v13, v7, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    const/high16 v17, 0x10000

    const/4 v1, 0x3

    if-gtz v13, :cond_14

    if-ne v15, v14, :cond_7

    const-string/jumbo v8, "Making fixed: "

    invoke-static {v8, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_7
    const-string/jumbo v8, "fixed"

    iput-object v8, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v8, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    iget v8, v7, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    invoke-virtual {v7, v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iput-boolean v2, v7, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const/16 v8, 0xff

    iput v8, v7, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    if-ne v5, v6, :cond_8

    iput-boolean v2, v7, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const-string/jumbo v6, "pers-top-activity"

    iput-object v6, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-boolean v6, v7, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    if-eqz v6, :cond_9

    iput-boolean v2, v7, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    const-string/jumbo v6, "pers-top-ui"

    iput-object v6, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    goto :goto_2

    :cond_9
    iget v6, v7, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_b

    iget-object v6, v7, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget v6, v6, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    and-int v6, v6, v17

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_1

    :cond_a
    move v6, v2

    :goto_1
    iput v6, v7, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    :cond_b
    iget v6, v7, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_c

    iput-boolean v2, v7, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    goto :goto_2

    :cond_c
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz v6, :cond_d

    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-boolean v6, v7, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v6, :cond_d

    iput-boolean v2, v7, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    const-string/jumbo v6, "running-transient-launch-animation"

    iput-object v6, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :cond_d
    :goto_2
    iget-boolean v6, v7, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    if-nez v6, :cond_11

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_e

    goto :goto_3

    :cond_e
    iget-boolean v0, v7, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v0, :cond_f

    :goto_3
    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_4

    :cond_f
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, v1, :cond_10

    goto :goto_4

    :cond_10
    const/4 v13, 0x5

    invoke-virtual {v7, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    :cond_11
    :goto_4
    iget v0, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iput v0, v7, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iget v0, v7, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    iget v0, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v0, :cond_12

    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    :cond_12
    iget v0, v7, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-lt v0, v3, :cond_13

    iget v0, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-ge v0, v4, :cond_0

    :cond_13
    :goto_5
    const/16 v18, 0x1

    goto/16 :goto_66

    :cond_14
    const/4 v13, 0x5

    iput-boolean v2, v7, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    if-eqz p7, :cond_15

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialCapability(Lcom/android/server/am/ProcessRecord;)I

    move-result v16

    goto :goto_6

    :cond_15
    move/from16 v16, v2

    :goto_6
    const/16 v21, 0x10

    move/from16 v23, v2

    if-ne v5, v6, :cond_1a

    const/4 v9, 0x2

    if-ne v1, v9, :cond_1a

    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v9, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mDemoteTopAppReasons:I

    if-nez v9, :cond_16

    goto :goto_7

    :cond_16
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz v9, :cond_17

    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    move-result v10

    if-eqz v10, :cond_17

    iget-boolean v10, v7, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v10, :cond_17

    :goto_7
    const-string/jumbo v9, "top-activity"

    iput-object v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/4 v9, 0x3

    goto :goto_9

    :cond_17
    if-eqz v9, :cond_18

    const-string/jumbo v9, "transient-launch-top-activity"

    iput-object v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    goto :goto_8

    :cond_18
    const-string/jumbo v9, "intermediate-top-activity"

    iput-object v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :goto_8
    const/4 v9, 0x2

    :goto_9
    if-ne v15, v14, :cond_19

    const-string/jumbo v10, "Making top: "

    invoke-static {v10, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_19
    move v13, v9

    move/from16 v31, v16

    move/from16 v9, v23

    const/4 v2, 0x2

    const/4 v11, 0x1

    :goto_a
    const/16 v26, 0x1

    const/16 v30, 0x1

    goto/16 :goto_13

    :cond_1a
    iget-boolean v9, v7, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v9, :cond_1c

    const-string/jumbo v9, "running-remote-anim"

    iput-object v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v15, v14, :cond_1b

    const-string/jumbo v9, "Making running remote anim: "

    invoke-static {v9, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_1b
    move v2, v1

    move/from16 v31, v16

    move/from16 v11, v23

    const/16 v9, 0x64

    const/4 v13, 0x3

    goto :goto_a

    :cond_1c
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v9, :cond_1e

    const-string/jumbo v9, "instrumentation"

    iput-object v9, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    or-int/lit8 v16, v16, 0x10

    if-ne v15, v14, :cond_1d

    const-string/jumbo v9, "Making instrumentation: "

    invoke-static {v9, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_1d
    move/from16 v31, v16

    move/from16 v9, v23

    move v11, v9

    move/from16 v26, v11

    move/from16 v30, v26

    const/4 v2, 0x4

    const/4 v13, 0x2

    goto/16 :goto_13

    :cond_1e
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    iget v10, v7, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_25

    iget-object v10, v7, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v11, v7, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v11}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v13

    if-eqz v13, :cond_1f

    invoke-virtual {v10, v13}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v10

    if-ltz v10, :cond_1f

    invoke-virtual {v13}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v10

    if-nez v10, :cond_20

    :cond_1f
    const/high16 v2, -0x80000000

    goto :goto_c

    :cond_20
    iget v10, v13, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v2, v13, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    if-le v10, v2, :cond_21

    goto :goto_b

    :cond_21
    iget-object v2, v13, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_22

    :goto_b
    const/4 v2, 0x2

    goto :goto_c

    :cond_22
    move/from16 v2, v23

    :goto_c
    aput v2, v9, v23

    const/high16 v9, -0x80000000

    if-eq v2, v9, :cond_23

    const/4 v9, 0x1

    goto :goto_d

    :cond_23
    move/from16 v9, v23

    :goto_d
    iput v9, v7, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v10, 0x20

    const/4 v13, 0x1

    if-ne v9, v13, :cond_24

    iput v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_e

    :cond_24
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    goto :goto_e

    :cond_25
    const/4 v13, 0x1

    :goto_e
    iget v2, v7, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne v2, v13, :cond_27

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    aget v9, v2, v23

    const-string/jumbo v2, "broadcast"

    iput-object v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v15, v14, :cond_26

    const-string/jumbo v2, "Making broadcast: "

    invoke-static {v2, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_26
    const/16 v2, 0xb

    move v13, v9

    move/from16 v31, v16

    move/from16 v9, v23

    move v11, v9

    move/from16 v30, v11

    :goto_f
    const/16 v26, 0x1

    goto/16 :goto_13

    :cond_27
    iget-object v2, v12, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2a

    iget-boolean v2, v12, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    if-eqz v2, :cond_28

    const/4 v9, 0x2

    goto :goto_10

    :cond_28
    move/from16 v9, v23

    :goto_10
    const-string/jumbo v2, "exec-service"

    iput-object v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v15, v14, :cond_29

    const-string/jumbo v2, "Making exec-service: "

    invoke-static {v2, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_29
    move v13, v9

    move/from16 v31, v16

    move/from16 v9, v23

    move v11, v9

    move/from16 v30, v11

    const/16 v2, 0xa

    goto :goto_f

    :cond_2a
    if-ne v5, v6, :cond_2c

    const-string/jumbo v2, "top-sleeping"

    iput-object v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v15, v14, :cond_2b

    const-string/jumbo v2, "Making top (sleeping): "

    invoke-static {v2, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_2b
    move v2, v1

    move/from16 v31, v16

    move/from16 v9, v23

    move v11, v9

    move v13, v11

    goto/16 :goto_a

    :cond_2c
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v10, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_2d

    goto :goto_12

    :cond_2d
    iget-object v10, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10

    :try_start_0
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const-string/jumbo v2, "force-keep-alive"

    iput-object v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    move v2, v1

    move/from16 v31, v16

    :goto_11
    move/from16 v11, v23

    move v13, v11

    const/16 v9, 0x64

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_67

    :cond_2f
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_12
    iget-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-eqz v2, :cond_30

    const-string/jumbo v2, "dedicated"

    iput-object v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    move/from16 v31, v16

    move/from16 v2, v21

    goto :goto_11

    :cond_30
    if-eqz p10, :cond_31

    iget-boolean v2, v7, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    if-nez v2, :cond_32

    :cond_31
    const-string/jumbo v2, "cch-empty"

    iput-object v2, v7, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    :cond_32
    if-ne v15, v14, :cond_33

    const-string/jumbo v2, "Making empty: "

    invoke-static {v2, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_33
    move/from16 v9, p2

    move/from16 v31, v16

    move/from16 v11, v23

    move v13, v11

    const/16 v2, 0x13

    goto/16 :goto_a

    :goto_13
    if-ne v5, v6, :cond_34

    const/4 v10, 0x1

    goto :goto_14

    :cond_34
    move/from16 v10, v23

    :goto_14
    if-nez v10, :cond_38

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v16

    if-eqz v16, :cond_38

    move/from16 v16, v8

    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move/from16 v24, v16

    move/from16 v16, v1

    move-object v1, v12

    move v12, v2

    move/from16 v2, v24

    const/16 v24, 0x0

    const/16 v27, 0xa

    const/16 v28, 0x5

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ProcessStateRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V

    move/from16 v42, v14

    move-object v14, v7

    move v7, v15

    move/from16 v15, v42

    iget v9, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    iget-boolean v10, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    iget v8, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v11, -0x1

    if-ne v8, v11, :cond_36

    iget-object v8, v14, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget v8, v8, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    and-int v8, v8, v17

    if-eqz v8, :cond_35

    const/4 v8, 0x1

    goto :goto_15

    :cond_35
    move/from16 v8, v23

    :goto_15
    iput v8, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    :cond_36
    iget v8, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v13, 0x1

    if-ne v8, v13, :cond_37

    const/4 v8, 0x1

    goto :goto_16

    :cond_37
    move/from16 v8, v23

    :goto_16
    iget v11, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    iget v12, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    iget-object v13, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    iput-object v13, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    move/from16 v16, v8

    goto :goto_17

    :cond_38
    move v1, v14

    move-object v14, v7

    move v7, v15

    move v15, v1

    move-object v1, v12

    const/16 v24, 0x0

    const/16 v27, 0xa

    const/16 v28, 0x5

    move v12, v2

    move v2, v8

    move/from16 v16, v11

    move v11, v12

    move v12, v13

    :goto_17
    const/16 v8, 0x12

    if-le v11, v8, :cond_3b

    iget v13, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v8, -0x1

    if-ne v13, v8, :cond_39

    iget-object v13, v14, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v13, v13, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    iput v13, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    :cond_39
    iget v13, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v8, 0x1

    if-ne v13, v8, :cond_3b

    const-string/jumbo v8, "cch-rec"

    iput-object v8, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_3a

    const-string/jumbo v8, "Raise procstate to cached recent: "

    invoke-static {v8, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_3a
    const/16 v11, 0x12

    :cond_3b
    iget-boolean v8, v1, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v13

    move/from16 v17, v2

    if-eqz v8, :cond_41

    iget-boolean v2, v1, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-nez v2, :cond_3c

    goto :goto_18

    :cond_3c
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_3d

    :goto_18
    move/from16 v25, v3

    move/from16 v2, v23

    const/16 v18, 0x1

    goto :goto_1c

    :cond_3d
    iget-object v2, v1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_19
    if-ltz v2, :cond_40

    move/from16 v25, v3

    iget-object v3, v1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v32

    if-eqz v32, :cond_3e

    move/from16 v32, v2

    iget-object v2, v3, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz v2, :cond_3f

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v2

    cmp-long v2, v2, p5

    if-ltz v2, :cond_3f

    const/4 v2, 0x1

    :goto_1a
    const/16 v18, 0x1

    goto :goto_1b

    :cond_3e
    move/from16 v32, v2

    :cond_3f
    add-int/lit8 v2, v32, -0x1

    move/from16 v3, v25

    goto :goto_19

    :cond_40
    move/from16 v25, v3

    move/from16 v2, v23

    goto :goto_1a

    :goto_1b
    xor-int/lit8 v2, v2, 0x1

    :goto_1c
    if-nez v2, :cond_42

    move/from16 v2, v18

    goto :goto_1d

    :cond_41
    move/from16 v25, v3

    const/16 v18, 0x1

    :cond_42
    move/from16 v2, v23

    :goto_1d
    const/16 v6, 0xc8

    const/4 v3, 0x4

    if-gt v9, v6, :cond_44

    if-le v11, v3, :cond_43

    goto :goto_1e

    :cond_43
    move/from16 v24, v23

    goto :goto_20

    :cond_44
    :goto_1e
    if-eqz v8, :cond_45

    if-eqz v13, :cond_45

    const-string/jumbo v2, "fg-service"

    move v13, v3

    move v8, v6

    move/from16 v24, v21

    goto :goto_1f

    :cond_45
    if-eqz v2, :cond_46

    const-string/jumbo v2, "fg-service-short"

    const/16 v8, 0xe2

    move v13, v3

    move/from16 v24, v23

    goto :goto_1f

    :cond_46
    iget-boolean v2, v14, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    if-eqz v2, :cond_47

    const-string/jumbo v2, "has-overlay-ui"

    move v8, v6

    move/from16 v24, v23

    const/4 v13, 0x6

    goto :goto_1f

    :cond_47
    move/from16 v8, v23

    move v13, v8

    move-object/from16 v2, v24

    move/from16 v24, v13

    :goto_1f
    if-eqz v2, :cond_49

    iput-object v2, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_48

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Raise to "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :cond_48
    move v9, v8

    move v11, v13

    const/4 v12, 0x2

    :cond_49
    :goto_20
    iget-boolean v2, v1, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v2, :cond_4e

    const/16 v2, 0x32

    if-le v9, v2, :cond_4e

    iget-wide v2, v14, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    iget-object v13, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v33, v9

    iget-wide v8, v13, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v2, v8

    cmp-long v2, v2, p5

    if-gtz v2, :cond_4b

    iget v2, v14, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/4 v9, 0x2

    if-gt v2, v9, :cond_4a

    goto :goto_21

    :cond_4a
    move-object v13, v1

    move/from16 v35, v17

    move/from16 v8, v18

    const/16 v32, 0x6

    move/from16 v18, v10

    move/from16 v17, v12

    move v10, v4

    move v12, v9

    const/4 v9, -0x1

    goto :goto_23

    :cond_4b
    const/4 v9, 0x2

    :goto_21
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string/jumbo v2, "fg-service-act"

    iput-object v2, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/16 v34, 0x32

    goto :goto_22

    :cond_4c
    const-string/jumbo v2, "fg-service-short-act"

    iput-object v2, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/16 v2, 0x33

    move/from16 v34, v2

    :goto_22
    if-ne v7, v15, :cond_4d

    const-string/jumbo v2, "Raise to recent fg: "

    invoke-static {v2, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_4d
    iget-wide v2, v14, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move v13, v10

    iget-wide v9, v8, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v2, v9

    move v10, v4

    move/from16 v35, v17

    move/from16 v8, v18

    const/4 v9, -0x1

    const/16 v32, 0x6

    move/from16 v17, v12

    move/from16 v18, v13

    const/4 v12, 0x2

    move-object v13, v1

    move-wide v1, v2

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(JJLcom/android/server/am/ProcessRecord;)V

    move/from16 v1, v34

    goto :goto_24

    :cond_4e
    move-object v13, v1

    move/from16 v33, v9

    move/from16 v35, v17

    move/from16 v8, v18

    const/4 v9, -0x1

    const/16 v32, 0x6

    move/from16 v18, v10

    move/from16 v17, v12

    const/4 v12, 0x2

    move v10, v4

    :goto_23
    move/from16 v1, v33

    :goto_24
    iget-boolean v2, v13, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v2, :cond_50

    iget-wide v2, v13, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v19, 0x0

    cmp-long v2, v2, v19

    if-lez v2, :cond_4f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v8, v13, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    sub-long/2addr v2, v8

    iget-object v4, v13, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v4, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_4f

    goto :goto_25

    :cond_4f
    const/4 v2, 0x0

    goto :goto_26

    :cond_50
    :goto_25
    const/4 v2, 0x1

    :goto_26
    if-eqz v2, :cond_53

    const/16 v8, 0x34

    if-le v1, v8, :cond_53

    iget-wide v2, v14, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v4, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long/2addr v2, v8

    cmp-long v2, v2, p5

    if-gtz v2, :cond_51

    iget v2, v14, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-gt v2, v12, :cond_53

    :cond_51
    const-string/jumbo v1, "top-ej-act"

    iput-object v1, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_52

    const-string/jumbo v1, "Raise to recent fg for EJ: "

    invoke-static {v1, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_52
    iget-wide v1, v14, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long/2addr v1, v3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(JJLcom/android/server/am/ProcessRecord;)V

    const/16 v1, 0x34

    :cond_53
    const/16 v8, 0x8

    if-gt v1, v6, :cond_54

    if-le v11, v8, :cond_56

    :cond_54
    iget-object v2, v14, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Lcom/android/server/am/ActivityManagerService$12;

    if-eqz v2, :cond_56

    const-string/jumbo v1, "force-imp"

    iput-object v1, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    iput-object v2, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-ne v7, v15, :cond_55

    const-string/jumbo v1, "Raise to force imp: "

    invoke-static {v1, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_55
    move v11, v8

    move v2, v12

    goto :goto_27

    :cond_56
    move v6, v1

    move/from16 v2, v17

    :goto_27
    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v9, -0x1

    if-ne v1, v9, :cond_58

    iget-object v1, v14, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, v3, :cond_57

    const/4 v1, 0x1

    goto :goto_28

    :cond_57
    const/4 v1, 0x0

    :goto_28
    iput v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    :cond_58
    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_59

    const/4 v1, 0x1

    goto :goto_29

    :cond_59
    const/4 v1, 0x0

    :goto_29
    if-eqz v1, :cond_5d

    const/16 v1, 0x190

    if-le v6, v1, :cond_5b

    const-string/jumbo v2, "heavy"

    iput-object v2, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_5a

    const-string/jumbo v2, "Raise adj to heavy: "

    invoke-static {v2, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_5a
    move v6, v1

    const/4 v2, 0x0

    :cond_5b
    const/16 v1, 0xd

    if-le v11, v1, :cond_5d

    const-string/jumbo v3, "heavy"

    iput-object v3, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_5c

    const-string/jumbo v3, "Raise procstate to heavy: "

    invoke-static {v3, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_5c
    move v11, v1

    :cond_5d
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_61

    const/16 v1, 0x258

    if-le v6, v1, :cond_5f

    const-string/jumbo v2, "home"

    iput-object v2, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_5e

    const-string/jumbo v2, "Raise adj to home: "

    invoke-static {v2, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_5e
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    move v6, v1

    const/4 v2, 0x0

    :cond_5f
    const/16 v1, 0xe

    if-le v11, v1, :cond_61

    const-string/jumbo v3, "home"

    iput-object v3, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_60

    const-string/jumbo v3, "Raise procstate to home: "

    invoke-static {v3, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_60
    move v11, v1

    :cond_61
    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    const/4 v9, -0x1

    if-ne v1, v9, :cond_63

    iget-object v1, v14, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, v3, :cond_62

    const/4 v3, 0x1

    iput v3, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    iget-object v1, v14, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2a

    :cond_62
    const/4 v1, 0x0

    const/4 v3, 0x1

    iput v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    goto :goto_2a

    :cond_63
    const/4 v3, 0x1

    :goto_2a
    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    if-ne v1, v3, :cond_64

    const/4 v1, 0x1

    goto :goto_2b

    :cond_64
    const/4 v1, 0x0

    :goto_2b
    const/16 v9, 0x2bc

    const/16 v3, 0xf

    if-eqz v1, :cond_6d

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v1

    if-eqz v1, :cond_6d

    if-lt v11, v3, :cond_66

    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-ne v1, v3, :cond_66

    move-object/from16 v17, v13

    iget-wide v12, v14, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    sget-wide v27, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v12, v12, v27

    cmp-long v1, v12, p5

    if-gtz v1, :cond_67

    const-string/jumbo v1, "previous-expired"

    iput-object v1, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_65

    const-string v1, "Expire prev adj: "

    invoke-static {v1, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_65
    move v11, v3

    move v13, v11

    const/4 v2, 0x0

    goto :goto_2e

    :cond_66
    move-object/from16 v17, v13

    :cond_67
    if-le v6, v9, :cond_69

    const-string/jumbo v1, "previous"

    iput-object v1, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_68

    const-string/jumbo v1, "Raise adj to prev: "

    invoke-static {v1, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_68
    move v12, v9

    const/4 v6, 0x0

    goto :goto_2c

    :cond_69
    move v12, v6

    move v6, v2

    :goto_2c
    if-le v11, v3, :cond_6b

    const-string/jumbo v1, "previous"

    iput-object v1, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_6a

    const-string/jumbo v1, "Raise procstate to prev: "

    invoke-static {v1, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_6a
    move v11, v3

    :cond_6b
    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-ne v1, v3, :cond_6c

    iget-wide v1, v14, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    goto :goto_2d

    :cond_6c
    move-wide/from16 v1, p5

    :goto_2d
    sget-wide v27, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v1, v1, v27

    move v13, v3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(JJLcom/android/server/am/ProcessRecord;)V

    move v2, v6

    move v6, v12

    goto :goto_2e

    :cond_6d
    move-object/from16 v17, v13

    move v13, v3

    :goto_2e
    if-eqz p7, :cond_6e

    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_6e
    const/4 v1, 0x0

    invoke-virtual {v14, v6, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iput v11, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput-boolean v1, v14, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    iget-object v1, v14, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v12, 0x80

    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v1, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v3, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BackupRecord;

    if-nez v1, :cond_70

    :cond_6f
    const/4 v1, 0x0

    goto :goto_2f

    :cond_70
    iget-object v1, v1, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, v1, :cond_6f

    const/4 v1, 0x1

    :goto_2f
    if-eqz v1, :cond_76

    const/16 v1, 0x12c

    if-le v6, v1, :cond_73

    if-le v11, v8, :cond_71

    goto :goto_30

    :cond_71
    move v8, v11

    :goto_30
    const-string/jumbo v3, "backup"

    iput-object v3, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_72

    const-string/jumbo v3, "Raise adj to backup: "

    invoke-static {v3, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_72
    move v6, v1

    move v11, v8

    :cond_73
    const/16 v1, 0x9

    if-le v11, v1, :cond_75

    const-string/jumbo v3, "backup"

    iput-object v3, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_74

    const-string/jumbo v3, "Raise procstate to backup: "

    invoke-static {v3, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_74
    move v11, v1

    :cond_75
    const/16 v30, 0x0

    :cond_76
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    iput-boolean v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    move-object/from16 v8, v17

    iget-object v1, v8, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    move/from16 v42, v6

    move v6, v1

    move/from16 v1, v42

    move/from16 v42, v11

    move v11, v2

    move/from16 v2, v42

    :goto_31
    const/16 v3, 0x1f4

    if-ltz v6, :cond_8f

    if-gtz v1, :cond_78

    if-eqz v11, :cond_78

    const/4 v4, 0x2

    if-le v2, v4, :cond_77

    goto :goto_33

    :cond_77
    move/from16 v17, v15

    move v15, v4

    :goto_32
    move/from16 v39, v7

    move-object/from16 v40, v8

    move/from16 v38, v10

    move/from16 v41, v18

    move/from16 v37, v25

    move/from16 v9, v31

    const/16 v18, 0x1

    move v10, v3

    goto/16 :goto_47

    :cond_78
    :goto_33
    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    iget-boolean v9, v4, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v9, :cond_81

    const/4 v9, 0x1

    iput-boolean v9, v14, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    iget-object v9, v14, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v9, v12}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    const/16 v9, 0xa

    if-le v2, v9, :cond_7a

    const-string/jumbo v2, "started-services"

    iput-object v2, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    if-ne v7, v15, :cond_79

    const-string/jumbo v2, "Raise procstate to started service: "

    invoke-static {v2, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_79
    move/from16 v20, v9

    goto :goto_34

    :cond_7a
    move/from16 v20, v2

    :goto_34
    iget-boolean v2, v4, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v2, :cond_7c

    iget-boolean v2, v14, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-eqz v2, :cond_7c

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v2

    if-nez v2, :cond_7c

    if-le v1, v3, :cond_7b

    const-string/jumbo v2, "cch-started-ui-services"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_7b
    move-object v12, v4

    move/from16 v27, v10

    move/from16 v2, v20

    :goto_35
    move/from16 v9, v31

    goto :goto_38

    :cond_7c
    iget-boolean v2, v4, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    move/from16 v27, v10

    if-nez v2, :cond_7e

    iget-wide v9, v4, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v9, v12

    cmp-long v2, p5, v9

    if-gez v2, :cond_7d

    goto :goto_36

    :cond_7d
    move v10, v3

    move-object v12, v4

    move/from16 v9, v31

    goto :goto_37

    :cond_7e
    :goto_36
    iget-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez v2, :cond_7d

    if-le v1, v3, :cond_7d

    const-string/jumbo v1, "started-services"

    invoke-virtual {v14, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v7, v15, :cond_7f

    const-string/jumbo v1, "Raise adj to started service: "

    invoke-static {v1, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_7f
    iget-wide v1, v4, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v1, v9

    move v10, v3

    move-object v12, v4

    move/from16 v9, v31

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(JJLcom/android/server/am/ProcessRecord;)V

    move v1, v10

    :goto_37
    if-le v1, v10, :cond_80

    const-string/jumbo v0, "cch-started-services"

    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_80
    move/from16 v2, v20

    goto :goto_38

    :cond_81
    move-object v12, v4

    move/from16 v27, v10

    goto :goto_35

    :goto_38
    iget-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_86

    iget v0, v12, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {v12}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v3

    if-eqz v3, :cond_86

    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_82

    const/4 v3, 0x1

    goto :goto_39

    :cond_82
    const/4 v3, 0x0

    :goto_39
    or-int v3, v24, v3

    or-int/lit8 v4, v3, 0x40

    const/4 v13, 0x1

    invoke-virtual {v14, v13}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v10

    if-eqz v10, :cond_85

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_83

    const/4 v3, 0x2

    goto :goto_3a

    :cond_83
    const/4 v3, 0x0

    :goto_3a
    or-int/2addr v3, v4

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_84

    const/4 v0, 0x4

    goto :goto_3b

    :cond_84
    const/4 v0, 0x0

    :goto_3b
    or-int/2addr v0, v3

    :goto_3c
    move/from16 v24, v0

    goto :goto_3d

    :cond_85
    or-int/lit8 v0, v3, 0x46

    goto :goto_3c

    :cond_86
    :goto_3d
    if-nez p10, :cond_87

    move/from16 v19, v6

    move/from16 v39, v7

    move-object/from16 v40, v8

    move/from16 v31, v9

    move/from16 v17, v15

    move/from16 v41, v18

    move/from16 v37, v25

    move/from16 v38, v27

    const/4 v15, 0x2

    const/16 v18, 0x1

    const/16 v29, 0x80

    const/16 v36, 0xa

    goto/16 :goto_46

    :cond_87
    const/4 v0, 0x0

    invoke-virtual {v14, v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iput v2, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    invoke-virtual {v14, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    iput v9, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iget-object v3, v12, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/16 v19, 0x1

    add-int/lit8 v4, v4, -0x1

    move/from16 v31, v9

    :goto_3e
    if-ltz v4, :cond_8e

    if-gtz v1, :cond_89

    if-eqz v11, :cond_89

    const/4 v9, 0x2

    if-le v2, v9, :cond_88

    goto :goto_40

    :cond_88
    move/from16 v17, v15

    move v15, v9

    :goto_3f
    move/from16 v39, v7

    move-object/from16 v40, v8

    move/from16 v41, v18

    move/from16 v18, v19

    move/from16 v37, v25

    move/from16 v38, v27

    const/16 v29, 0x80

    const/16 v36, 0xa

    move/from16 v19, v6

    goto/16 :goto_46

    :cond_89
    :goto_40
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move v10, v2

    move v2, v0

    :goto_41
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_8d

    if-gtz v1, :cond_8b

    if-eqz v11, :cond_8b

    const/4 v12, 0x2

    if-le v10, v12, :cond_8a

    goto :goto_43

    :cond_8a
    move/from16 v17, v15

    move v15, v12

    :goto_42
    move-object/from16 v20, v3

    move/from16 v22, v4

    move/from16 v39, v7

    move-object/from16 v40, v8

    move/from16 v41, v18

    move/from16 v18, v19

    move/from16 v37, v25

    move/from16 v38, v27

    const/16 v29, 0x80

    const/16 v36, 0xa

    move/from16 v19, v6

    goto/16 :goto_45

    :cond_8b
    const/4 v12, 0x2

    :goto_43
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ConnectionRecord;

    iget-object v0, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v5, :cond_8c

    move-object/from16 v20, v3

    move/from16 v22, v4

    move/from16 v39, v7

    move-object/from16 v40, v8

    move/from16 v17, v15

    move/from16 v41, v18

    move/from16 v18, v19

    move/from16 v37, v25

    move/from16 v38, v27

    const/16 v29, 0x80

    const/16 v36, 0xa

    move/from16 v27, v2

    move/from16 v19, v6

    move-object/from16 v25, v9

    move v15, v12

    goto :goto_44

    :cond_8c
    move/from16 v22, v12

    const/4 v12, 0x1

    move-object v1, v13

    const/4 v13, 0x0

    move/from16 v11, p2

    move/from16 v10, p9

    move-object/from16 v20, v3

    move/from16 v39, v7

    move-object/from16 v40, v8

    move/from16 v17, v15

    move/from16 v41, v18

    move/from16 v18, v19

    move/from16 v15, v22

    move/from16 v37, v25

    move/from16 v38, v27

    const/16 v29, 0x80

    const/16 v36, 0xa

    move/from16 v7, p4

    move/from16 v8, p7

    move-object v3, v0

    move/from16 v27, v2

    move/from16 v22, v4

    move-object v2, v5

    move/from16 v19, v6

    move-object/from16 v25, v9

    move-object/from16 v0, p0

    move-object/from16 v6, p3

    move-wide/from16 v4, p5

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-object v5, v2

    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iget v10, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iget v11, v14, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    iget v0, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    move/from16 v31, v0

    :goto_44
    add-int/lit8 v2, v27, 0x1

    move/from16 v15, v17

    move/from16 v6, v19

    move-object/from16 v3, v20

    move/from16 v4, v22

    move-object/from16 v9, v25

    move/from16 v25, v37

    move/from16 v27, v38

    move/from16 v7, v39

    move-object/from16 v8, v40

    const/4 v0, 0x0

    const/16 v32, 0x6

    move/from16 v19, v18

    move/from16 v18, v41

    goto/16 :goto_41

    :cond_8d
    move/from16 v17, v15

    const/4 v15, 0x2

    goto/16 :goto_42

    :goto_45
    add-int/lit8 v4, v22, -0x1

    move v2, v10

    move/from16 v15, v17

    move/from16 v6, v19

    move-object/from16 v3, v20

    move/from16 v25, v37

    move/from16 v27, v38

    move/from16 v7, v39

    move-object/from16 v8, v40

    const/4 v0, 0x0

    const/16 v32, 0x6

    move/from16 v19, v18

    move/from16 v18, v41

    goto/16 :goto_3e

    :cond_8e
    move/from16 v17, v15

    const/4 v15, 0x2

    goto/16 :goto_3f

    :goto_46
    add-int/lit8 v6, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v15, v17

    move/from16 v12, v29

    move/from16 v25, v37

    move/from16 v10, v38

    move/from16 v7, v39

    move-object/from16 v8, v40

    move/from16 v18, v41

    const/16 v9, 0x2bc

    const/16 v13, 0xf

    const/16 v32, 0x6

    goto/16 :goto_31

    :cond_8f
    move/from16 v17, v15

    const/4 v15, 0x2

    goto/16 :goto_32

    :goto_47
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v6, v2

    move v7, v9

    move v2, v11

    move v9, v1

    move v1, v3

    :goto_48
    if-ltz v1, :cond_90

    if-gtz v9, :cond_91

    if-eqz v2, :cond_91

    if-le v6, v15, :cond_90

    goto :goto_49

    :cond_90
    const/4 v12, 0x6

    move-object v15, v0

    move/from16 v8, v17

    move/from16 v10, v39

    move-object/from16 v0, p0

    goto/16 :goto_51

    :cond_91
    :goto_49
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v3

    if-eqz p10, :cond_93

    const/4 v4, 0x0

    invoke-virtual {v14, v9, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iput v6, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    iput v7, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_4a
    if-ltz v4, :cond_93

    if-gtz v9, :cond_92

    if-eqz v2, :cond_92

    if-le v6, v15, :cond_93

    :cond_92
    iget-object v2, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    move-object v6, v3

    iget-object v3, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v11, p2

    move/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v15, v0

    move/from16 v20, v1

    move-object v1, v2

    move/from16 v27, v4

    move-object v2, v5

    move-object/from16 v25, v6

    move-object/from16 v0, p0

    move-object/from16 v6, p3

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-object v5, v2

    iget v9, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iget v6, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iget v2, v14, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    iget v7, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    add-int/lit8 v4, v27, -0x1

    move-object v0, v15

    move/from16 v1, v20

    move-object/from16 v3, v25

    const/16 v10, 0x1f4

    const/4 v15, 0x2

    goto :goto_4a

    :goto_4b
    move v11, v2

    move v3, v6

    move v2, v9

    goto :goto_4c

    :cond_93
    move-object v15, v0

    move/from16 v20, v1

    move-object/from16 v25, v3

    move-object/from16 v0, p0

    goto :goto_4b

    :goto_4c
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v1

    if-eqz v1, :cond_98

    if-lez v2, :cond_95

    const/4 v1, 0x0

    invoke-virtual {v14, v1, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    const-string/jumbo v1, "ext-provider"

    invoke-virtual {v14, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move-object/from16 v6, v25

    iget-object v1, v6, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v1, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    move/from16 v8, v17

    move/from16 v10, v39

    if-ne v10, v8, :cond_94

    const-string/jumbo v1, "Raise adj to external provider: "

    invoke-static {v1, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_94
    const/4 v2, 0x0

    const/4 v11, 0x2

    :goto_4d
    const/4 v12, 0x6

    goto :goto_4e

    :cond_95
    move/from16 v8, v17

    move/from16 v10, v39

    goto :goto_4d

    :goto_4e
    if-le v3, v12, :cond_97

    iput v12, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    if-ne v10, v8, :cond_96

    const-string/jumbo v1, "Raise procstate to external provider: "

    invoke-static {v1, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_96
    move v9, v2

    move v2, v11

    move v6, v12

    goto :goto_50

    :cond_97
    :goto_4f
    move v9, v2

    move v6, v3

    move v2, v11

    goto :goto_50

    :cond_98
    move/from16 v8, v17

    move/from16 v10, v39

    const/4 v12, 0x6

    goto :goto_4f

    :goto_50
    add-int/lit8 v1, v20, -0x1

    move/from16 v17, v8

    move/from16 v39, v10

    move-object v0, v15

    const/16 v10, 0x1f4

    const/4 v15, 0x2

    goto/16 :goto_48

    :goto_51
    iget-wide v3, v15, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v1, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v3, v12

    cmp-long v1, v3, p5

    if-lez v1, :cond_9d

    const/16 v11, 0x2bc

    if-le v9, v11, :cond_9a

    const-string/jumbo v1, "recent-provider"

    invoke-virtual {v14, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v10, v8, :cond_99

    const-string/jumbo v1, "Raise adj to recent provider: "

    invoke-static {v1, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_99
    iget-wide v1, v15, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v1, v3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(JJLcom/android/server/am/ProcessRecord;)V

    const/4 v9, 0x0

    :goto_52
    const/16 v13, 0xf

    goto :goto_53

    :cond_9a
    move v11, v9

    move v9, v2

    goto :goto_52

    :goto_53
    if-le v6, v13, :cond_9c

    const-string/jumbo v1, "recent-provider"

    invoke-virtual {v14, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v10, v8, :cond_9b

    const-string/jumbo v1, "Raise procstate to recent provider: "

    invoke-static {v1, v5, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_9b
    iget-wide v1, v15, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v1, v3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(JJLcom/android/server/am/ProcessRecord;)V

    move v2, v9

    move v9, v11

    move v3, v13

    :goto_54
    const/16 v1, 0x13

    goto :goto_55

    :cond_9c
    move v3, v6

    move v2, v9

    move v9, v11

    goto :goto_54

    :cond_9d
    move v3, v6

    goto :goto_54

    :goto_55
    move-object/from16 v8, v40

    if-lt v3, v1, :cond_9e

    iget-boolean v1, v8, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-eqz v1, :cond_9f

    const-string/jumbo v1, "cch-client-act"

    invoke-virtual {v14, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v21, 0x11

    :goto_56
    move/from16 v3, v21

    :cond_9e
    const/16 v10, 0x1f4

    goto :goto_57

    :cond_9f
    iget-boolean v1, v8, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz v1, :cond_9e

    const-string/jumbo v1, "cch-as-act"

    invoke-virtual {v14, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_56

    :goto_57
    if-ne v9, v10, :cond_a8

    if-eqz p4, :cond_a7

    if-nez p7, :cond_a7

    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const/4 v6, 0x3

    div-int/2addr v4, v6

    if-le v1, v4, :cond_a0

    move/from16 v1, v18

    goto :goto_58

    :cond_a0
    const/4 v1, 0x0

    :goto_58
    iput-boolean v1, v14, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    if-nez v1, :cond_a6

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v1

    if-eqz v1, :cond_a1

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v10, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    goto :goto_59

    :cond_a1
    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v10, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    :goto_59
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v1

    if-eqz v1, :cond_a2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_5a

    :cond_a2
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    float-to-double v12, v1

    :goto_5a
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    move v4, v7

    iget-wide v6, v1, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    long-to-double v6, v6

    mul-double/2addr v6, v12

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget v12, v1, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v13, -0x1

    const/4 v15, 0x0

    const/16 v17, 0x1

    if-eq v12, v13, :cond_a3

    if-gtz v12, :cond_a4

    :goto_5b
    move/from16 v15, v17

    goto :goto_5c

    :cond_a3
    iget v1, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-gtz v1, :cond_a4

    goto :goto_5b

    :cond_a4
    :goto_5c
    if-nez v15, :cond_a5

    long-to-double v10, v10

    cmpl-double v1, v10, v6

    if-ltz v1, :cond_a5

    move/from16 v13, v18

    iput-boolean v13, v14, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    iput-boolean v13, v14, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    goto :goto_5d

    :cond_a5
    move/from16 v13, v18

    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v1, v13

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    goto :goto_5d

    :cond_a6
    move v4, v7

    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    goto :goto_5d

    :cond_a7
    move v4, v7

    :goto_5d
    iget-boolean v1, v14, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    if-eqz v1, :cond_a9

    const/16 v9, 0x320

    goto :goto_5e

    :cond_a8
    move v4, v7

    :cond_a9
    :goto_5e
    iget-boolean v1, v8, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v1, :cond_aa

    or-int v7, v4, v24

    goto :goto_5f

    :cond_aa
    move v7, v4

    :goto_5f
    invoke-static {v3, v5}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(ILcom/android/server/am/ProcessRecord;)I

    move-result v1

    or-int/2addr v1, v7

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    const/16 v6, 0x80

    if-eqz v4, :cond_ab

    iget-boolean v4, v4, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v4, :cond_ab

    move/from16 v13, v41

    goto :goto_60

    :cond_ab
    move/from16 v13, v41

    if-eqz v13, :cond_ac

    goto :goto_60

    :cond_ac
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v4, :cond_ad

    goto :goto_60

    :cond_ad
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    iget v4, v4, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceiversSize:I

    if-lez v4, :cond_ae

    goto :goto_60

    :cond_ae
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v4, :cond_af

    goto :goto_60

    :cond_af
    const/4 v6, 0x0

    :goto_60
    or-int/2addr v1, v6

    const/4 v4, 0x5

    if-le v3, v4, :cond_b0

    and-int/lit8 v1, v1, -0x11

    :cond_b0
    iget-boolean v4, v5, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    if-eqz v4, :cond_b1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V

    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    iget v0, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    iput v0, v14, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    const/16 v23, 0x0

    return v23

    :cond_b1
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    const/4 v11, 0x7

    if-eqz v4, :cond_b2

    invoke-static {v2, v3, v14}, Lcom/android/server/am/OomAdjuster;->promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z

    move-result v6

    if-eqz v6, :cond_b2

    move v2, v11

    :cond_b2
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v6, :cond_b4

    iget-boolean v6, v6, Lcom/android/server/am/UidRecord;->mFGSFilter:Z

    if-eqz v6, :cond_b4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_b3

    if-eqz v26, :cond_b3

    move/from16 v10, v38

    const/4 v2, 0x6

    goto :goto_61

    :cond_b3
    move/from16 v10, v38

    if-ne v10, v6, :cond_b5

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/UidRecord;->mFGSFilter:Z

    goto :goto_61

    :cond_b4
    move/from16 v10, v38

    :cond_b5
    :goto_61
    iget-boolean v6, v14, Lcom/android/server/am/ProcessStateRecord;->mSlowAbnormal:Z

    if-eqz v6, :cond_b7

    const/4 v6, 0x3

    if-le v3, v6, :cond_b6

    if-eq v2, v6, :cond_b6

    iget v6, v14, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v7, 0x352

    if-ge v6, v7, :cond_b6

    if-eqz v30, :cond_b7

    const/4 v2, -0x2

    goto :goto_62

    :cond_b6
    const/4 v6, 0x0

    iput-boolean v6, v14, Lcom/android/server/am/ProcessStateRecord;->mSlowAbnormal:Z

    :cond_b7
    :goto_62
    iput v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    const-wide v6, 0x7fffffffffffffffL

    if-eqz v16, :cond_b8

    iput-wide v6, v14, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    goto :goto_63

    :cond_b8
    move-wide/from16 p2, v6

    iget-wide v6, v14, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v1, v6, p2

    if-nez v1, :cond_b9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v14, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    :cond_b9
    :goto_63
    iput-boolean v13, v14, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    invoke-static {v5, v9, v2}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I

    move-result v1

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    iput v3, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    invoke-virtual {v0, v14, v1}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v0, :cond_bb

    if-eqz v4, :cond_ba

    goto :goto_64

    :cond_ba
    const/4 v11, 0x2

    :goto_64
    invoke-virtual {v14, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    :cond_bb
    iget v0, v14, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    move/from16 v1, v37

    if-lt v0, v1, :cond_13

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-lt v0, v10, :cond_13

    iget v0, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    move/from16 v2, v35

    if-eq v0, v2, :cond_bc

    goto/16 :goto_5

    :cond_bc
    const/16 v23, 0x0

    :goto_65
    return v23

    :goto_66
    return v18

    :goto_67
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z
    .locals 18

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v1, p3

    move/from16 v13, p13

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    if-eqz v0, :cond_0

    :goto_0
    const/16 v16, 0x0

    goto :goto_2

    :cond_0
    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-ne v1, v12, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p12, :cond_4

    if-eqz p9, :cond_2

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-wide/from16 v5, p4

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v7, p8

    move/from16 v9, p10

    move/from16 v2, p11

    move-object v14, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v14, v0

    move-object v6, v1

    if-eqz p12, :cond_3

    iget v0, v14, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iget v0, v14, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iput v0, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    :cond_3
    :goto_1
    iget v3, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iget v4, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    move-object/from16 v0, p0

    move/from16 v5, p8

    move-object v1, v12

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v3

    move-object v12, v1

    if-eqz v3, :cond_5

    goto :goto_0

    :goto_2
    return v16

    :cond_4
    move-object v2, v0

    move-object v6, v1

    move-object/from16 v0, p0

    :cond_5
    iget v1, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iget v3, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iget v4, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iget v5, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iget v7, v15, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    iget v8, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iget-object v9, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v10, v10, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v14, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move/from16 p4, v8

    iget v8, v14, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    move/from16 p5, v9

    const/16 p6, 0x10

    const/4 v9, 0x4

    if-ge v8, v9, :cond_6

    move/from16 v8, p6

    goto :goto_3

    :cond_6
    iget v8, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    and-int/lit8 v8, v8, 0x10

    :goto_3
    or-int v8, p4, v8

    iget v14, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    and-int/lit16 v14, v14, 0x80

    or-int/2addr v8, v14

    move/from16 v14, p6

    if-lt v3, v14, :cond_7

    const/16 v3, 0x13

    :cond_7
    iget-object v14, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v9, v14, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    move/from16 p7, v8

    if-eqz v9, :cond_9

    iget-object v9, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget v8, v9, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    iget v14, v14, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    or-int/2addr v8, v14

    iget v14, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v12, 0x1

    invoke-virtual {v9, v8, v14, v12, v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(IIZZ)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_11

    :cond_9
    const/4 v8, 0x3

    if-nez v13, :cond_c

    iget-boolean v9, v15, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    if-nez v9, :cond_b

    iget-boolean v9, v2, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    if-nez v9, :cond_b

    if-le v3, v8, :cond_b

    const/4 v9, 0x4

    if-ne v3, v9, :cond_a

    iget-boolean v9, v2, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-nez v9, :cond_a

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v9, 0x1

    :goto_6
    iput-boolean v9, v15, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    :cond_c
    if-le v4, v1, :cond_f

    iget-boolean v9, v15, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-eqz v9, :cond_d

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v9

    if-nez v9, :cond_d

    const/16 v9, 0xc8

    if-le v1, v9, :cond_d

    const-string/jumbo v1, "cch-ui-provider"

    move v9, v4

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v15, v1, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_4

    :cond_e
    const-string/jumbo v9, "provider"

    move-object/from16 v17, v9

    move v9, v1

    move-object/from16 v1, v17

    :goto_7
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v12

    if-nez v12, :cond_10

    if-eqz v13, :cond_10

    goto :goto_4

    :cond_f
    const/4 v1, 0x0

    move v9, v4

    :cond_10
    const/4 v14, 0x2

    const/4 v8, 0x4

    if-gt v3, v8, :cond_13

    if-nez v1, :cond_11

    const-string/jumbo v1, "provider"

    :cond_11
    if-ne v3, v14, :cond_12

    const/4 v3, 0x3

    goto :goto_8

    :cond_12
    const/4 v3, 0x5

    :cond_13
    :goto_8
    if-nez v13, :cond_16

    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget-object v14, v11, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v14, :cond_14

    goto :goto_b

    :cond_14
    iget-object v14, v11, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-object v12, v11, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_15

    move-object/from16 p10, v14

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v3, v8, v13, v14}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_15
    move-object/from16 p10, v14

    :goto_9
    monitor-exit p10

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 p10, v14

    :goto_a
    monitor-exit p10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_16
    :goto_b
    if-le v5, v3, :cond_19

    if-eqz p13, :cond_17

    iget v8, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    if-le v8, v3, :cond_18

    const/4 v12, 0x1

    return v12

    :cond_17
    iput v3, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    :cond_18
    move v8, v3

    goto :goto_c

    :cond_19
    move v8, v5

    :goto_c
    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    if-le v2, v7, :cond_1a

    const/4 v14, 0x2

    goto :goto_d

    :cond_1a
    move v14, v7

    :goto_d
    if-eqz v1, :cond_1b

    if-nez p13, :cond_1b

    iput-object v1, v15, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/4 v12, 0x1

    iput v12, v15, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    iput-object v6, v15, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    iput v3, v15, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    iget-object v2, v11, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v2, v15, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    move/from16 v2, p5

    if-ne v10, v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Raise to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", due to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adj="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procState="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    invoke-static {v8}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    :goto_e
    const/4 v1, 0x5

    goto :goto_f

    :cond_1b
    move-object/from16 v12, p2

    goto :goto_e

    :goto_f
    if-le v8, v1, :cond_1c

    and-int/lit8 v1, p7, -0x11

    goto :goto_10

    :cond_1c
    move/from16 v1, p7

    :goto_10
    if-eqz p13, :cond_1e

    if-lt v9, v4, :cond_8

    if-lt v8, v5, :cond_8

    if-le v14, v7, :cond_1d

    goto/16 :goto_4

    :cond_1d
    and-int/lit16 v2, v1, -0x81

    move/from16 v3, p4

    and-int/lit16 v3, v3, -0x81

    if-eq v2, v3, :cond_1e

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1e

    goto/16 :goto_4

    :goto_11
    return v12

    :cond_1e
    if-ge v9, v4, :cond_1f

    invoke-static {v12, v9, v14}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I

    move-result v14

    :cond_1f
    if-ge v8, v5, :cond_20

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    iput v8, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    :cond_20
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v2, :cond_21

    invoke-static {v14, v8, v15}, Lcom/android/server/am/OomAdjuster;->promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v14, 0x7

    :cond_21
    if-le v14, v7, :cond_22

    invoke-virtual {v0, v15, v14}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    :cond_22
    iput v1, v15, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    const/16 v16, 0x0

    return v16
.end method

.method public final computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z
    .locals 30

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p13

    const/4 v0, 0x1

    const/16 v1, 0x8

    iget-boolean v2, v12, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move/from16 v19, v3

    goto/16 :goto_b

    :cond_0
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move-object/from16 v4, p3

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz p12, :cond_3

    iget-boolean v6, v12, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v6, :cond_1

    iget-object v6, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_1

    iget-object v5, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move v4, v1

    move-object v1, v6

    goto :goto_0

    :cond_1
    move-object/from16 v29, v4

    move v4, v1

    move-object/from16 v1, v29

    :goto_0
    if-eqz p9, :cond_2

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v7, p8

    move/from16 v9, p10

    move-object v14, v2

    move-object v15, v5

    const/16 v16, 0x40

    move-wide/from16 v5, p4

    move/from16 v2, p11

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    move-object v14, v2

    move-object v15, v5

    const/16 v16, 0x40

    iget v2, v15, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iget v2, v15, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iput v2, v15, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    :goto_1
    move-object v6, v1

    move-object v2, v15

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    move-object v14, v2

    const/16 v16, 0x40

    move-object v6, v4

    move-object v2, v5

    :goto_2
    iget v7, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    const/16 v1, -0x2710

    if-ne v7, v1, :cond_4

    const-string/jumbo v0, "OomAdjuster"

    const-string/jumbo v1, "computeServiceHostOomAdj failed, clientAdj is INVALID_ADJ"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :cond_4
    iget v8, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    iget v4, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iget v3, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iget v15, v14, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    iget v1, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v9, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    move/from16 p6, v10

    if-nez v13, :cond_8

    iget-boolean v10, v14, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    if-nez v10, :cond_7

    iget-boolean v10, v2, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    if-nez v10, :cond_7

    const/4 v10, 0x3

    if-le v8, v10, :cond_7

    const/4 v10, 0x4

    if-ne v8, v10, :cond_6

    iget-boolean v10, v2, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, v14, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    :cond_8
    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move/from16 p11, v1

    iget-boolean v1, v10, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eqz v1, :cond_9

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move/from16 v20, v3

    iget v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    iget v10, v10, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    or-int/2addr v3, v10

    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v0, 0x1

    invoke-virtual {v1, v3, v10, v0, v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(IIZZ)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_6
    const/4 v12, 0x1

    goto/16 :goto_23

    :cond_9
    move/from16 v20, v3

    :cond_a
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v10, 0x10

    const/4 v3, 0x4

    if-ge v1, v3, :cond_b

    move v0, v10

    goto :goto_7

    :cond_b
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    and-int/2addr v0, v10

    :goto_7
    or-int v0, p11, v0

    move-object v3, v2

    if-eqz v11, :cond_d

    const-wide v1, 0x400000000L

    invoke-virtual {v11, v1, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    const/16 v2, 0x80

    goto :goto_9

    :cond_d
    :goto_8
    iget-object v1, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    :goto_9
    or-int/2addr v0, v1

    const/16 v1, 0x20

    invoke-virtual {v11, v1}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v21

    const-string/jumbo v1, "service"

    if-eqz v21, :cond_47

    const/16 v10, 0x1000

    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v23

    if-eqz v23, :cond_e

    iget v2, v3, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    or-int/2addr v0, v2

    :cond_e
    iget v2, v3, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    const/16 v10, 0x8

    and-int/2addr v2, v10

    if-eqz v2, :cond_10

    const/4 v2, 0x5

    if-gt v8, v2, :cond_f

    const/high16 v2, 0x20000

    invoke-virtual {v11, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    or-int/2addr v0, v10

    :cond_10
    iget v2, v3, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    const/16 v18, 0x20

    and-int/lit8 v2, v2, 0x20

    const/4 v10, 0x6

    if-eqz v2, :cond_11

    if-gt v8, v10, :cond_11

    move/from16 v24, v0

    move-object v2, v1

    const-wide v0, 0x100000000L

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v0

    if-eqz v0, :cond_12

    or-int/lit8 v0, v24, 0x20

    goto :goto_a

    :cond_11
    move/from16 v24, v0

    move-object v2, v1

    :cond_12
    move/from16 v0, v24

    :goto_a
    iget v1, v3, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_13

    iget-boolean v1, v12, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x40

    :cond_13
    move/from16 v18, v0

    if-eqz p12, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v23, v2

    move-object v2, v3

    move v10, v5

    move-object v1, v12

    move/from16 v3, v20

    const/16 v12, 0x80

    move/from16 v5, p8

    move/from16 v20, p11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v5

    move-object/from16 v29, v1

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v2, v29

    if-eqz v5, :cond_14

    const/16 v19, 0x0

    :goto_b
    return v19

    :cond_14
    :goto_c
    const/16 v5, 0x10

    goto :goto_d

    :cond_15
    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object v0, v3

    move v10, v5

    move-object v2, v12

    move/from16 v3, v20

    const/16 v12, 0x80

    move/from16 v20, p11

    goto :goto_c

    :goto_d
    if-lt v8, v5, :cond_16

    const/16 v8, 0x13

    :cond_16
    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v24

    const-string/jumbo v5, "cch-bound-ui-services"

    const/16 v25, 0x0

    if-eqz v24, :cond_1d

    const/16 v12, 0x384

    if-ge v7, v12, :cond_17

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move-object/from16 p8, v5

    iget v5, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    const/16 v26, 0x4

    or-int/lit8 v5, v5, 0x4

    move/from16 p12, v8

    iget v8, v1, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move/from16 v26, v3

    const/4 v3, 0x1

    invoke-virtual {v12, v5, v8, v3, v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(IIZZ)Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_6

    :cond_17
    move/from16 v26, v3

    move-object/from16 p8, v5

    move/from16 p12, v8

    :cond_18
    iget-boolean v3, v14, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-eqz v3, :cond_1b

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v3

    if-nez v3, :cond_1b

    if-le v4, v7, :cond_19

    move-object/from16 v25, p8

    :cond_19
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v13, :cond_1a

    goto/16 :goto_6

    :cond_1a
    move v7, v4

    move v5, v9

    move/from16 v3, v26

    goto :goto_e

    :cond_1b
    iget-object v3, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move v5, v9

    iget-wide v8, v3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-wide/from16 v27, v8

    iget-wide v8, v3, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long v8, v27, v8

    cmp-long v3, p4, v8

    if-ltz v3, :cond_1e

    if-le v4, v7, :cond_1c

    const-string/jumbo v25, "cch-bound-services"

    :cond_1c
    move/from16 v3, p12

    move v7, v4

    goto :goto_e

    :cond_1d
    move/from16 v26, v3

    move-object/from16 p8, v5

    move/from16 p12, v8

    move v5, v9

    :cond_1e
    move/from16 v3, p12

    :goto_e
    if-le v4, v7, :cond_1f

    iget-boolean v9, v14, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-eqz v9, :cond_20

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v9

    if-nez v9, :cond_20

    const/16 v9, 0x1f4

    if-le v7, v9, :cond_20

    const/16 v12, 0x384

    if-lt v4, v12, :cond_1f

    move-object/from16 v25, p8

    move v7, v4

    move/from16 p8, v5

    :goto_f
    move v8, v15

    move/from16 v12, v26

    const/4 v9, 0x0

    goto/16 :goto_17

    :cond_1f
    move/from16 p8, v5

    goto/16 :goto_16

    :cond_20
    const/16 v9, 0x48

    invoke-virtual {v11, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v9

    if-eqz v9, :cond_23

    const/16 v9, -0x2bc

    if-lt v7, v9, :cond_21

    goto/16 :goto_13

    :cond_21
    if-nez v13, :cond_22

    iget v12, v1, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v9, 0x0

    invoke-virtual {v11, v9, v12}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    :cond_22
    move/from16 p8, v5

    const/16 v5, -0x2bc

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v12, 0x0

    goto/16 :goto_14

    :cond_23
    const/16 v9, 0x100

    invoke-virtual {v11, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v9

    const/16 v12, 0xc8

    if-eqz v9, :cond_24

    if-gt v7, v12, :cond_24

    const/16 v9, 0xfa

    if-lt v4, v9, :cond_25

    move/from16 p8, v5

    move v5, v9

    :goto_10
    move v8, v15

    move/from16 v12, v26

    const/4 v9, 0x0

    goto/16 :goto_14

    :cond_24
    const/16 v9, 0x64

    :cond_25
    const/high16 v8, 0x10000

    invoke-virtual {v11, v8}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v22

    if-eqz v22, :cond_27

    const/4 v8, 0x4

    invoke-virtual {v11, v8}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v22

    if-eqz v22, :cond_27

    if-ge v7, v12, :cond_27

    if-lt v4, v12, :cond_26

    const/16 v8, 0xc9

    :goto_11
    move/from16 p8, v5

    move v5, v8

    goto :goto_10

    :cond_26
    move v9, v12

    :cond_27
    const/high16 v8, 0x10000

    invoke-virtual {v11, v8}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v8

    if-eqz v8, :cond_29

    const/4 v8, 0x4

    invoke-virtual {v11, v8}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v22

    if-eqz v22, :cond_29

    if-ge v7, v12, :cond_29

    const/16 v8, 0xe3

    if-lt v4, v8, :cond_28

    :goto_12
    goto :goto_11

    :cond_28
    move v9, v8

    :cond_29
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v11, v8}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v8

    if-eqz v8, :cond_2b

    if-ge v7, v12, :cond_2b

    if-lt v4, v12, :cond_2a

    move/from16 p8, v5

    move v5, v12

    goto :goto_10

    :cond_2a
    move v9, v12

    :cond_2b
    if-lt v7, v12, :cond_2c

    :goto_13
    move/from16 p8, v5

    move v5, v7

    goto :goto_10

    :cond_2c
    const/high16 v8, 0x10000000

    invoke-virtual {v11, v8}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v12

    const/16 v8, 0x64

    if-eqz v12, :cond_2d

    if-gt v7, v8, :cond_2d

    if-le v4, v8, :cond_2d

    goto :goto_12

    :cond_2d
    if-le v4, v8, :cond_2e

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_11

    :cond_2e
    move/from16 p8, v5

    move v8, v15

    move/from16 v12, v26

    const/4 v9, 0x0

    move v5, v4

    :goto_14
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v22

    if-nez v22, :cond_2f

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v22

    if-eqz v22, :cond_2f

    if-eqz v13, :cond_2f

    goto/16 :goto_6

    :cond_2f
    move/from16 v22, v5

    if-ne v5, v7, :cond_30

    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v5, :cond_30

    const/4 v5, 0x1

    add-int/2addr v7, v5

    goto :goto_15

    :cond_30
    move/from16 v7, v22

    :goto_15
    if-le v4, v7, :cond_31

    invoke-virtual {v14, v7, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    move-object/from16 v25, v23

    goto :goto_17

    :cond_31
    move v7, v4

    goto :goto_17

    :goto_16
    move v7, v4

    goto/16 :goto_f

    :goto_17
    const v5, 0x800004

    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v5

    move/from16 p4, v5

    if-eqz p4, :cond_3b

    iget v5, v0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    if-le v5, v8, :cond_32

    move/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v8

    if-eqz v8, :cond_33

    move/from16 v8, v17

    :cond_32
    const/4 v5, 0x2

    goto :goto_18

    :cond_33
    const/4 v5, 0x2

    const/4 v8, 0x2

    :goto_18
    if-ge v3, v5, :cond_37

    const/high16 v5, 0x10000000

    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v3, 0x4

    goto :goto_1b

    :cond_34
    const/high16 v0, 0x4000000

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_35

    :goto_19
    const/4 v3, 0x5

    goto :goto_1b

    :cond_35
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_36

    const/high16 v0, 0x2000000

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_19

    :cond_36
    const/4 v3, 0x6

    goto :goto_1b

    :cond_37
    if-ne v3, v5, :cond_3a

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v3

    if-eqz v3, :cond_39

    const/16 v3, 0x1000

    invoke-virtual {v11, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_38

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    :goto_1a
    or-int v18, v18, v0

    :cond_38
    const/4 v3, 0x3

    goto :goto_1b

    :cond_39
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    goto :goto_1a

    :cond_3a
    :goto_1b
    move/from16 v0, v18

    goto :goto_1c

    :cond_3b
    const/high16 v0, 0x800000

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0x8

    if-ge v3, v0, :cond_3a

    move/from16 v0, v18

    const/16 v3, 0x8

    goto :goto_1c

    :cond_3c
    const/4 v0, 0x7

    if-ge v3, v0, :cond_3a

    move/from16 v0, v18

    const/4 v3, 0x7

    :goto_1c
    const/high16 v5, 0x80000

    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    if-eqz p6, :cond_3e

    if-eqz v13, :cond_3d

    const/4 v5, 0x3

    if-ge v15, v5, :cond_3f

    goto/16 :goto_6

    :cond_3d
    const/4 v5, 0x3

    const/4 v8, 0x1

    iput-boolean v8, v14, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    goto :goto_1d

    :cond_3e
    move v5, v8

    :cond_3f
    :goto_1d
    if-nez v9, :cond_40

    if-nez v13, :cond_40

    iget v8, v1, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v3, v8}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    :cond_40
    if-le v12, v3, :cond_43

    if-eqz v13, :cond_41

    iget v8, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    if-le v8, v3, :cond_42

    const/4 v8, 0x1

    return v8

    :cond_41
    iput v3, v14, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    :cond_42
    move v12, v3

    if-nez v25, :cond_43

    move-object/from16 v8, v23

    :goto_1e
    const/4 v9, 0x7

    goto :goto_1f

    :cond_43
    move-object/from16 v8, v25

    goto :goto_1e

    :goto_1f
    if-ge v12, v9, :cond_44

    const/high16 v9, 0x20000000

    invoke-virtual {v11, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v9

    if-eqz v9, :cond_44

    if-nez v13, :cond_44

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    :cond_44
    if-eqz v8, :cond_46

    if-nez v13, :cond_46

    iput-object v8, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/4 v9, 0x2

    iput v9, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    iput-object v6, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    iput v3, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    iget-object v9, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v9, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    move/from16 v9, p8

    move/from16 p4, v0

    if-ne v9, v10, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v17, v3

    const-string/jumbo v3, "Raise to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", due to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " adj="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " procState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    invoke-static {v12}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;)V

    goto :goto_21

    :cond_45
    :goto_20
    move/from16 v17, v3

    goto :goto_21

    :cond_46
    move/from16 v9, p8

    move/from16 p4, v0

    goto :goto_20

    :goto_21
    move/from16 v0, p4

    move v3, v12

    move/from16 v8, v17

    goto :goto_22

    :cond_47
    move-object/from16 v23, v1

    move v10, v5

    move-object v2, v12

    move/from16 v26, v20

    const/16 v12, 0x384

    move-object/from16 v1, p0

    move/from16 v20, p11

    if-ge v7, v12, :cond_48

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget v5, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    const/16 v17, 0x8

    or-int/lit8 v5, v5, 0x8

    iget v6, v1, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7, v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(IIZZ)Z

    move-result v3

    if-eqz v3, :cond_48

    goto/16 :goto_6

    :cond_48
    move v7, v4

    move v5, v15

    move/from16 v3, v26

    :goto_22
    const/high16 v6, 0x8000000

    invoke-virtual {v11, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_4a

    if-nez v13, :cond_49

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    :cond_49
    const/16 v6, 0x10

    if-gt v8, v6, :cond_4a

    if-le v3, v6, :cond_4a

    const-string/jumbo v3, "cch-as-act"

    iput-object v3, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    move v3, v6

    :cond_4a
    iget-object v6, v11, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    const/16 v12, 0x80

    invoke-virtual {v11, v12}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v8

    if-eqz v8, :cond_4f

    if-eqz v6, :cond_4f

    if-lez v7, :cond_4f

    iget-object v8, v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->mVisibleForServiceConnection:Z

    if-eqz v8, :cond_4f

    const/4 v8, 0x0

    invoke-virtual {v14, v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    move-result v7

    if-eqz v7, :cond_4b

    goto/16 :goto_6

    :goto_23
    return v12

    :cond_4b
    const/4 v7, 0x4

    const/4 v12, 0x1

    invoke-virtual {v11, v7}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v17

    if-eqz v17, :cond_4d

    const/16 v7, 0x40

    invoke-virtual {v11, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_4c

    const/4 v5, 0x4

    goto :goto_24

    :cond_4c
    const/4 v5, 0x2

    :cond_4d
    :goto_24
    if-nez v13, :cond_4e

    move-object/from16 v7, v23

    iput-object v7, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    const/4 v7, 0x2

    iput v7, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    iput-object v6, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    iput v3, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    iget-object v6, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v6, v14, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-ne v9, v10, :cond_4e

    const-string/jumbo v6, "Raise to service w/activity: "

    invoke-static {v6, v2, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/OomAdjuster;)V

    :cond_4e
    move v7, v8

    goto :goto_25

    :cond_4f
    const/4 v8, 0x0

    const/4 v12, 0x1

    :goto_25
    invoke-static {v3, v2}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(ILcom/android/server/am/ProcessRecord;)I

    move-result v6

    or-int/2addr v0, v6

    const/4 v6, 0x5

    if-le v3, v6, :cond_50

    and-int/lit8 v0, v0, -0x11

    :cond_50
    move/from16 v6, v26

    if-lt v7, v4, :cond_51

    if-lt v3, v6, :cond_51

    if-le v5, v15, :cond_52

    :cond_51
    move v8, v12

    :cond_52
    and-int/lit16 v9, v0, -0x81

    move/from16 v10, v20

    and-int/lit16 v10, v10, -0x81

    if-eq v9, v10, :cond_53

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_53

    move v8, v12

    :cond_53
    if-eqz v13, :cond_54

    return v8

    :cond_54
    if-ge v7, v4, :cond_55

    invoke-static {v2, v7, v5}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;II)I

    move-result v5

    :cond_55
    if-ge v3, v6, :cond_56

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    iput v3, v2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    :cond_56
    if-le v5, v15, :cond_57

    invoke-virtual {v1, v14, v5}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    :cond_57
    iput v0, v14, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return v8
.end method

.method public final dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "  oom_re_ranking_rss_weight="

    const-string v1, "  oom_re_ranking_uses_weight="

    const-string v2, "  oom_re_ranking_lru_weight="

    const-string v3, "  oom_re_ranking_number_to_re_rank="

    const-string v4, "  use_oom_re_ranking="

    const-string v5, "CacheOomRanker settings"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v5

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "  compact_proc_state_throttle="

    const-string v3, "  compact_full_delta_rss_throttle_kb="

    const-string v4, "  compact_full_rss_throttle_kb="

    const-string v5, "  compact_statsd_sample_rate="

    const-string v6, "  compact_throttle_max_oom_adj="

    const-string v7, "  compact_throttle_min_oom_adj="

    const-string v8, "  compact_throttle_4="

    const-string v9, "  compact_throttle_3="

    const-string v10, "  compact_throttle_2="

    const-string v11, "  compact_throttle_1="

    const-string v12, "  use_compaction="

    const-string v13, "Compaction settings"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, v0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v11, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Integer;

    invoke-interface {v2, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/server/am/compaction/CompactionStatsManager;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "  Pending compactions:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". hasPendingCompact: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  Apps frozen: "

    const-string v3, "  freeze_binder_async_threshold="

    const-string v5, "  freeze_binder_callback_throttle="

    const-string v6, "  freeze_binder_callback_enabled="

    const-string v7, "  freeze_binder_offset="

    const-string v8, "  freeze_binder_divisor="

    const-string v9, "  freeze_binder_threshold="

    const-string v10, "  freeze_binder_enabled="

    const-string v11, "  freeze_exempt_inst_pkg="

    const-string v12, "  freeze_debounce_timeout="

    const-string v13, "  freeze_statsd_sample_rate="

    const-string v14, "  use_freezer="

    const-string v15, "Freezer settings"

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v15, v0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v14, v0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    iget-object v5, v0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-wide v7, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    if-eqz v5, :cond_2

    const-string v5, " (sticky)"

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    const-string v5, ""

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v0, "FCA Feature enable:false"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    goto :goto_4

    :goto_3
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :goto_4
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :goto_5
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public final enqueuePendingTopAppIfNecessaryLSP()I
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    :cond_0
    return v1
.end method

.method public final evaluateProviderConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 14

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-le v1, v4, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget v1, v3, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    const/4 v10, 0x0

    const/16 v11, 0x384

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public getInitialAdj(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    return p0
.end method

.method public getInitialCapability(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return p0
.end method

.method public getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    return p0
.end method

.method public getInitialProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    return p0
.end method

.method public handleUserSwitchedLocked()V
    .locals 2

    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final idleUidsLocked()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget-object v1, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v6, v4, v6

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_1
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ltz v1, :cond_9

    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v14, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v14

    const-wide/16 v15, 0x0

    iget-wide v8, v14, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    move-wide/from16 v17, v11

    iget-wide v10, v14, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    cmp-long v12, v8, v15

    if-lez v12, :cond_7

    iget-boolean v12, v14, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v12, :cond_2

    cmp-long v10, v10, v15

    if-nez v10, :cond_7

    :cond_2
    cmp-long v10, v8, v6

    if-gtz v10, :cond_4

    iget v8, v14, Lcom/android/server/am/UidRecord;->mUid:I

    const/16 v9, 0x7567

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v10

    :try_start_0
    iput-boolean v2, v14, Lcom/android/server/am/UidRecord;->mIdle:Z

    iput-boolean v2, v14, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    iput-wide v4, v14, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    cmp-long v8, v4, v15

    if-lez v8, :cond_3

    iput-wide v4, v14, Lcom/android/server/am/UidRecord;->mRealLastIdleTime:J

    :cond_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v14, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v8, v9, v14}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_4
    cmp-long v10, v17, v15

    if-eqz v10, :cond_6

    cmp-long v10, v17, v8

    if-lez v10, :cond_5

    goto :goto_1

    :cond_5
    move-wide/from16 v11, v17

    goto :goto_2

    :cond_6
    :goto_1
    move-wide v11, v8

    :goto_2
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v9, v14, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v8

    if-eqz v8, :cond_8

    move v13, v2

    goto :goto_4

    :cond_7
    :goto_3
    move-wide/from16 v11, v17

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_9
    move-wide/from16 v17, v11

    const-wide/16 v15, 0x0

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_a
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    move-wide/from16 v11, v17

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v2, :cond_e

    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long/2addr v6, v8

    cmp-long v8, v6, v15

    if-lez v8, :cond_c

    cmp-long v8, v11, v15

    if-eqz v8, :cond_b

    cmp-long v8, v11, v6

    if-lez v8, :cond_c

    :cond_b
    move-wide v11, v6

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    move-wide/from16 v11, v17

    :cond_e
    cmp-long v1, v11, v15

    if-lez v1, :cond_10

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v11, v1

    sub-long/2addr v11, v4

    if-eqz v13, :cond_f

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget-object v1, v1, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v7, v1, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    long-to-int v8, v11

    const-string v9, ""

    const/4 v6, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    :cond_f
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v0, v3, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_10
    :goto_6
    return-void
.end method

.method public final maybeSetProcessFollowUpUpdateLocked(JJLcom/android/server/am/ProcessRecord;)V
    .locals 1

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p5, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-wide p1, p5, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/OomAdjuster;->scheduleFollowUpOomAdjusterUpdateLocked(JJ)V

    return-void
.end method

.method public maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .locals 12

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v1

    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-static {v2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_1

    iput-wide v6, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-wide v6, v2, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    goto :goto_2

    :cond_1
    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v8, 0x4

    if-gt v2, v8, :cond_5

    iget-wide v8, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v2, v8, v6

    if-nez v2, :cond_3

    iput-wide p2, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-wide p2, v2, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_0
    add-long/2addr v8, v10

    cmp-long v2, p2, v8

    if-lez v2, :cond_2

    goto :goto_2

    :cond_5
    if-gt v2, v4, :cond_6

    goto :goto_1

    :cond_6
    move v3, v5

    :goto_1
    iput-wide v6, v0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-wide v6, v2, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    :goto_2
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_3
    if-eqz v3, :cond_9

    iget-boolean v8, v0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    if-eqz v8, :cond_8

    iget-wide v8, v0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    sub-long v8, p2, v8

    cmp-long v1, v8, v1

    if-lez v1, :cond_9

    :cond_8
    iput-wide p2, v0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    iget-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-wide p2, v1, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p2}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    :goto_4
    array-length p3, p2

    if-ge v5, p3, :cond_9

    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v1, p2, v5

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p3, v2, v4, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    iput-boolean v3, v0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    if-nez v3, :cond_a

    iput-wide v6, v0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    iget-object p0, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    :cond_a
    :goto_5
    return-void
.end method

.method public onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    return-void
.end method

.method public onProcessOomAdjChanged(ILcom/android/server/am/ProcessRecord;)V
    .locals 0

    return-void
.end method

.method public onProcessStateChanged(ILcom/android/server/am/ProcessRecord;)V
    .locals 0

    return-void
.end method

.method public performUpdateOomAdjLSP(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    return-void
.end method

.method public performUpdateOomAdjLSP(ILcom/android/server/am/ProcessRecord;)V
    .locals 12

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v10, 0x40

    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move-object v4, v3

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v5

    iput v5, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    move-object v6, v4

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v5

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_0

    :cond_0
    iget v2, v6, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    const/16 v4, 0x3e9

    if-ne v2, v4, :cond_1

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v7, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v9, Lcom/android/server/am/ActivityManagerService;->mPendingStartActivityUids:Lcom/android/server/am/PendingStartActivityUids;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public performUpdateOomAdjPendingTargetsLocked(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v10

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPendingStartActivityUids:Lcom/android/server/am/PendingStartActivityUids;

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/PendingStartActivityUids;->mPendingUids:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V
    .locals 42

    move-object/from16 v0, p0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v12, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-wide v2, v2, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    xor-int/2addr v2, v10

    move v13, v2

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p3

    if-lez v2, :cond_1

    move v13, v11

    goto :goto_0

    :cond_1
    move v13, v10

    :goto_0
    if-nez v13, :cond_2

    iget-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    cmp-long v2, v2, p3

    if-gez v2, :cond_2

    const-string/jumbo v2, "OomAdjuster"

    const-string/jumbo v3, "Not killing cached processes"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1388

    add-long v2, p3, v2

    iput-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    :cond_2
    const v2, 0x7fffffff

    if-eqz v13, :cond_3

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    move v14, v3

    goto :goto_1

    :cond_3
    move v14, v2

    :goto_1
    if-eqz v13, :cond_4

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v2, v14

    :cond_4
    move v15, v2

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v2, :cond_9

    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iput v11, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_3
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_4
    iput v11, v2, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iget-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_9
    :goto_5
    sget-boolean v16, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    float-to-double v2, v2

    if-eqz v16, :cond_a

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    move-result-wide v4

    goto :goto_6

    :cond_a
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_6
    sub-int/2addr v1, v10

    move v7, v11

    move v8, v7

    move/from16 v18, v8

    move/from16 v24, v18

    move/from16 v25, v24

    const/16 v17, 0x0

    :goto_7
    const-wide/32 v26, 0x1b7740

    const-wide/16 v29, 0x3e8

    if-ltz v1, :cond_47

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v6, v19

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v9, v6, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v9, :cond_46

    iget-object v9, v6, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v9, :cond_46

    iget-boolean v9, v6, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    if-eqz v9, :cond_b

    const-string/jumbo v9, "OomAdjuster"

    new-instance v10, Ljava/lang/StringBuilder;

    move/from16 v19, v1

    const-string v1, "Excessive Resource Usage detectd task: "

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-static {v1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    move/from16 v19, v1

    :goto_8
    iget v1, v11, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v1, v9, :cond_c

    move v1, v8

    const/4 v8, 0x1

    move v10, v1

    move-wide/from16 v39, v4

    move-object v1, v6

    move v9, v7

    move-object/from16 v21, v12

    move/from16 v22, v13

    move/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v7, p1

    move-wide/from16 v5, p5

    move-wide/from16 v19, v2

    move-wide/from16 v3, p3

    move/from16 v2, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z

    goto :goto_9

    :cond_c
    move-wide/from16 v39, v4

    move-object v1, v6

    move v9, v7

    move v10, v8

    move-object/from16 v21, v12

    move/from16 v22, v13

    move/from16 v13, v19

    const/4 v12, 0x0

    move-wide/from16 v19, v2

    :goto_9
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    if-eqz v2, :cond_d

    invoke-static {v1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    move/from16 v41, v13

    :goto_a
    move/from16 v6, v24

    move/from16 v5, v25

    goto/16 :goto_20

    :cond_d
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/16 v5, 0x11

    if-eqz v3, :cond_33

    sget-boolean v7, Lcom/android/server/am/BGProtectManager;->mAMSExceptionEnable:Z

    iget-object v3, v3, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    if-eqz v7, :cond_15

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v7, :cond_15

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    sget-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    sget-object v23, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    const/16 v6, 0x64

    if-ge v7, v6, :cond_10

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v7

    if-gt v6, v7, :cond_e

    :goto_b
    const/4 v6, 0x1

    :goto_c
    const/4 v7, 0x0

    goto :goto_d

    :cond_e
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v7, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v7}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_f

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    if-eqz v6, :cond_f

    goto :goto_b

    :cond_f
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_13

    goto :goto_b

    :cond_10
    iget-boolean v6, v3, Lcom/android/server/am/BGProtectManager;->mKnoxAMSExceptionEnable:Z

    if-eqz v6, :cond_13

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v7

    if-lt v6, v7, :cond_11

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v7, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v7}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v7

    if-gt v6, v7, :cond_11

    goto :goto_b

    :cond_11
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v7, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v7}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_12

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_d

    :cond_12
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    invoke-virtual {v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_13

    goto :goto_b

    :cond_13
    const/4 v6, 0x0

    goto :goto_c

    :goto_d
    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v8, v8, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-eq v8, v5, :cond_14

    goto :goto_e

    :cond_14
    iget v8, v1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    sget-object v23, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    move-result v5

    if-ne v8, v5, :cond_16

    const/4 v6, 0x1

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_16
    :goto_e
    iget v5, v3, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_17

    iget v3, v3, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    if-ne v3, v8, :cond_18

    :cond_17
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v3, :cond_18

    const/4 v5, 0x3

    if-ge v3, v5, :cond_18

    move v7, v8

    :cond_18
    if-eq v6, v8, :cond_19

    if-eqz v7, :cond_19

    const/4 v6, 0x2

    :cond_19
    invoke-static {v1}, Lcom/android/server/am/BGProtectManager;->isOnlyActCheck(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v6, 0x2

    :cond_1a
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1b

    const/4 v6, 0x3

    :cond_1b
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    if-nez v3, :cond_1c

    const/4 v6, 0x4

    :cond_1c
    if-ne v3, v8, :cond_1d

    const/4 v6, 0x5

    :cond_1d
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    if-eqz v3, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move v5, v13

    iget-wide v12, v1, Lcom/android/server/am/ProcessRecord;->appKeepingTime:J

    sub-long/2addr v7, v12

    cmp-long v7, v7, v29

    if-lez v7, :cond_1e

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    goto :goto_f

    :cond_1e
    const/4 v6, 0x6

    goto :goto_f

    :cond_1f
    move v5, v13

    :goto_f
    iget-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_20

    const/16 v6, 0x8

    :cond_20
    if-lez v6, :cond_32

    iget-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    const/16 v12, 0x352

    if-ne v7, v8, :cond_27

    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    packed-switch v7, :pswitch_data_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v35, -0x1

    iget-wide v3, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    sub-long/2addr v7, v3

    cmp-long v3, v3, v35

    const-string v4, "ActivityManager"

    iget-object v13, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz v3, :cond_22

    const-wide/16 v26, 0xbb8

    cmp-long v3, v7, v26

    if-lez v3, :cond_22

    sget-wide v26, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    const-wide/16 v29, 0x2af8

    cmp-long v3, v26, v29

    if-gtz v3, :cond_22

    iget v3, v13, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-le v3, v12, :cond_21

    const-string v3, "AL_Kill : over 3 sec"

    const/16 v6, 0xd

    invoke-virtual {v1, v6, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "AL_Kill : over 3 sec: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    move-wide/from16 v3, v35

    iput-wide v3, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    goto :goto_10

    :cond_22
    const/4 v7, 0x0

    iget v3, v6, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    iget v8, v6, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    if-ge v3, v8, :cond_23

    iget-object v3, v6, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    invoke-virtual {v3, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v3, v6, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    const/16 v38, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Active App Launch process < 2 : "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_23
    iget v3, v13, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-le v3, v12, :cond_24

    const-string v3, "AL_Kill : over 1 slots"

    const/16 v6, 0xd

    invoke-virtual {v1, v6, v3}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    :cond_24
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    :cond_25
    :goto_10
    :pswitch_0
    move/from16 v41, v5

    :cond_26
    :goto_11
    move/from16 v6, v24

    move/from16 v5, v25

    goto/16 :goto_19

    :cond_27
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    if-nez v3, :cond_2a

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object v3, v3, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    packed-switch v4, :pswitch_data_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v12, v1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    sub-long/2addr v6, v12

    iget-object v8, v3, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    const-string v4, " slots kill a"

    if-eqz v8, :cond_29

    move/from16 v41, v5

    iget v5, v8, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    if-nez v5, :cond_28

    move-wide/from16 v31, v12

    iget-wide v12, v8, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    cmp-long v5, v31, v12

    if-lez v5, :cond_28

    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    const/4 v5, -0x1

    iput v5, v8, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v12, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v13, 0x13

    if-lt v12, v13, :cond_28

    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    const/16 v12, 0x352

    if-le v5, v12, :cond_28

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ML_Kill: over "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v3, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0xd

    invoke-virtual {v8, v13, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    :cond_28
    iput-object v1, v3, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    goto :goto_12

    :cond_29
    move/from16 v41, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "app launch time is "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " tmp time is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "DynamicHiddenApp_BGProtectManager"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v3, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    :goto_12
    iget v5, v1, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    if-nez v5, :cond_26

    iget-wide v12, v1, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    const-wide/16 v35, -0x1

    cmp-long v5, v12, v35

    if-eqz v5, :cond_26

    cmp-long v5, v6, v26

    if-lez v5, :cond_26

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v8, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v13, 0x13

    if-lt v8, v13, :cond_26

    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    const/16 v12, 0x352

    if-le v5, v12, :cond_26

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ML_Kill: timeout "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xd

    invoke-virtual {v1, v6, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    const/4 v12, 0x0

    iput-object v12, v3, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_11

    :cond_2a
    move/from16 v41, v5

    iget v4, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2c

    const/16 v5, 0x11

    if-eq v4, v5, :cond_2c

    const/16 v13, 0x13

    if-eq v4, v13, :cond_2b

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const/16 v38, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    :goto_13
    const/4 v4, 0x2

    goto :goto_14

    :cond_2b
    const/16 v38, 0x1

    goto :goto_13

    :cond_2c
    const/16 v38, 0x1

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    goto :goto_13

    :goto_14
    if-ne v6, v4, :cond_26

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v6, 0x10

    if-eq v5, v6, :cond_2d

    const/16 v6, 0x11

    if-eq v5, v6, :cond_2d

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v13, 0x13

    if-ne v7, v13, :cond_26

    iget-object v4, v4, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v10, v4, :cond_26

    iget-wide v7, v1, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    cmp-long v4, v7, p7

    if-gez v4, :cond_26

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "empty for "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v1, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    sub-long/2addr v5, v7

    div-long v5, v5, v29

    const-string/jumbo v7, "s"

    invoke-static {v4, v5, v6, v7}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "empty for too long"

    const/16 v33, 0x4

    const/16 v36, 0x1

    const/16 v32, 0xd

    const/16 v37, 0x1

    move-object/from16 v31, v1

    invoke-virtual/range {v31 .. v37}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    :cond_2d
    const/16 v38, 0x1

    add-int/lit8 v7, v9, 0x1

    if-le v7, v15, :cond_2e

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2e

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "PWHL_KNOX - "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v9, " in Cached"

    invoke-static {v6, v8, v9, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v4, :cond_2e

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v8, "Convert from hidden to empty knox"

    check-cast v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v9, v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v9

    :try_start_0
    iget-object v12, v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v4, Lcom/android/server/wm/RootWindowContainer;->mDestroyTargetAllActivitiesRunnable:Lcom/android/server/wm/RootWindowContainer$2;

    iput-object v5, v6, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/ConfigurationContainer;

    iput-object v8, v6, Lcom/android/server/wm/RootWindowContainer$2;->val$enterPipThrowable:Ljava/lang/Object;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_15

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_2e
    :goto_15
    iget v4, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    if-eqz v4, :cond_30

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v6, v24

    if-ne v6, v5, :cond_2f

    move/from16 v5, v25

    if-ne v5, v4, :cond_2f

    const/16 v38, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v25, v5

    move/from16 v24, v6

    goto :goto_16

    :cond_2f
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v4

    move/from16 v24, v5

    goto :goto_16

    :cond_30
    const/16 v24, 0x0

    const/16 v25, 0x0

    :cond_31
    :goto_16
    move v8, v10

    goto/16 :goto_1c

    :cond_32
    move/from16 v41, v5

    :goto_17
    move/from16 v6, v24

    move/from16 v5, v25

    goto :goto_18

    :cond_33
    move/from16 v41, v13

    goto :goto_17

    :goto_18
    iget v4, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v7, 0x10

    if-eq v4, v7, :cond_3b

    const/16 v7, 0x11

    if-eq v4, v7, :cond_3b

    const/16 v13, 0x13

    if-eq v4, v13, :cond_34

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const/16 v38, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto :goto_19

    :cond_34
    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-eqz v4, :cond_35

    goto :goto_19

    :cond_35
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v10, v4, :cond_36

    iget-wide v7, v1, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    cmp-long v4, v7, p7

    if-gez v4, :cond_36

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "empty for "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v1, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    sub-long v7, p3, v7

    div-long v7, v7, v29

    const-string/jumbo v12, "s"

    invoke-static {v4, v7, v8, v12}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "empty for too long"

    const/16 v32, 0xd

    const/16 v37, 0x1

    const/16 v33, 0x4

    const/16 v36, 0x1

    move-object/from16 v31, v1

    invoke-virtual/range {v31 .. v37}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    :goto_19
    move/from16 v25, v5

    move/from16 v24, v6

    move v7, v9

    goto :goto_16

    :cond_36
    const/16 v38, 0x1

    add-int/lit8 v8, v10, 0x1

    if-le v8, v14, :cond_38

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object v4, v4, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {v4, v1}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_1a

    :cond_37
    const-string/jumbo v4, "empty #"

    invoke-static {v8, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "too many empty"

    const/16 v32, 0xd

    const/16 v37, 0x1

    const/16 v33, 0x3

    const/16 v36, 0x1

    move-object/from16 v31, v1

    invoke-virtual/range {v31 .. v37}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1a

    :cond_38
    if-eqz v16, :cond_3a

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object v4, v4, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    invoke-virtual {v4, v1}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_1a

    :cond_39
    move-object/from16 v17, v1

    :cond_3a
    :goto_1a
    move/from16 v25, v5

    move/from16 v24, v6

    move v7, v9

    goto/16 :goto_1c

    :cond_3b
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/16 v38, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v7, v9, 0x1

    iget v4, v2, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    if-eqz v4, :cond_3d

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v8, :cond_3c

    if-ne v5, v4, :cond_3c

    add-int/lit8 v18, v18, 0x1

    move/from16 v25, v5

    move/from16 v24, v6

    goto :goto_1b

    :cond_3c
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v4

    move/from16 v24, v5

    goto :goto_1b

    :cond_3d
    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_1b
    sub-int v4, v7, v18

    if-le v4, v15, :cond_40

    iget v4, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v6, 0x10

    if-eq v4, v6, :cond_3e

    goto/16 :goto_16

    :cond_3e
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const-string v4, "GATE"

    const-string v5, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    const-string/jumbo v4, "cached #"

    invoke-static {v7, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "too many cached"

    const/16 v32, 0xd

    const/16 v37, 0x1

    const/16 v33, 0x2

    const/16 v36, 0x1

    move-object/from16 v31, v1

    invoke-virtual/range {v31 .. v37}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_16

    :cond_40
    if-eqz v16, :cond_31

    iget v4, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v6, 0x10

    if-eq v4, v6, :cond_41

    goto/16 :goto_16

    :cond_41
    move-object/from16 v17, v1

    goto/16 :goto_16

    :goto_1c
    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    if-eqz v4, :cond_42

    iget v4, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    packed-switch v4, :pswitch_data_2

    goto :goto_1d

    :pswitch_1
    const-string/jumbo v4, "OomAdjuster"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERU task kill: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Excessive resource usage"

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    :cond_42
    :goto_1d
    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v4, :cond_43

    iget-object v4, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-gtz v4, :cond_43

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    if-nez v4, :cond_43

    const-string/jumbo v34, "isolated not needed"

    const/16 v32, 0xd

    const/16 v37, 0x1

    const/16 v33, 0x11

    const/16 v36, 0x1

    move-object/from16 v35, v34

    move-object/from16 v31, v1

    invoke-virtual/range {v31 .. v37}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1e

    :cond_43
    iget-boolean v4, v1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v4, :cond_44

    iget-object v2, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-gtz v2, :cond_44

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-nez v2, :cond_44

    const-string/jumbo v34, "sandbox not needed"

    const/16 v32, 0xd

    const/16 v37, 0x1

    const/16 v33, 0x1c

    const/16 v36, 0x1

    move-object/from16 v35, v34

    move-object/from16 v31, v1

    invoke-virtual/range {v31 .. v37}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1e

    :cond_44
    invoke-static {v1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :goto_1e
    iget v2, v11, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v4, 0xe

    if-lt v2, v4, :cond_45

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    :cond_45
    :goto_1f
    const/16 v28, -0x1

    goto :goto_21

    :cond_46
    move/from16 v41, v1

    move-wide/from16 v19, v2

    move-wide/from16 v39, v4

    move v9, v7

    move v10, v8

    move-object/from16 v21, v12

    move/from16 v22, v13

    goto/16 :goto_a

    :goto_20
    move/from16 v25, v5

    move/from16 v24, v6

    move v7, v9

    move v8, v10

    goto :goto_1f

    :goto_21
    add-int/lit8 v1, v41, -0x1

    move-wide/from16 v2, v19

    move-object/from16 v12, v21

    move/from16 v13, v22

    move-wide/from16 v4, v39

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_47
    move-wide/from16 v19, v2

    move-wide/from16 v39, v4

    move v9, v7

    move v10, v8

    move/from16 v22, v13

    const/4 v6, 0x2

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_48

    const/4 v12, 0x0

    goto :goto_24

    :cond_48
    const/16 v4, 0x34

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_22
    if-ge v8, v1, :cond_4c

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v13, v13, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lez v12, :cond_49

    const/16 v15, 0x3e9

    if-ne v13, v15, :cond_4a

    :cond_49
    const/4 v12, 0x0

    const/16 v38, 0x1

    goto :goto_23

    :cond_4a
    const/4 v15, 0x3

    if-lt v11, v15, :cond_4b

    const/4 v3, 0x0

    invoke-static {v5, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v11, 0x0

    :cond_4b
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v38, 0x1

    add-int/lit8 v11, v11, 0x1

    :goto_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_4c
    const/4 v3, 0x0

    const/4 v12, 0x0

    invoke-static {v5, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    :goto_24
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_25

    :cond_4d
    const/4 v12, 0x0

    :goto_25
    if-eqz v16, :cond_4e

    if-eqz v22, :cond_4e

    cmpg-double v1, v39, v19

    if-gez v1, :cond_4e

    if-eqz v17, :cond_4e

    iget-wide v1, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    cmpg-double v1, v39, v1

    if-gez v1, :cond_4e

    const-string/jumbo v20, "swap low and too many cached"

    const/16 v18, 0xd

    const/16 v23, 0x1

    const/16 v19, 0x2

    const/16 v22, 0x1

    move-object/from16 v21, v20

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-gez v1, :cond_4e

    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    :cond_4e
    move-wide/from16 v4, v39

    iput-wide v4, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mOnTrimReclaimer:Lcom/android/server/am/AppProfiler$OnTrimReclaimer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    if-eqz v2, :cond_4f

    iget-boolean v3, v2, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    if-eqz v3, :cond_4f

    iget-object v3, v2, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget v7, v2, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    monitor-exit v3

    goto :goto_27

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4f
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    if-gt v9, v3, :cond_52

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-gt v10, v2, :cond_52

    add-int v7, v9, v10

    const/4 v15, 0x3

    if-gt v7, v15, :cond_50

    move v6, v15

    goto :goto_26

    :cond_50
    const/4 v2, 0x5

    if-gt v7, v2, :cond_51

    goto :goto_26

    :cond_51
    const/4 v6, 0x1

    :goto_26
    move v7, v6

    goto :goto_27

    :cond_52
    move v7, v12

    :goto_27
    iget v2, v1, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_53

    const/4 v3, 0x1

    goto :goto_28

    :cond_53
    move v3, v12

    :goto_28
    if-eqz v3, :cond_54

    move v7, v2

    :cond_54
    iget v2, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-le v7, v2, :cond_56

    if-nez v3, :cond_56

    iget-boolean v2, v1, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    if-eqz v2, :cond_55

    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v1, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    if-lt v2, v3, :cond_56

    :cond_55
    iget v7, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    :cond_56
    iget v2, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-eq v7, v2, :cond_57

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x7562

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/16 v2, 0xf

    invoke-static {v2, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mBgHandler:Lcom/android/server/am/AppProfiler$BgHandler;

    iget v3, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_57
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    add-int v3, v9, v10

    iget v4, v2, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    if-le v3, v4, :cond_58

    iput v3, v2, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    div-long v3, p3, v29

    long-to-int v3, v3

    iput v3, v2, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mUptimeInSeconds:I

    iget-object v2, v2, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object v3, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v4, 0x4f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_58
    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v3, :cond_5a

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v3, :cond_59

    goto :goto_29

    :cond_59
    move v11, v12

    goto :goto_2a

    :cond_5a
    :goto_29
    const/4 v11, 0x1

    :goto_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v7, v5, v6, v11}, Lcom/android/server/am/ProcessStatsService;->setMemFactorLocked(IJZ)V

    iget-object v3, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iput v7, v1, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v2, v2, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v8}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v2, :cond_5b

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities()V

    :cond_5b
    move-object/from16 v1, p2

    move-wide/from16 v5, p5

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-wide v5, v4, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    add-long v5, v5, v26

    cmp-long v5, v2, v5

    if-lez v5, :cond_5d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, v4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v7, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v9, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_5c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, v4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v7, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v9, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_5c

    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    :cond_5c
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v6, v4}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2b

    :catchall_2
    move-exception v0

    goto :goto_2c

    :cond_5d
    :goto_2b
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget-object v4, v4, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->updateTrackingAssociationsLocked(IJ)V

    monitor-exit v1

    return-void

    :goto_2c
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final reportOomAdjMessageLocked(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v1, 0x46

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

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

.method public resetInternal()V
    .locals 0

    return-void
.end method

.method public final scheduleFollowUpOomAdjusterUpdateLocked(JJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    add-long v2, p1, v0

    iget-wide v4, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    return-void

    :cond_0
    add-long v2, p3, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    add-long p1, p3, v0

    :cond_1
    iput-wide p1, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 p3, 0x56

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 12

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget v5, v3, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x13

    :goto_1
    iget-boolean v6, v3, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_2

    :try_start_1
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v6, v8}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_5

    :cond_2
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    if-eqz v6, :cond_3

    :try_start_2
    iget-object v6, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v3, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-nez v6, :cond_3

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Landroid/os/Process;->setThreadPriority(II)V

    goto :goto_2

    :cond_3
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v10, -0xa

    invoke-static {v6, v10}, Landroid/os/Process;->setThreadPriority(II)V

    :goto_2
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_LOW:Z

    if-eqz v6, :cond_4

    iget-object v6, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->inTransientLaunchTransition()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, v3, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    iget-object v6, v9, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ne v6, v8, :cond_5

    goto :goto_3

    :cond_5
    iget-boolean v6, v3, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move v8, v7

    :goto_3
    if-eqz v8, :cond_7

    const/4 v0, 0x3

    move v1, v2

    :cond_7
    move v2, v0

    :goto_4
    const/16 v0, 0xff

    move v11, v1

    move v1, v0

    move v0, v2

    move v2, v11

    goto :goto_6

    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failed to pre-set top priority to "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "OomAdjuster"

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v2, v1

    move v1, v7

    :goto_6
    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    iput v2, v3, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput v1, v3, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    invoke-virtual {v3, v7, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Lcom/android/server/am/ActivityManagerService$12;

    iput-boolean v7, v3, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/OomAdjuster;->onProcessStateChanged(ILcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p0, v5, p1}, Lcom/android/server/am/OomAdjuster;->onProcessOomAdjChanged(ILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public final setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V
    .locals 2

    iget v0, p1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p1, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    if-nez p0, :cond_1

    if-le p2, v0, :cond_1

    move p2, v0

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method public final shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .locals 2

    iget-boolean v0, p2, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget v0, p2, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v0, p0, :cond_0

    if-eqz p5, :cond_0

    iget p0, p2, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    if-lt p0, p3, :cond_0

    iget p0, p2, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    if-lt p0, p4, :cond_0

    iget p0, p2, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p0, :cond_2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-static {p1}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZI)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v5, 0x352

    if-lt v2, v5, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v4

    :goto_1
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    if-lt v6, v7, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    if-lt p4, v7, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    move v7, v4

    :goto_3
    xor-int/2addr v6, v7

    if-nez v6, :cond_7

    const/16 v6, 0x3e9

    if-ne p4, v6, :cond_6

    goto :goto_4

    :cond_6
    move v6, v4

    goto :goto_5

    :cond_7
    :goto_4
    move v6, v3

    :goto_5
    iget v7, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeAdjSeq:I

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v7, p0, :cond_8

    move p0, v3

    goto :goto_6

    :cond_8
    move p0, v4

    :goto_6
    iget v7, v5, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    const/16 v8, 0x80

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_9

    move v7, v3

    goto :goto_7

    :cond_9
    move v7, v4

    :goto_7
    iget v9, v5, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_a

    move v8, v3

    goto :goto_8

    :cond_a
    move v8, v4

    :goto_8
    if-eq v7, v8, :cond_b

    goto :goto_9

    :cond_b
    move v3, v4

    :goto_9
    if-nez v6, :cond_c

    if-nez p0, :cond_c

    if-eqz v3, :cond_14

    :cond_c
    const-wide/16 v8, 0x40

    invoke-static {v8, v9}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    const-string v6, "-"

    if-eqz v3, :cond_d

    const-string v3, "F"

    goto :goto_a

    :cond_d
    move-object v3, v6

    :goto_a
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    if-eqz v3, :cond_e

    const-string/jumbo v3, "P"

    goto :goto_b

    :cond_e
    move-object v3, v6

    :goto_b
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    if-eqz v3, :cond_f

    const-string v3, "E"

    goto :goto_c

    :cond_f
    move-object v3, v6

    :goto_c
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eqz v3, :cond_10

    const-string/jumbo v3, "N"

    goto :goto_d

    :cond_10
    move-object v3, v6

    :goto_d
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_11

    const-string/jumbo v3, "T"

    goto :goto_e

    :cond_11
    move-object v3, v6

    :goto_e
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_12

    const-string v3, "I"

    goto :goto_f

    :cond_12
    move-object v3, v6

    :goto_f
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_13

    const-string/jumbo v6, "Z"

    :cond_13
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "--/"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-static {v6, p4, v3, v3, p0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "FreezeLite"

    invoke-static {v8, v9, v3, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateAppFreezeStateLSP "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isFreezeExempt: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isFrozen: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " shouldNotFreeze: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " shouldNotFreezeReason: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreezeReason:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " curAdj: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const-string v5, " oldOomAdj: "

    const-string v6, " immediate: "

    invoke-static {v3, p4, v5, v6, p0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " cpuCapability: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p4, "Freezer"

    invoke-static {v8, v9, p4, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-eqz v2, :cond_17

    if-eqz p3, :cond_15

    iget-boolean p0, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez p0, :cond_15

    const-wide/16 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3, p1, v4}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    return-void

    :cond_15
    iget-boolean p0, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-eqz p0, :cond_16

    iget-boolean p0, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    if-nez p0, :cond_18

    :cond_16
    iget-wide p2, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-static {p1, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3, p1, v4}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    return-void

    :cond_17
    iget-boolean p0, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez p0, :cond_19

    iget-boolean p0, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    if-nez p0, :cond_19

    iget-boolean p0, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mIsCached:Z

    if-eqz p0, :cond_18

    goto :goto_11

    :cond_18
    :goto_10
    return-void

    :cond_19
    :goto_11
    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result p0

    invoke-virtual {v0, p1, p0, v4}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    return-void
.end method

.method public final updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 37

    move-object/from16 v0, p0

    move/from16 v9, p1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez p3, :cond_0

    move v4, v12

    goto :goto_0

    :cond_0
    move v4, v11

    :goto_0
    if-eqz v4, :cond_1

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    move-object v13, v1

    goto :goto_1

    :cond_1
    move-object/from16 v13, p3

    :goto_1
    if-nez p4, :cond_3

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget-object v1, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v3, v2, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    move v3, v11

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    iget v6, v5, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v2, v6, v5}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object v14, v2

    goto :goto_3

    :cond_3
    move-object/from16 v14, p4

    :goto_3
    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    const-wide/16 v1, 0x40

    if-eqz p6, :cond_4

    invoke-static {v9}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_4
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v3, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v17, v5, v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v7, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v7, v12

    iput v7, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eqz v4, :cond_5

    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    :cond_5
    iget-object v7, v14, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v12

    :goto_4
    const/16 v8, 0x13

    if-ltz v7, :cond_6

    invoke-virtual {v14, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    iput v8, v10, Lcom/android/server/am/UidRecord;->mCurProcState:I

    iput-boolean v11, v10, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    iput v11, v10, Lcom/android/server/am/UidRecord;->mCurCapability:I

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_6
    if-nez v4, :cond_8

    if-eqz p5, :cond_7

    goto :goto_5

    :cond_7
    move v7, v11

    goto :goto_6

    :cond_8
    :goto_5
    move v7, v12

    :goto_6
    add-int/lit8 v10, v3, -0x1

    move v1, v10

    :goto_7
    if-ltz v1, :cond_a

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v12

    move-object/from16 v12, v19

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-boolean v11, v12, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    iget v2, v12, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v2, v8, :cond_9

    iput-boolean v11, v12, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    const/16 v2, 0x13

    iput v2, v12, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    const/16 v8, 0x3e9

    invoke-virtual {v12, v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    iput v11, v12, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    iput-boolean v11, v12, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    goto :goto_8

    :cond_9
    const/16 v2, 0x13

    :goto_8
    add-int/lit8 v1, v1, -0x1

    move v8, v2

    move/from16 v12, v20

    goto :goto_7

    :cond_a
    move/from16 v20, v12

    const/16 v8, 0x3e9

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    move v12, v10

    move/from16 v19, v11

    :goto_9
    if-ltz v12, :cond_c

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v10, :cond_b

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v10, :cond_b

    iput-boolean v11, v2, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iput v9, v10, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    const/4 v10, 0x1

    move-object/from16 v21, v2

    const/16 v2, 0x3e9

    move/from16 v22, v8

    move v8, v7

    const/4 v7, 0x0

    move/from16 v23, v3

    move/from16 v24, v11

    move-object/from16 v11, v21

    const-wide/16 v21, 0x40

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    iget-boolean v1, v11, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    or-int v19, v19, v1

    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v1, v11, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    goto :goto_a

    :cond_b
    move/from16 v23, v3

    move v8, v7

    move/from16 v24, v11

    const-wide/16 v21, 0x40

    :goto_a
    add-int/lit8 v12, v12, -0x1

    move/from16 v9, p1

    move v7, v8

    move/from16 v3, v23

    move/from16 v11, v24

    const/16 v8, 0x3e9

    goto :goto_9

    :cond_c
    move/from16 v23, v3

    move v8, v7

    move/from16 v24, v11

    const-wide/16 v21, 0x40

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v2, v1, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, v1, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iget v2, v2, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    iget-object v4, v1, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v7, v1, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    iget v9, v1, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    iget v10, v1, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    iget v11, v1, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    iget-boolean v12, v1, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    move-wide/from16 p3, v5

    iget-wide v5, v1, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    iget-object v0, v1, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    move-object/from16 v25, v0

    iget-object v0, v1, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v25, :cond_20

    if-nez v0, :cond_d

    goto/16 :goto_1a

    :cond_d
    move-wide/from16 v26, v5

    move/from16 v4, v24

    move v5, v4

    :goto_b
    if-ge v4, v2, :cond_10

    array-length v6, v0

    if-ge v5, v6, :cond_10

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    move/from16 v29, v4

    iget-boolean v4, v6, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v4, :cond_e

    iget-object v4, v6, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v4, :cond_e

    iget-object v4, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    move/from16 v30, v5

    const/16 v5, 0x3e9

    if-lt v4, v5, :cond_f

    aget-object v4, v0, v30

    iput-object v6, v4, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    aput v29, v25, v30

    add-int/lit8 v5, v30, 0x1

    goto :goto_c

    :cond_e
    move/from16 v30, v5

    :cond_f
    move/from16 v5, v30

    :goto_c
    add-int/lit8 v4, v29, 0x1

    goto :goto_b

    :cond_10
    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v5, v24

    move/from16 v4, v29

    :goto_d
    if-ge v4, v2, :cond_13

    if-ge v5, v11, :cond_13

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    move/from16 v29, v2

    iget-boolean v2, v6, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v2, :cond_11

    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v2, :cond_11

    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v6, 0x3e9

    if-lt v2, v6, :cond_12

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_11
    const/16 v6, 0x3e9

    :cond_12
    :goto_e
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v29

    goto :goto_d

    :cond_13
    if-ge v5, v11, :cond_15

    sub-int/2addr v11, v5

    sub-int v2, v30, v11

    if-gez v2, :cond_14

    move/from16 v5, v24

    goto :goto_f

    :cond_14
    move v5, v2

    goto :goto_f

    :cond_15
    move/from16 v5, v30

    :goto_f
    if-eqz v12, :cond_1a

    move v2, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move/from16 v4, v24

    :goto_10
    if-ge v4, v5, :cond_19

    aget-object v6, v0, v4

    move/from16 p5, v2

    iget-object v2, v6, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move/from16 v29, v4

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move-object/from16 v30, v14

    move-wide/from16 v31, v15

    iget-wide v14, v4, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    sub-long v14, v11, v14

    move-wide/from16 v33, v14

    iget-wide v14, v4, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    const-wide/16 v35, 0x0

    cmp-long v4, v14, v35

    if-eqz v4, :cond_16

    cmp-long v4, v33, v26

    if-gez v4, :cond_16

    goto :goto_11

    :cond_16
    iget-object v4, v1, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    check-cast v4, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/os/Process;->getRss(I)[J

    move-result-object v2

    if-eqz v2, :cond_18

    array-length v4, v2

    if-nez v4, :cond_17

    goto :goto_12

    :cond_17
    iget-object v4, v6, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    aget-wide v14, v2, v24

    iput-wide v14, v6, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    iput-wide v11, v6, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iput-wide v14, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    :goto_11
    add-int/lit8 v4, v29, 0x1

    move/from16 v2, p5

    move-object/from16 v14, v30

    move-wide/from16 v15, v31

    goto :goto_10

    :cond_18
    :goto_12
    const-string/jumbo v0, "OomAdjuster"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Process.getRss returned bad value, not re-ranking: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :cond_19
    move/from16 p5, v2

    :goto_13
    move-object/from16 v30, v14

    move-wide/from16 v31, v15

    const/16 v28, 0x0

    goto :goto_14

    :cond_1a
    move/from16 p5, v12

    goto :goto_13

    :goto_14
    cmpl-float v2, v7, v28

    if-lez v2, :cond_1b

    sget-object v2, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    move/from16 v4, v24

    invoke-static {v0, v4, v5, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    invoke-static {v0, v7}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_15

    :cond_1b
    move/from16 v4, v24

    :goto_15
    cmpl-float v2, v10, v28

    if-lez v2, :cond_1d

    if-eqz p5, :cond_1c

    sget-object v1, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    invoke-static {v0, v4, v5, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_16

    :cond_1c
    iget-object v1, v1, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget-object v2, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    invoke-static {v0, v4, v5, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_16
    invoke-static {v0, v10}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    :cond_1d
    const/16 v28, 0x0

    goto :goto_17

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :goto_17
    cmpl-float v1, v9, v28

    if-lez v1, :cond_1e

    sget-object v1, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    const/4 v11, 0x0

    invoke-static {v0, v11, v5, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    invoke-static {v0, v9}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_18

    :cond_1e
    const/4 v11, 0x0

    :goto_18
    sget-object v1, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    invoke-static {v0, v11, v5, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v4, v11

    :goto_19
    if-ge v4, v5, :cond_21

    aget v1, v25, v4

    aget-object v2, v0, v4

    iget-object v2, v2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    aget-object v1, v0, v4

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1f
    move-wide/from16 p3, v5

    :cond_20
    :goto_1a
    move-object/from16 v30, v14

    move-wide/from16 v31, v15

    :goto_1b
    move/from16 v11, v24

    :cond_21
    if-eqz v8, :cond_27

    move v4, v11

    :goto_1c
    if-eqz v19, :cond_27

    const/16 v0, 0xa

    if-ge v4, v0, :cond_27

    add-int/lit8 v12, v4, 0x1

    move v4, v11

    move/from16 v14, v23

    :goto_1d
    if-ge v4, v14, :cond_23

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v2, :cond_22

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_22

    iget-boolean v0, v1, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    if-eqz v0, :cond_22

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_23
    move v15, v11

    move/from16 v19, v15

    :goto_1e
    if-ge v15, v14, :cond_26

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v2, :cond_24

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v2, :cond_24

    iget-boolean v0, v0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    if-eqz v0, :cond_24

    const/4 v4, 0x1

    const/4 v7, 0x1

    const/16 v2, 0x3e9

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v9, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    move-result v1

    if-eqz v1, :cond_25

    move/from16 v19, v20

    goto :goto_1f

    :cond_24
    move-object/from16 v0, p0

    move-wide/from16 v5, p3

    :cond_25
    :goto_1f
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 p3, v5

    goto :goto_1e

    :cond_26
    move-object/from16 v0, p0

    move v4, v12

    move/from16 v23, v14

    goto :goto_1c

    :cond_27
    move-object/from16 v0, p0

    move-wide/from16 v5, p3

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    const/4 v9, 0x1

    move/from16 v1, p1

    move-wide v3, v5

    move-wide/from16 v7, v17

    move-object/from16 v2, v30

    move-wide/from16 v5, v31

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    if-eqz p6, :cond_28

    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    :cond_28
    return-void

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final updateOomAdjLSP(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    throw v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    return-void
.end method

.method public final updateOomAdjPendingTargetsLocked(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

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

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    throw v0
.end method

.method public final updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_0
    iget-object v5, v1, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_25

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v7

    iget v8, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    const/16 v9, 0x14

    if-eq v8, v9, :cond_24

    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    if-ne v10, v8, :cond_1

    iget v8, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    iget v10, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    if-ne v8, v10, :cond_1

    iget-boolean v8, v7, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-ne v8, v10, :cond_1

    iget-boolean v8, v7, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    if-eqz v8, :cond_24

    :cond_1
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v10, v7, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v8, v10}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v8

    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    iget v11, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    if-eq v10, v11, :cond_2

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Changes in "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v7, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    const-string v13, ""

    invoke-static {v12, v13, v10, v11}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2
    iget v10, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v10}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-nez v10, :cond_a

    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    invoke-static {v10}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    if-nez v10, :cond_3

    const-wide/16 v15, 0x0

    iget-wide v11, v7, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    cmp-long v11, v11, v15

    if-nez v11, :cond_7

    goto :goto_1

    :cond_3
    const-wide/16 v15, 0x0

    :goto_1
    iput-wide v2, v7, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    if-eqz v8, :cond_4

    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v12, v7, Lcom/android/server/am/UidRecord;->mUid:I

    iget-object v11, v11, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v13, v11, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    long-to-int v10, v2

    iget v11, v11, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    invoke-static {v11}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v19, 0x0

    const/16 v17, 0xa

    move/from16 v21, v10

    move/from16 v18, v12

    move/from16 v20, v13

    invoke-static/range {v17 .. v22}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    :cond_4
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v10, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v12, 0x3a

    if-nez v11, :cond_5

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v10, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_7

    :cond_5
    if-eqz v8, :cond_6

    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v11, v7, Lcom/android/server/am/UidRecord;->mUid:I

    iget-object v13, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v13, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    iget-object v10, v10, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v10, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    long-to-int v13, v14

    const-string v22, ""

    const/16 v17, 0x1

    const/16 v19, 0x0

    move/from16 v20, v10

    move/from16 v18, v11

    move/from16 v21, v13

    invoke-static/range {v17 .. v22}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    :cond_6
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v11, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v10, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v10, :cond_9

    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    if-nez v10, :cond_9

    iget v10, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    if-eq v10, v9, :cond_8

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v10, 0x2

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    iget-boolean v10, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v10, :cond_b

    iget v10, v7, Lcom/android/server/am/UidRecord;->mUid:I

    const/16 v11, 0x7566

    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(II)I

    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    const/4 v10, 0x4

    :goto_2
    const-wide/16 v11, 0x0

    goto :goto_3

    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    :goto_3
    iput-wide v11, v7, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    iput-wide v11, v7, Lcom/android/server/am/UidRecord;->mLastIdleTimeIfStillIdle:J

    if-eqz v8, :cond_c

    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v12, v7, Lcom/android/server/am/UidRecord;->mUid:I

    iget-object v11, v11, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v13, v11, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v11, v11, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    invoke-static {v11}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v17, 0xb

    const/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v18, v12

    move/from16 v20, v13

    invoke-static/range {v17 .. v22}, Lcom/android/server/am/EventLogTags;->writeAmOomAdjMisc(IIIIILjava/lang/String;)V

    :cond_c
    :goto_4
    iget v11, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    const/16 v12, 0xb

    if-le v11, v12, :cond_d

    move v13, v6

    goto :goto_5

    :cond_d
    const/4 v13, 0x0

    :goto_5
    iget v14, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    if-le v14, v12, :cond_e

    move v12, v6

    goto :goto_6

    :cond_e
    const/4 v12, 0x0

    :goto_6
    if-ne v13, v12, :cond_f

    if-ne v11, v9, :cond_11

    :cond_f
    if-eqz v12, :cond_10

    const/16 v9, 0x8

    goto :goto_7

    :cond_10
    const/16 v9, 0x10

    :goto_7
    or-int/2addr v10, v9

    :cond_11
    iget v9, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    iget v12, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    if-eq v9, v12, :cond_12

    or-int/lit8 v10, v10, 0x20

    :cond_12
    const/high16 v13, -0x80000000

    if-eq v11, v14, :cond_13

    or-int/2addr v10, v13

    :cond_13
    move/from16 v17, v13

    iget-boolean v13, v7, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    if-eqz v13, :cond_14

    or-int/lit8 v10, v10, 0x40

    :cond_14
    iput v14, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    iput v12, v7, Lcom/android/server/am/UidRecord;->mSetCapability:I

    iget-boolean v13, v7, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    iput-boolean v13, v7, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    iget-boolean v15, v7, Lcom/android/server/am/UidRecord;->mIdle:Z

    iput-boolean v15, v7, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    if-eqz v8, :cond_15

    if-ne v14, v11, :cond_16

    if-eq v12, v9, :cond_15

    goto :goto_8

    :cond_15
    move/from16 v16, v6

    goto :goto_9

    :cond_16
    :goto_8
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v15, v7, Lcom/android/server/am/UidRecord;->mUid:I

    move/from16 v16, v6

    iget-object v6, v8, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v1, v6, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v6, v6, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    invoke-static {v6}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    filled-new-array/range {v23 .. v30}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x759f

    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string/jumbo v1, "uidStateChanged"

    invoke-virtual {v8, v1}, Lcom/android/server/am/OomAdjusterDebugLogger;->maybeLogStacktrace(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    if-nez v1, :cond_17

    goto :goto_9

    :cond_17
    int-to-long v8, v1

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_9
    and-int v1, v10, v17

    if-nez v1, :cond_18

    and-int/lit8 v6, v10, 0x20

    if-eqz v6, :cond_1a

    :cond_18
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v8, v7, Lcom/android/server/am/UidRecord;->mUid:I

    iget v9, v7, Lcom/android/server/am/UidRecord;->mSetProcState:I

    check-cast v6, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    monitor-enter v6

    :try_start_1
    iget-object v11, v6, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_19

    iget-object v11, v6, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8, v9}, Landroid/util/SparseIntArray;->setValueAt(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_19
    :goto_a
    monitor-exit v6

    :cond_1a
    if-eqz v10, :cond_1b

    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    :cond_1b
    if-nez v1, :cond_1c

    and-int/lit8 v6, v10, 0x20

    if-eqz v6, :cond_1d

    :cond_1c
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v7, Lcom/android/server/am/UidRecord;->mUid:I

    iget v9, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    iget v10, v7, Lcom/android/server/am/UidRecord;->mCurCapability:I

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    :cond_1d
    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    iget v8, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-virtual {v1, v6, v8}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    :cond_1e
    iget-boolean v1, v7, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v1, :cond_24

    iget-object v6, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v10, 0x0

    :goto_b
    if-ltz v6, :cond_23

    iget-object v8, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    iget v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget v11, v7, Lcom/android/server/am/UidRecord;->mUid:I

    if-ne v9, v11, :cond_21

    iget v9, v7, Lcom/android/server/am/UidRecord;->mCurProcState:I

    const/4 v11, 0x2

    if-gt v9, v11, :cond_20

    iget-boolean v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v9, :cond_1f

    move/from16 v9, v16

    iput-boolean v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    move v10, v9

    goto :goto_c

    :cond_1f
    move/from16 v9, v16

    :goto_c
    iput-boolean v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    :goto_d
    const/4 v15, 0x0

    goto :goto_e

    :cond_20
    iget-boolean v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    const/4 v15, 0x0

    if-eqz v9, :cond_22

    iput-boolean v15, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    const/4 v10, 0x1

    goto :goto_e

    :cond_21
    const/4 v11, 0x2

    goto :goto_d

    :cond_22
    :goto_e
    add-int/lit8 v6, v6, -0x1

    const/16 v16, 0x1

    goto :goto_b

    :cond_23
    if-eqz v10, :cond_24

    const-wide/16 v11, 0x0

    invoke-static {v1, v11, v12}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_10

    :goto_f
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_24
    :goto_10
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v6, v7, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v1, v6, v2, v3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p1

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_25
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_26
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_27

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidRecord;

    iget v3, v3, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_27
    return-void
.end method
