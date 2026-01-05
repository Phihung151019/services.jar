.class public final Lcom/android/server/chimera/genie/MemoryReclaimer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static executeQuickSwap(JLjava/util/ArrayList;)V
    .locals 2

    const-string/jumbo v0, "MemoryReclaimer"

    const-string v1, "Executing QuickSwap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, v0, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p2, p2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p2, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapHandler:Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p2, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p2, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    if-eqz v1, :cond_4

    const-string/jumbo p0, "QuickSwap"

    const-string/jumbo p1, "QuickSwap is skipped because QuickSwap is already running."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p2, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapHandler:Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method
