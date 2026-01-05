.class public Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public final onProcessDied(II)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-virtual {v0, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->containsWithUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    iget v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mKztFrameworkPid:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    iget v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mKztFrameworkPid:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    invoke-virtual {p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoring(I)V

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mKztFrameworkPid:I

    :cond_0
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
