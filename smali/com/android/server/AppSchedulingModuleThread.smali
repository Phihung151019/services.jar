.class public final Lcom/android/server/AppSchedulingModuleThread;
.super Landroid/os/HandlerThread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Ljava/util/concurrent/Executor;

.field public static sInstance:Lcom/android/server/AppSchedulingModuleThread;


# direct methods
.method public static ensureThreadLocked()V
    .locals 5

    sget-object v0, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/AppSchedulingModuleThread;

    const-string/jumbo v1, "appscheduling.default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/AppSchedulingModuleThread;->sHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerExecutor;

    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/AppSchedulingModuleThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/AppSchedulingModuleThread;
    .locals 2

    const-class v0, Lcom/android/server/AppSchedulingModuleThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sInstance:Lcom/android/server/AppSchedulingModuleThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    const-class v0, Lcom/android/server/AppSchedulingModuleThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    const-class v0, Lcom/android/server/AppSchedulingModuleThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/server/AppSchedulingModuleThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
