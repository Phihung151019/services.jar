.class public final synthetic Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/CachedAppOptimizer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    iput-boolean p2, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$1:Z

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->KEY_USE_COMPACTION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ActivityManager"

    if-eqz p0, :cond_2

    const-string p0, "Freezer enabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    iget-object p0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->start()V

    :cond_0
    iget-object p0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    invoke-direct {p0, v0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object p0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    :cond_1
    iget-object p0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void

    :cond_2
    const-string p0, "Freezer disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    return-void
.end method
