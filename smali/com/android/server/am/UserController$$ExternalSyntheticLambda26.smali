.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Ljava/util/concurrent/atomic/AtomicBoolean;JLcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;->f$2:J

    iput-object p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;->f$3:Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/am/UserController;

    iget-object v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-wide v2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;->f$2:J

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda26;->f$3:Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v4, ", "

    iget-object v0, v0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-static {v4, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Timeout on dispatchOnBeforeUserSwitching. These UserSwitchObservers did not respond in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->run()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
