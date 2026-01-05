.class public final Lcom/android/server/backup/remote/RemoteCall;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallable:Lcom/android/server/backup/remote/RemoteCallable;

.field public final mFuture:Ljava/util/concurrent/CompletableFuture;

.field public final mTimeoutMs:J


# direct methods
.method public constructor <init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/remote/RemoteCall;->mCallable:Lcom/android/server/backup/remote/RemoteCallable;

    iput-wide p3, p0, Lcom/android/server/backup/remote/RemoteCall;->mTimeoutMs:J

    new-instance p2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz p1, :cond_0

    sget-object p0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final call()Lcom/android/server/backup/remote/RemoteResult;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Can\'t call call() on main thread"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mTimeoutMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/backup/remote/RemoteCall$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/backup/remote/RemoteCall$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/remote/RemoteCall;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/android/server/backup/remote/FutureBackupCallback;

    iget-object v1, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0, v1}, Lcom/android/server/backup/remote/FutureBackupCallback;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    iget-object v1, p0, Lcom/android/server/backup/remote/RemoteCall;->mCallable:Lcom/android/server/backup/remote/RemoteCallable;

    invoke-interface {v1, v0}, Lcom/android/server/backup/remote/RemoteCallable;->call(Lcom/android/server/backup/remote/FutureBackupCallback;)V

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/remote/RemoteResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Future unexpectedly completed with an exception"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    sget-object p0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    return-object p0
.end method
