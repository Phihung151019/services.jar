.class public Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;
.super Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAppMonitor:Lcom/android/server/knox/zt/devicetrust/AppMonitor;


# direct methods
.method public constructor <init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;",
            "Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x7

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;->mAppMonitor:Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    return-void
.end method


# virtual methods
.method public final establish()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;->mAppMonitor:Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->setOn(Z)V

    return-void
.end method

.method public final onMonitored()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFilter:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onEvent(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed in transaction: "

    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final release()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;->mAppMonitor:Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->setOn(Z)V

    return-void
.end method
