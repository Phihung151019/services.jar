.class public final Lcom/android/server/audio/AudioService$CacheWatcher;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mTask:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;

.field public final mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->getNonceWatcher(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    iput-object p1, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mTask:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mTask:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->waitForChange()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "Unexpected Interrupt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    return-void
.end method
