.class public final Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public allowAlwaysRunning:Z

.field public alwaysRunningSpecSize:I

.field public final alwaysRunningSpecSizeInitial:I

.field public ignoreAlwaysRunningSpecKill:Z

.field public ignoreGlobalKill:Z

.field public ignoreSpecKill:Z

.field public final procName:Ljava/lang/String;

.field public specSize:I

.field public specVersion:I


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;[Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    aget-object v1, p2, v0

    const/4 v2, 0x2

    aget-object v2, p2, v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v4, v5

    :goto_0
    const/4 v6, 0x5

    :try_start_1
    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move v6, v5

    :goto_1
    const/4 v7, 0x6

    :try_start_2
    aget-object p2, p2, v7

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move p2, v5

    :goto_2
    iput p2, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSizeInitial:I

    if-gez v4, :cond_0

    move v2, v0

    goto :goto_3

    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v4, 0x40000

    :cond_1
    :goto_3
    if-lez v6, :cond_2

    move v7, v0

    goto :goto_4

    :cond_2
    move v7, v5

    :goto_4
    if-le v6, v0, :cond_3

    goto :goto_5

    :cond_3
    move v0, v5

    :goto_5
    if-nez v0, :cond_4

    iget v5, p1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mAlwaysRunningGlobalQuotaSpec:I

    if-ge p2, v5, :cond_4

    move p2, v5

    :cond_4
    iput-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specSize:I

    iput-boolean v3, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreGlobalKill:Z

    iput-boolean v2, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreSpecKill:Z

    iput-boolean v7, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->allowAlwaysRunning:Z

    iput-boolean v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z

    iput p2, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSize:I

    iget p1, p1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecVersion:I

    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specVersion:I

    return-void
.end method
