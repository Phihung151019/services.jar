.class public final Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDesktopModeEligibleChanged(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    sget-object p1, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/ICameraService;->notifyDisplayConfigurationChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Could not notify cameraserver, remote exception: "

    const-string p2, "CameraService_proxy"

    invoke-static {p1, p0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 0

    return-void
.end method

.method public final onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method
