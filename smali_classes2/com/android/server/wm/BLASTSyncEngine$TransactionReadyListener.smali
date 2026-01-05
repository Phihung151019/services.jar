.class public interface abstract Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public onReadyTimeout()V
    .locals 0

    return-void
.end method

.method public onReadyTraceEnd(ILjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public onReadyTraceStart(ILjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public onTransactionCommitTimeout()V
    .locals 0

    return-void
.end method

.method public onTransactionCommitted()V
    .locals 0

    return-void
.end method

.method public abstract onTransactionReady(Landroid/view/SurfaceControl$Transaction;I)V
.end method
