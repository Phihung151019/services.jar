.class public Lcom/android/server/knox/zt/devicetrust/task/ExecveMonitoring;
.super Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


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

    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-void
.end method


# virtual methods
.method public final onMonitored()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->readExecveData()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;

    invoke-virtual {p0, v3}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onEvent(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed in transaction: "

    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/zt/devicetrust/task/ExecveMonitoring;->onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->destroyChecked()V

    return-void
.end method

.method public final onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    return-void
.end method
