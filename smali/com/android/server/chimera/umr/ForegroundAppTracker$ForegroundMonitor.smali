.class public final Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;


# instance fields
.field public mAppLaunch:Z


# direct methods
.method public static setCameraLaunch(Z)V
    .locals 4

    const-string/jumbo v0, "cameraLaunch = "

    const-string v1, "ForegroundAppTracker"

    invoke-static {v0, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    sget v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->DELAYED_RESET_CAMERA_LAUNCH_MS:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    if-lez v0, :cond_1

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    sput-object v1, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final setAppLaunch(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->IS_DEBUG_ENABLED:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "appLaunch = "

    const-string v1, "ForegroundAppTracker"

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mAppLaunch:Z

    if-eqz p1, :cond_3

    sget-object p0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mMsgHandler:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundAppMsgHandler;

    sget p1, Lcom/android/server/chimera/umr/ForegroundAppTracker;->DELAYED_RESET_APP_LAUNCH_MS:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-lez p1, :cond_2

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method
