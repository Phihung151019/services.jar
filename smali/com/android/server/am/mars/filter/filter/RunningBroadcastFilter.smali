.class public final Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mRunningBroadcastList:Ljava/util/ArrayList;


# virtual methods
.method public final deInit()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/RunningBroadcastFilter;->mRunningBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x21

    monitor-exit p2

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p2

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
