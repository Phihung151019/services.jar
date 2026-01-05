.class public abstract Landroid/internal/os/profiling/Flags;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final FEATURE_FLAGS:Landroid/internal/os/profiling/FeatureFlagsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static systemTriggeredProfilingNew()Z
    .locals 4

    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    const-string v0, "FeatureFlagsImplExport"

    :try_start_0
    const-string/jumbo v1, "android.os.profiling"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    const-string/jumbo v2, "persist_queue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    const-string/jumbo v2, "system_triggered_profiling_new"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/internal/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/LinkageError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v0, 0x1

    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    :cond_0
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z

    return v0
.end method
