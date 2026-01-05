.class public final Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "android.hardware.rebootescrow.IRebootEscrow/default"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sget v2, Landroid/hardware/rebootescrow/IRebootEscrow$Stub;->$r8$clinit:I

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v2, Landroid/hardware/rebootescrow/IRebootEscrow;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/hardware/rebootescrow/IRebootEscrow;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/hardware/rebootescrow/IRebootEscrow;

    return-object v2

    :cond_1
    new-instance v2, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const-string/jumbo v1, "RebootEscrowProviderHal"

    const-string v2, "Device doesn\'t implement RebootEscrow HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
