.class public final Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;
.super Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;

    const-wide/32 v1, 0xf4240

    mul-long v2, p1, v1

    const/16 v1, 0x259

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;-><init>(IJIILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    iget-wide p1, p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mBootTimeNanos:J

    invoke-virtual {v0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->findAndHandle(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V

    return-void
.end method

.method public final reportApplicationDying(JIILjava/lang/String;J)V
    .locals 9

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/data/AppDyingData;

    const-wide/32 v1, 0xf4240

    mul-long v2, p1, v1

    const/16 v1, 0x25a

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/data/AppDyingData;-><init>(IJIILjava/lang/String;J)V

    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    iget-wide p1, p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mBootTimeNanos:J

    invoke-virtual {v0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->findAndHandle(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V

    return-void
.end method
