.class public interface abstract Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public initializeUserOverride(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageUninstalled(ILjava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;->initializeUserOverride(ILjava/lang/String;)V

    return-void
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract resetAllIfNeeded(II)V
.end method
