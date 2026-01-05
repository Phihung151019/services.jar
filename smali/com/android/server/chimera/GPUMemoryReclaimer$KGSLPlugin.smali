.class public final Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;
.super Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mPerf:Landroid/util/BoostFramework;

.field public final synthetic this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V
    .locals 6

    const-string v0, "GMR: Success write max reclaim limit: "

    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-direct {p0, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    const-class p1, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GMR "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    new-instance p2, Landroid/util/BoostFramework;

    invoke-direct {p2}, Landroid/util/BoostFramework;-><init>()V

    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v1, "vendor.perf.bgt.enable"

    const-string/jumbo v2, "false"

    invoke-virtual {p2, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo p2, "perf-hal bgt disabled"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    new-instance p2, Ljava/io/File;

    const-string v1, "/sys/class/kgsl/kgsl/max_reclaim_limit"

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getMaxReclaimSize()J

    move-result-wide v1

    sget v3, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v3}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v4

    div-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getMaxReclaimSize()J

    move-result-wide v0

    invoke-static {v3}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    const-string p1, "GMR: Failed to write max recaim limit to /sys/class/kgsl/kgsl/max_reclaim_limit"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final calculateReclaimed([J)J
    .locals 0

    const/4 p0, 0x2

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public final calculateResident([J)J
    .locals 4

    const/4 p0, 0x0

    aget-wide v0, p1, p0

    const/4 p0, 0x1

    aget-wide v2, p1, p0

    add-long/2addr v0, v2

    const/4 p0, 0x2

    aget-wide p0, p1, p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public final getMeminfoRaw(I)[J
    .locals 6

    const-string v0, "/sys/class/kgsl/kgsl/proc/"

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/gpumem_mapped"

    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/gpumem_unmapped"

    invoke-static {p1, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gpumem_reclaimed"

    invoke-static {p1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    iget-object v2, v2, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToLong(Ljava/lang/String;)J

    move-result-wide p0

    const/4 v4, 0x3

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    const/4 v2, 0x1

    aput-wide v0, v4, v2

    const/4 v0, 0x2

    aput-wide p0, v4, v0

    return-object v4
.end method

.method public final getReclaimableTasks()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/kgsl/kgsl/proc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;

    invoke-direct {v4, v3, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;-><init>(ILcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;)V

    iget-boolean v3, v4, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mIsSuccess:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot access /sys/class/kgsl/kgsl/proc : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public final swapInImpl(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 v0, 0x42820000    # 65.0f

    filled-new-array {v0, p1}, [I

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    const/4 p0, 0x0

    return p0
.end method

.method public final swapOutImpl(ILjava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p2, 0x42824000    # 65.125f

    filled-new-array {p2, p1}, [I

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p0, p2, p1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    const/4 p0, 0x0

    return p0
.end method
