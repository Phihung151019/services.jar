.class public final Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;->mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

    return-void
.end method
