.class public final Lcom/android/server/chimera/ChimeraManagerService;
.super Lcom/samsung/android/chimera/IChimera$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;


# instance fields
.field public mChimeraManager:Lcom/android/server/chimera/ChimeraManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/chimera/IChimera$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    const-string/jumbo v1, "persist.config.chimera.enable"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "true"

    if-nez v3, :cond_0

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/server/chimera/ChimeraManager;

    invoke-direct {v1, p1, p2}, Lcom/android/server/chimera/ChimeraManager;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    :cond_2
    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    const-string/jumbo p0, "init: CORERUNE_UMR_ENABLED = true, MODEL_UMR_ENABLED = "

    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "init: UnifiedMemoryReclaimer is disabled by config"

    invoke-static {v2, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v2, "init: failed by exception"

    invoke-static {v2, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    if-nez p0, :cond_9

    new-instance p0, Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/chimera/RepositoryFactory;->getSystemRepository(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mGenieConfigurations:Lcom/android/server/chimera/genie/GenieConfigurations;

    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

    const-wide/32 v3, 0x1d4c0

    iput-wide v3, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLastReclaimTime:J

    iput-boolean v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mHasReclaimed:Z

    iput-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mGenieConfigurations:Lcom/android/server/chimera/genie/GenieConfigurations;

    new-instance v0, Lcom/android/server/chimera/genie/MemoryReclaimer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    iput-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;-><init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "com.samsung.GEN_AI_RECLAIM"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "AICORE_BROADCAST_ACTION_MODEL_LOADING"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.GEN_AI_RECLAIM_END"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "AICORE_BROADCAST_ACTION_MODEL_UNLOADED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startReclaimerHandlerCheck()Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    new-instance p2, Lcom/android/server/chimera/genie/RbinManager;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p2, Lcom/android/server/chimera/genie/RbinManager;->mFeatureEnabled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, Lcom/android/server/chimera/genie/RbinManager;->mLock:Ljava/lang/Object;

    iput v2, p2, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/kernel/rbin/refill_mode"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p2, Lcom/android/server/chimera/genie/RbinManager;->mFeatureEnabled:Z

    if-nez v0, :cond_4

    const-string/jumbo v0, "RbinManager"

    const-string/jumbo v3, "__setRbinBlockModePath failed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

    const-string/jumbo p2, "ro.csc.country_code"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v0, "China"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/android/server/chimera/genie/GenieConfigurations;->sIsChinaDevice:Z

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    sget-object p2, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedPackages:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    const-string/jumbo v0, "com.samsung.android.offline.languagemodel"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "com.samsung.android.offline.languagemodel.chn"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-static {}, Lcom/android/server/chimera/genie/GenieConfigurations;->isGenieUnloadPolicyEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "Genie registerLLMStatusObserver"

    const-string v0, "GenieMemoryManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_7

    const-string/jumbo p1, "mContext is NULL "

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->getInstance()Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    move-result-object p2

    iput-object p1, p2, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mContext:Landroid/content/Context;

    iput-object p0, p2, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mGenieMemoryMgr:Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "aicore_model_load_time_millis"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {}, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->getInstance()Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    move-result-object v0

    invoke-virtual {p1, p2, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_8
    :goto_4
    sput-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    :cond_9
    return-void
.end method


# virtual methods
.method public final checkProcessInHeimdall(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    iget p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    and-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->obtainData()Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    move-result-object p0

    iput p2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->uid:I

    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    iput-object p3, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, v0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-wide p2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_7

    array-length v0, v6

    if-eqz v0, :cond_7

    array-length v0, v6

    if-eqz v0, :cond_7

    move v0, v8

    :goto_0
    array-length v2, v6

    if-ge v0, v2, :cond_7

    aget-object v2, v6, v0

    const-string v3, "-enable_chimera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "persist.config.chimera.enable"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "-disable_chimera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "persist.config.chimera.enable"

    const-string/jumbo v4, "forcestop"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v3, "genie"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    if-eqz v2, :cond_5

    const-string v2, "GenieMemoryManager Config"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "Timeout: 5000"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "ThrottleTime: 60000"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default Size Request: Samsung : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_SAMSUNG_MODEL_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " kB Google : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_GOOGLE_MODEL_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " kB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/chimera/genie/GenieLogger;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "====================================="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "------------ GenieLogger ------------"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "====================================="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    if-nez v3, :cond_2

    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v9, v8

    :goto_2
    if-ge v9, v5, :cond_3

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/2addr v9, v7

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Total Requests : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/chimera/genie/GenieLogger;->sRequestCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " | Reclaimed Requests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/chimera/genie/GenieLogger;->sReclaimedRequests:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    const-string v2, "Genie Disabled"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    :goto_4
    add-int/2addr v0, v7

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz v9, :cond_2a

    if-eqz v6, :cond_2a

    array-length v0, v6

    if-nez v0, :cond_8

    goto/16 :goto_d

    :cond_8
    aget-object v0, v6, v8

    const-string v10, "-a"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v11, v9, Lcom/android/server/chimera/ChimeraManager;->mPsiMonitor:Lcom/android/server/chimera/PsiMonitor;

    iget-object v12, v9, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    const-string/jumbo v13, "info"

    const-string v2, "Chimera enabled: true"

    iget-object v3, v9, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    if-eqz v0, :cond_a

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Chimera Stats]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, v3, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "Using Conservative mode"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9
    const-string/jumbo v0, "Using Aggressive mode"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a
    array-length v0, v6

    if-lez v0, :cond_1d

    aget-object v0, v6, v8

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    const-string/jumbo v2, "standby"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v4, v3, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " apps in mStandbyInfoMap: \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    const-string/jumbo v2, "use_bg_keeping_policy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v4, "true"

    if-eqz v2, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Chimera set ConservativePolicy mode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v6, v7

    invoke-static {v0, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    aget-object v0, v6, v7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v2, v3, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    if-eq v0, v2, :cond_1d

    iput-boolean v0, v3, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    invoke-virtual {v9, v0}, Lcom/android/server/chimera/ChimeraManager;->unRegisterSystemEventListener(Z)V

    invoke-virtual {v9}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    goto/16 :goto_8

    :cond_e
    const-string/jumbo v2, "enable_quick_reclaim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Chimera enable quick reclaim: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v6, v7

    invoke-static {v0, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    aget-object v0, v6, v7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v2, v3, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    if-eq v0, v2, :cond_1d

    iput-boolean v0, v3, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    iget-object v2, v9, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    if-eqz v0, :cond_f

    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v3, v2, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/server/chimera/SystemEventListener;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    check-cast v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    goto/16 :goto_8

    :cond_f
    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "camera"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iget-object v3, v2, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v3, v3, Lcom/android/server/chimera/SystemRepository;->mCameraDeviceStateCallback:Lcom/android/server/chimera/SystemRepository$3;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    iget-object v3, v2, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/server/chimera/SystemEventListener;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    check-cast v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-object v4, v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v8}, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v5, v0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    goto/16 :goto_8

    :cond_10
    const-string/jumbo v2, "gmr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v1, v6}, Lcom/android/server/chimera/GPUMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_11
    const-string/jumbo v2, "ppnandswap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v1, v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    const-string/jumbo v2, "psitracker"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    if-eqz v0, :cond_1d

    array-length v2, v6

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    aget-object v2, v6, v7

    const/4 v3, 0x2

    aget-object v3, v6, v3

    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_6

    :cond_13
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v15, v4

    move-wide v4, v2

    move-wide v2, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/chimera/psitracker/PSITracker;->getPSIValueListDump(Ljava/io/PrintWriter;JJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/chimera/psitracker/PSITracker;->getPSIValueListDump(Ljava/io/PrintWriter;JJ)V

    goto :goto_7

    :cond_14
    :goto_6
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/chimera/psitracker/PSITracker;->getPSIValueListDump(Ljava/io/PrintWriter;JJ)V

    :goto_7
    move-object/from16 v1, p2

    goto/16 :goto_8

    :cond_15
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/chimera/psitracker/PSITracker;->getPSIValueListDump(Ljava/io/PrintWriter;JJ)V

    goto/16 :goto_8

    :cond_16
    const-string/jumbo v2, "enable_app_cache_reclaim"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Chimera enable app cache reclaim: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v6, v7

    invoke-static {v0, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    aget-object v0, v6, v7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v2, v3, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    if-eq v0, v2, :cond_1d

    iput-boolean v0, v3, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    if-eqz v0, :cond_17

    const-string v0, "Chimera app cache reclaim enabled."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_17
    const-string v0, "Chimera app cache reclaim disabled."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_18
    const-string/jumbo v2, "heimdall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v12, v1, v6}, Lcom/android/server/chimera/heimdall/Heimdall;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_19
    const-string/jumbo v2, "set_quota"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_8

    :cond_1a
    const-string/jumbo v2, "umr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;)V

    goto :goto_8

    :cond_1b
    const-string/jumbo v2, "set_subprockill"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Chimera enable sub process kill: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v6, v7

    invoke-static {v0, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    aget-object v0, v6, v7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v2, v3, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    if-eq v0, v2, :cond_1d

    iput-boolean v0, v3, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    goto :goto_8

    :cond_1c
    const-string/jumbo v2, "PsiMonitor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v11, v1}, Lcom/android/server/chimera/PsiMonitor;->dump(Ljava/io/PrintWriter;)V

    :cond_1d
    :goto_8
    iget-object v2, v9, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Target mem : "

    array-length v3, v6

    if-nez v3, :cond_1e

    goto/16 :goto_b

    :cond_1e
    aget-object v3, v6, v8

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v2, v1}, Lcom/android/server/chimera/ChimeraStrategy;->dumpInfo(Ljava/io/PrintWriter;)V

    goto/16 :goto_b

    :cond_1f
    array-length v3, v6

    if-lez v3, :cond_23

    aget-object v3, v6, v8

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2, v1}, Lcom/android/server/chimera/ChimeraStrategy;->dumpInfo(Ljava/io/PrintWriter;)V

    goto/16 :goto_b

    :cond_20
    const-string/jumbo v4, "mem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    array-length v4, v6

    if-le v4, v7, :cond_21

    :try_start_2
    aget-object v3, v6, v7

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    iget-object v2, v2, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_21
    const-string/jumbo v0, "set_protected_count_on_lmkd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    array-length v0, v6

    if-le v0, v7, :cond_22

    :try_start_3
    aget-object v0, v6, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ProtectedCount On Lmkd : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    goto :goto_b

    :cond_22
    const-string/jumbo v0, "set_protected_count_on_home"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    array-length v0, v6

    if-le v0, v7, :cond_23

    :try_start_4
    aget-object v0, v6, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ProtectedCount On Home : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_23
    :goto_b
    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    if-eqz v0, :cond_24

    invoke-virtual {v0, v1, v6}, Lcom/android/server/chimera/PolicyHandler;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_24
    aget-object v0, v6, v8

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    if-eqz v0, :cond_25

    invoke-virtual {v0, v1, v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_25
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    if-eqz v0, :cond_26

    invoke-virtual {v0, v1, v6}, Lcom/android/server/chimera/GPUMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_26
    iget-object v0, v9, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    if-eqz v0, :cond_28

    array-length v2, v6

    if-nez v2, :cond_27

    goto :goto_c

    :cond_27
    const-string v2, "AbnormalFgsDetector"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "HeavyApps : ["

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "KillableHeavyApps : ["

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "AbnormalHeavyApps : [Current "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mAbnormalHeavyApps:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    const-string v3, " Reported "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/chimera/AbnormalFgsDetector;->mReportedAbnormalHeavyApps:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/android/server/chimera/AbnormalFgsDetector;->printHeavyAppItems(Ljava/io/PrintWriter;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_28
    :goto_c
    if-eqz v12, :cond_29

    invoke-virtual {v12, v1, v6}, Lcom/android/server/chimera/heimdall/Heimdall;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_29
    invoke-static {v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;)V

    invoke-virtual {v11, v1}, Lcom/android/server/chimera/PsiMonitor;->dump(Ljava/io/PrintWriter;)V

    :cond_2a
    :goto_d
    return-void
.end method

.method public final getAvailableMemInfo(JJ)Ljava/util/List;
    .locals 19

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    if-eqz v5, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/chimera/psitracker/PSIDBManager;->getInstance()Lcom/android/server/chimera/psitracker/PSIDBManager;

    move-result-object v10

    iput-object v10, v5, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    invoke-virtual {v10}, Lcom/android/server/chimera/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "PSITracker"

    const-string/jumbo v11, "getAvailableMemInfo failed! db is closed!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v12, v0, v10

    if-nez v12, :cond_2

    cmp-long v10, v2, v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v5, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SELECT id,availMem,running,cached,checkTime FROM psi_Available_Mem ORDER BY id"

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "SELECT id,availMem,running,cached,checkTime FROM psi_Available_Mem WHERE checkTime <= "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " AND checkTime > "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ORDER BY id"

    invoke-static {v10, v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v5, Lcom/android/server/chimera/psitracker/PSITracker;->db:Lcom/android/server/chimera/psitracker/PSIDBManager;

    invoke-virtual {v2, v0}, Lcom/android/server/chimera/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "availMem"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "running"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v5, "cached"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v10, "checkTime"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    new-instance v10, Lcom/samsung/android/chimera/PSIAvailableMem;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/chimera/PSIAvailableMem;-><init>(JJJJ)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5
    return-object v0

    :goto_7
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    return-object v4
.end method

.method public final getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;
    .locals 1

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/ChimeraManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/ChimeraDataInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;)V
    .locals 1

    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "prepareMemory "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/chimera/genie/MemRequest;->getSize()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChimeraManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setGenieSessionEnd()V
    .locals 2

    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    if-eqz p0, :cond_0

    const-string p0, "ChimeraManagerService"

    const-string/jumbo v0, "setGenieSessionEnd "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    invoke-static {}, Lcom/android/server/chimera/genie/GenieConfigurations;->isGenieUnloadPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/server/chimera/genie/GenieConfigurations;->sGenAIPackageMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startUnloadTimerLocked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setGenieSessionStart()V
    .locals 1

    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    if-eqz p0, :cond_0

    const-string p0, "ChimeraManagerService"

    const-string/jumbo v0, "setGenieSessionStart "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/chimera/ChimeraManagerService;->mGenieMemoryManager:Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "GenieMemoryManager"

    const-string/jumbo v0, "setGenieSessionStart"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
