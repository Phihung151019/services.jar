.class public abstract Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final MODEL_UMR_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.enabled"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string/jumbo v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.psi_cpu_threshold_ms"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.psi_mem_threshold_ms"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.mem_avail_low_threshold_kb"

    const-wide/32 v1, 0x200000

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.mem_free_low_threshold_kb"

    const-wide/32 v1, 0x19000

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    const/4 v0, 0x1

    const-string/jumbo v1, "staticInitialize: UnifiedMemoryReclaimer is disabled by config"

    invoke-static {v1, v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    return-void
.end method

.method private static native closeCpuStatusMonitorNative()V
.end method

.method private static native closeMemStatusMonitorNative()V
.end method

.method private static native createStatusMonitorNative()I
.end method

.method private static native destroyStatusMonitorNative()V
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "1"

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "True"

    const-string/jumbo v3, "TRUE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    const-string v0, "0"

    const-string/jumbo v1, "false"

    const-string v2, "False"

    const-string v3, "FALSE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    :try_start_0
    const-string/jumbo v0, "disabled by system configuration"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static native getFreeMemoryNative()J
.end method

.method public static isInAppLaunch()Z
    .locals 1

    sget-object v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->mForegroundMonitor:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/chimera/umr/ForegroundAppTracker;->getForegroundMonitor()Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mAppLaunch:Z

    return v0
.end method

.method private static native openCpuStatusMonitorNative(II)I
.end method

.method private static native openMemStatusMonitorNative(II)I
.end method

.method private static native waitForStatusUpdate()I
.end method
