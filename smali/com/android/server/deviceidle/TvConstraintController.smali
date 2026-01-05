.class public final Lcom/android/server/deviceidle/TvConstraintController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/deviceidle/ConstraintController;


# instance fields
.field public final mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

.field public final mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/deviceidle/BluetoothConstraint;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    const-string/jumbo v1, "bluetooth"

    const/4 v2, 0x1

    invoke-interface {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleInternal;->registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {p0, v0}, Lcom/android/server/DeviceIdleInternal;->unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    :cond_0
    return-void
.end method
