.class public final Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCameraFlashNotificationUri:Landroid/net/Uri;

.field public final mScreenFlashNotificationUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "camera_flash_notification"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mCameraFlashNotificationUri:Landroid/net/Uri;

    const-string/jumbo p1, "screen_flash_notification"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mScreenFlashNotificationUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mCameraFlashNotificationUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v3, "camera_flash_notification"

    invoke-static {p2, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-boolean p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->prepareForCameraFlashNotification()V

    return-void

    :cond_1
    iput-boolean v2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iput-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationRunning:Z

    const-string p0, "FlashNotifController"

    const-string/jumbo p1, "mIsCameraFlashNotificationRunning false in onChange"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mScreenFlashNotificationUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "screen_flash_notification"

    invoke-static {p1, p2, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    :cond_5
    return-void
.end method
