.class public final Lcom/android/server/location/injector/SystemDeviceIdleHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mReceiver:Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

.field public mRegistrationRequired:Z

.field public mSystemReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addListener(Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mRegistrationRequired:Z

    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onRegistrationStateChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final onRegistrationStateChanged()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mSystemReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mRegistrationRequired:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    if-nez v4, :cond_1

    new-instance v2, Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;-><init>(Lcom/android/server/location/injector/SystemDeviceIdleHelper;)V

    iget-object v4, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    if-eqz v2, :cond_2

    iput-object v3, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    iget-object p0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
