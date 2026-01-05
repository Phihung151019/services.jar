.class public Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mTasks:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static varargs generateFingerprint([I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ":"

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final destroy(Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mTasks:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mFingerprint:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->terminate()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final keep(Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    invoke-virtual {p1, v1}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->setFilter(Ljava/util/function/Predicate;)V

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsStandby:Z

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mTasks:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mFingerprint:Ljava/lang/String;

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

.method public final reschedule(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;)",
            "Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;"
        }
    .end annotation

    filled-new-array {p1, p2, p3, p4, p5}, [I

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->generateFingerprint([I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mTasks:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    if-eqz p3, :cond_0

    iput-object p6, p3, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    invoke-virtual {p3, p7}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->setFilter(Ljava/util/function/Predicate;)V

    const/4 p4, 0x0

    iput-boolean p4, p3, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsStandby:Z

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mTasks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    return-object p3

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
