.class public Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;

.field public final mIsConnectedDisplayErrorHandlingEnabled:Z

.field public mListener:Lcom/android/server/display/notifications/DisplayNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mInjector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;

    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mIsConnectedDisplayErrorHandlingEnabled:Z

    return-void
.end method


# virtual methods
.method public final onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/DisplayNotificationManager;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->getPartnerSinkStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->getCableStatus()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {p0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onCableNotCapableDisplayPort()V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->getLinkTrainingStatus()I

    move-result p1

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {p0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onDisplayPortLinkTrainingFailure()V

    :cond_2
    :goto_0
    return-void
.end method
