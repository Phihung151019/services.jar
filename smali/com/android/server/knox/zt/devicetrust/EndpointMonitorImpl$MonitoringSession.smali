.class Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    return-void
.end method

.method public static lambda$findByUid$0(ILjava/util/List;Ljava/lang/Integer;Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)V
    .locals 0

    iget p2, p3, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mUid:I

    if-ne p2, p0, :cond_0

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    iget v1, p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final contains()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final contains(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final containsWithUid(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    iget v1, v1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mUid:I

    if-ne v1, p1, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final find(I)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final findAndHandle(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->find(I)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    move-result-object p0

    instance-of p1, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->handle(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V

    :cond_0
    return-void
.end method

.method public final findByUid(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    new-instance v2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    invoke-interface {p0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final remove(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
