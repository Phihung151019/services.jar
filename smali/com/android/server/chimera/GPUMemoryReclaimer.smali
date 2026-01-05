.class public final Lcom/android/server/chimera/GPUMemoryReclaimer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static FEATURE_ENABLED:Z

.field public static INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public static __Async:Ljava/lang/Boolean;

.field public static __EnabledSwapIn:Ljava/lang/Boolean;

.field public static __EnabledSwapOut:Ljava/lang/Boolean;

.field public static __MaxReclaimSize:J

.field public static __VendorPluginName:Ljava/lang/String;


# instance fields
.field public final mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

.field public mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

.field public mSwapInThread:Lcom/android/server/ServiceThread;

.field public mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

.field public final mSwapOutPids:Ljava/util/Set;

.field public mSwapOutThread:Lcom/android/server/ServiceThread;

.field public final mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

.field public final mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutPids:Ljava/util/Set;

    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    const-string v1, "GMR"

    const-string/jumbo v2, "vendor_plugin is not defined or invalid: "

    const-string v3, "  async: "

    const-string v4, "  enabled_swap_in: "

    const-string v5, "  enabled_swap_out: "

    const-string v6, "  vendor_plugin: "

    const-string v7, "  feature enable: "

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v9, "init start"

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v9, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    if-nez v9, :cond_0

    const-string/jumbo p0, "feature disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const-string/jumbo v9, "feature enabled"

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "Configurations"

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, ""

    const-string/jumbo v10, "ro.sys.kernelmemory.gmr.vendor_plugin"

    if-nez v6, :cond_1

    :try_start_1
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    :cond_1
    sget-object v6, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    if-nez v3, :cond_2

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    :cond_2
    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    const-string/jumbo v4, "kgsl"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;

    invoke-direct {v4, p0, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    iput-object v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "sgpu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;

    invoke-direct {v4, p0, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    iput-object v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "mtk"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$MTKPlugin;

    invoke-direct {v4, p0, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$MTKPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    iput-object v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    if-eqz v4, :cond_7

    iget-boolean v4, v4, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->initAsyncThreads()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    const-string/jumbo p0, "init success"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    sput-boolean v8, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init failed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;
    .locals 2

    const-class v0, Lcom/android/server/chimera/GPUMemoryReclaimer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-direct {v1}, Lcom/android/server/chimera/GPUMemoryReclaimer;-><init>()V

    sput-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static final getMaxReclaimSize()J
    .locals 4

    sget-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.max_size"

    const-wide/32 v1, 0x20000000

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    :cond_0
    sget-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    return-wide v0
.end method

.method public static getProcDebugMessage(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "->"

    const-string p1, " state:"

    invoke-static {p2, p3, p0, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isAsync()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.async"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final isEnabledSwapIn()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled_swap_in"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final isEnabledSwapOut()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled_swap_out"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public final dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "  async: "

    const-string v1, "  enabled_swap_in: "

    const-string v2, "  enabled_swap_out: "

    const-string v3, "  vendor_plugin: "

    const-string v4, "  feature enable: "

    :try_start_0
    array-length p2, p2

    const/4 v5, 0x1

    if-gt p2, v5, :cond_1

    const-string p2, "== GMR dump start =="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Configurations"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "ro.sys.kernelmemory.gmr.vendor_plugin"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    :cond_0
    sget-object v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->meminfo(Ljava/io/PrintWriter;)V

    const-string p0, "== GMR dump end =="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "gmr: command failed in ship build"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "gmr: exception "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final initAsyncThreads()V
    .locals 4

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "GMRSwapInThread"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v2}, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;I)V

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "GMRSwapOutThread"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;I)V

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result p0

    invoke-static {p0, v3}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    :cond_2
    :goto_0
    return-void
.end method
