.class public interface abstract Lcom/android/server/job/controllers/idle/IdlenessTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract dump(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpConstants(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract isIdle()Z
.end method

.method public abstract onBatteryStateChanged(ZZ)V
.end method

.method public abstract processConstant(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
.end method

.method public abstract startTracking(Landroid/content/Context;Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/IdleController;)V
.end method
