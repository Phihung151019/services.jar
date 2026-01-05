.class public abstract Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;
.super Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFingerprint:Ljava/lang/String;

.field public final mIsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile mIsStandby:Z

.field public final mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;


# direct methods
.method public constructor <init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;",
            "Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    iget-object p6, p8, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    iput-object p6, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    filled-new-array {p1, p2, p3, p4, p5}, [I

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->generateFingerprint([I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mFingerprint:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    invoke-virtual {v0, p0}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->destroy(Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;)V

    return-void
.end method

.method public final destroyChecked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsStandby:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->destroy()V

    :cond_0
    return-void
.end method

.method public final getFingerprint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mFingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public final isStandby()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsStandby:Z

    return p0
.end method

.method public final keep()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    invoke-virtual {v0, p0}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->keep(Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;)V

    return-void
.end method

.method public final schedule()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->schedule()V

    :cond_0
    return-void
.end method

.method public final setFilter(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->ensureFilter(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public final setListener(Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    return-void
.end method

.method public final setStandby(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsStandby:Z

    return-void
.end method
