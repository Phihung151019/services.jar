.class public final Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAllowedStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

.field public final mDefaultStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

.field public final mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

.field public final mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

.field public final mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

.field public final mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;-><init>(Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;I)V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mDefaultStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;-><init>(Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;I)V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mAllowedStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    iput-object p3, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x18

    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mProtectedProcesses:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    iput-boolean v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    const/16 v1, 0x7c00

    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mAlwaysRunningGlobalQuotaSpec:I

    new-instance v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    invoke-direct {v1, v0}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;-><init>(Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;)V

    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    const-string/jumbo v2, "ro.boot.debug_level"

    const-string v3, "0x4f4c"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mLoadSuccess:Z

    if-nez v1, :cond_1

    :cond_0
    iput-boolean v3, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    :cond_1
    iput v3, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getTotalMemorySizeKb()J

    move-result-wide v1

    long-to-int v1, v1

    const/high16 v2, 0xc00000

    const/high16 v4, 0x800000

    if-le v1, v2, :cond_2

    iput v4, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    goto :goto_0

    :cond_2
    const/high16 v2, 0x600000

    if-le v1, v4, :cond_3

    iput v2, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    goto :goto_0

    :cond_3
    const/high16 v4, 0x400000

    if-le v1, v2, :cond_4

    iput v4, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    goto :goto_0

    :cond_4
    if-le v1, v4, :cond_5

    const/high16 v1, 0x300000

    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    :cond_5
    :goto_0
    iget v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    iput-boolean v3, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    :goto_1
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->KILL_DISABLED:Z

    iput v3, v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mSpecKillCntAfterBoot:I

    iput v3, v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mGlobalKillCntAfterBoot:I

    iput v3, v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mAlwaysRunningKillCntAfterBoot:I

    iput-object p3, v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    return-void
.end method


# virtual methods
.method public final dumpKillStatus(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\nKill status"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Spec kill count after boot: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mSpecKillCntAfterBoot:I

    const-string v2, "  Global kill count after boot: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mGlobalKillCntAfterBoot:I

    const-string v2, "  AlwaysRunning kill count after boot: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mAlwaysRunningKillCntAfterBoot:I

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpProcessList(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\nProcess List"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  In-progress process List (length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "    "

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  Protected process List (length="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mProtectedProcesses:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mProtectedProcesses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  Reported process List (length="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final processScanPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 13

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mAllowedStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mDefaultStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    :goto_0
    iget v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v1, v0

    and-int/2addr v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeBeforeGc:J

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    invoke-static {v0, v2, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pss:J

    goto/16 :goto_3

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeAfterGc:J

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    invoke-static {v0, v2, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pss:J

    goto/16 :goto_3

    :pswitch_0
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    invoke-static {v0}, Landroid/os/Process;->getRss(I)[J

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    const-wide/32 v4, 0x7fffffff

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    if-ge v3, v2, :cond_3

    aget-wide v9, v0, v3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long v6, v9, v6

    if-ltz v6, :cond_6

    cmp-long v4, v9, v4

    if-gtz v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    aget-wide v9, v0, v2

    const/4 v3, 0x3

    aget-wide v11, v0, v3

    add-long/2addr v9, v11

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long v6, v9, v6

    if-ltz v6, :cond_6

    cmp-long v4, v9, v4

    if-gtz v4, :cond_6

    iget v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v5, v4

    and-int/2addr v4, v5

    const/16 v5, 0x20

    if-ne v4, v5, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeBeforeGc:J

    long-to-int v0, v9

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeAfterGc:J

    long-to-int v4, v9

    iput v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    aget-wide v4, v0, v1

    long-to-int v1, v4

    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmRss:I

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    long-to-int v1, v4

    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssFile:I

    aget-wide v1, v0, v2

    long-to-int v1, v1

    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssAnon:I

    aget-wide v0, v0, v3

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmSwap:I

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Process.getRss("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") error."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    :cond_6
    :goto_3
    iget v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->$r8$classId:I

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v2, v1

    and-int/2addr v1, v2

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    const/16 v2, 0x20

    const-string v3, "KB Threshold="

    if-ne v1, v2, :cond_9

    iget-wide v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pss:J

    long-to-int v1, v1

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->getAlwaysRunningSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_8

    :cond_7
    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x5

    if-le v1, v0, :cond_8

    iget v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    const-string/jumbo v2, "Trigger AlwaysRunning kill before GC. (Usage="

    const-string v4, "KB(x1.2) SCAN_VERSION=1) "

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    goto/16 :goto_8

    :cond_9
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1f

    iget-wide v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pss:J

    long-to-int v1, v1

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->getAlwaysRunningSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    move-result v2

    if-eqz v2, :cond_b

    if-le v1, v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->setShouldKill()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Trigger AlwaysRunning kill after GC. (Usage="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "KB SCAN_VERSION=1) "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    goto/16 :goto_8

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    iget-boolean v1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    const/16 v3, 0x8

    const-string v4, "KB Threshold="

    const-string v5, "KB SCAN_VERSION=1) "

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v2, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    iget-object v8, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    iget-object v9, v8, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-boolean v1, v8, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreGlobalKill:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :cond_d
    move v1, v7

    :goto_4
    if-nez v1, :cond_13

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_6

    :cond_e
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v8, v1

    and-int/2addr v8, v1

    if-ne v8, v6, :cond_11

    iget v8, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    iget v9, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    if-le v8, v9, :cond_10

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "This HPD cannot trigger global kill. Because spec kill is already triggered."

    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    :goto_5
    const-string/jumbo v1, "Trigger Global kill before GC. (Usage="

    invoke-static {v8, v9, v1, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    and-int/lit16 v1, v1, -0x101

    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    goto :goto_6

    :cond_11
    if-ne v8, v3, :cond_13

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    iget v8, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mGlobalKillThresholdKb:I

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v9

    if-eqz v9, :cond_12

    if-le v1, v8, :cond_12

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->setShouldKill()V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Trigger Global kill after GC. (Usage="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    :cond_13
    :goto_6
    iget-boolean v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, v2, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    iget-object v8, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-boolean v7, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreSpecKill:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_15
    if-nez v7, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_8

    :cond_16
    iget-object v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_8

    :cond_17
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v1, v0

    and-int/2addr v0, v1

    if-ne v0, v6, :cond_1c

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->getSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_8

    :cond_18
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_19

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x5

    :cond_19
    if-le v0, v1, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "This HPD cannot trigger spec kill. Because global kill is already triggered."

    invoke-static {v2}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_7

    :cond_1a
    iget v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    :goto_7
    const-string/jumbo v2, "Trigger Spec kill before GC. (Usage="

    const-string v3, "KB(x1.2) SCAN_VERSION=1) "

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_1b
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    goto :goto_8

    :cond_1c
    if-ne v0, v3, :cond_1f

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->getSpecKb(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)I

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_8

    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v2

    if-eqz v2, :cond_1e

    if-le v0, v1, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->setShouldKill()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Trigger Spec kill after GC. (Usage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_1e
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    :cond_1f
    :goto_8
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0$1:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v1, v0

    and-int/2addr v1, v0

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-ne v1, v2, :cond_21

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    return v3

    :cond_21
    const/16 v2, 0x8

    if-ne v1, v2, :cond_22

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_22

    return v3

    :cond_22
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final processStartPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 6

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mProtectedProcesses:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    iget-wide v3, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->reportTime:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Report-protecting (%dh) is expired. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->toDumpString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    iget-object v2, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
