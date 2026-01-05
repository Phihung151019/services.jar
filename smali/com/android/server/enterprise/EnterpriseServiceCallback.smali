.class public interface abstract Lcom/android/server/enterprise/EnterpriseServiceCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public hasDeferredBroadcastReceiverToRegister()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onAdminAdded(I)V
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(IZ)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V

    return-void
.end method

.method public abstract onPreAdminRemoval(I)V
.end method

.method public onUserStarting(I)V
    .locals 0

    return-void
.end method

.method public registerDeferredBoradcastReceiver()V
    .locals 0

    return-void
.end method

.method public abstract systemReady()V
.end method
