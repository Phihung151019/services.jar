.class public final Lcom/android/server/accessibility/FlashNotificationsController$2;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraClosed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    :cond_0
    return-void
.end method

.method public final onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object p2, p2, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    :cond_0
    return-void
.end method
