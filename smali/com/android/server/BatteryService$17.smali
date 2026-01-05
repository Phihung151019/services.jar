.class public final Lcom/android/server/BatteryService$17;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/att/iqi/lib/metrics/hw/HW12;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/att/iqi/lib/metrics/hw/HW12;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/hw/HW12;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/hw/HW12;->setCause(B)Lcom/att/iqi/lib/metrics/hw/HW12;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/hw/HW12;->setProcessor(B)Lcom/att/iqi/lib/metrics/hw/HW12;

    invoke-virtual {p0, v0}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    :cond_0
    return-void
.end method
