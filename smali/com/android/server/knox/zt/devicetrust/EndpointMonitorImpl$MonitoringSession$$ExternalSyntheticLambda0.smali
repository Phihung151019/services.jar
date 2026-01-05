.class public final synthetic Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;->f$0:I

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->lambda$findByUid$0(ILjava/util/List;Ljava/lang/Integer;Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)V

    return-void
.end method
