.class public final synthetic Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    sget-object p0, Lcom/android/server/wearable/WearableSensingShellCommand;->sTestableCallbackInternal:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;

    const-string/jumbo v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iput p1, p0, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;->mLastStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
