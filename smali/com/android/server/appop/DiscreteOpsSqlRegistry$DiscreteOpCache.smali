.class public final Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCache:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;


# direct methods
.method public static -$$Nest$mevictOldAppOpEvents(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Ljava/util/List;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    iget-wide v5, v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    cmp-long v5, v5, v2

    if-gtz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    return-void
.end method
