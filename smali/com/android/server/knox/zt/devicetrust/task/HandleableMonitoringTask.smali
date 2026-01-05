.class public abstract Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;
.super Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct/range {p0 .. p8}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mQueue:Ljava/util/Queue;

    invoke-virtual {p8}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public establish()V
    .locals 0

    return-void
.end method

.method public final getDataQueue()Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public final handle(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
