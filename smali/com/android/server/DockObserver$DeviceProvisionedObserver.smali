.class public final Lcom/android/server/DockObserver$DeviceProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final isDeviceProvisioned()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    iget-object p1, p1, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->updateRegistration()V

    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    iget p2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/server/DockObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/DockObserver;)V

    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateRegistration()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->mRegistered:Z

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v0, :cond_1

    const-string/jumbo v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->mRegistered:Z

    return-void
.end method
