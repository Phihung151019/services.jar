.class public final Lcom/android/server/display/VirtualDisplayAdapter$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;


# virtual methods
.method public final createDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/display/DisplayControl;->createVirtualDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final destroyDisplay(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/display/DisplayControl;->destroyVirtualDisplay(Landroid/os/IBinder;)V

    return-void
.end method

.method public final setDisplayPowerMode(ILandroid/os/IBinder;)V
    .locals 0

    invoke-static {p2, p1}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    return-void
.end method
