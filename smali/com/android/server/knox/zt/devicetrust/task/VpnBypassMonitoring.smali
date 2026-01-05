.class public Lcom/android/server/knox/zt/devicetrust/task/VpnBypassMonitoring;
.super Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 0

    move p2, p1

    const/16 p1, 0x11

    invoke-direct/range {p0 .. p7}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-void
.end method
