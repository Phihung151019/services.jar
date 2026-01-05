.class public final synthetic Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ExplicitHealthCheckController;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/List;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    iput-object p2, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    invoke-virtual {v4}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ExplicitHealthCheckController;I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ExplicitHealthCheckController;I)V

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1, v4}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda4;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "ExplicitHealthCheckController"

    const-string/jumbo p1, "No more health check requests, unbinding..."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/ExplicitHealthCheckController;->unbindService()V

    monitor-exit v2

    return-void

    :cond_5
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
