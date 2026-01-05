.class Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v2, "camera_flash_notification"

    const/4 v3, -0x2

    invoke-static {p2, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-boolean p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->prepareForCameraFlashNotification()V

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object p1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void

    :cond_4
    const-string/jumbo p1, "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "FlashNotifController"

    if-eqz p1, :cond_6

    const-string p1, "ACTION_FLASH_NOTIFICATION_START_PREVIEW"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_COLOR"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo p1, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_TYPE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    new-instance v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget-object v5, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "preview"

    const-string/jumbo v7, "preview"

    const/4 v3, 0x3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void

    :cond_5
    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference$2()I

    move-result v2

    const-string/jumbo v5, "preview"

    const/4 v1, 0x1

    const-string/jumbo v4, "preview"

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void

    :cond_6
    const-string/jumbo p1, "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "ACTION_FLASH_NOTIFICATION_STOP_PREVIEW"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    const-string/jumbo p1, "preview"

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
