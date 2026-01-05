.class public final Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;
.super Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyThrottling(ZLandroid/hardware/thermal/V1_0/Temperature;)V
    .locals 3

    new-instance v0, Landroid/os/Temperature;

    iget v1, p2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v2, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object p2, p2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, p2, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    check-cast p0, Lcom/android/server/power/ThermalManagerService$1;

    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$1;->onTemperatureChanged(Landroid/os/Temperature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
