.class public Lcom/android/server/accessibility/FlashNotificationsController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final ACTION_FLASH_NOTIFICATION_START_PREVIEW:Ljava/lang/String; = "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

.field static final ACTION_FLASH_NOTIFICATION_STOP_PREVIEW:Ljava/lang/String; = "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

.field static final ALL_FLASH_NOTIFICATION_TYPE:I = 0x3

.field static final CAMERA_FLASH_NOTIFICATION_ALL_APPS:Ljava/lang/String; = "all"

.field static final CAMERA_FLASH_NOTIFICATION_TYPE:I = 0x1

.field static final EXTRA_FLASH_NOTIFICATION_PREVIEW_COLOR:Ljava/lang/String; = "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_COLOR"

.field static final EXTRA_FLASH_NOTIFICATION_PREVIEW_TYPE:Ljava/lang/String; = "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_TYPE"

.field static final NONE_FLASH_NOTIFICATIONS_TYPE:I = 0x0

.field static final PREVIEW_TYPE_LONG:I = 0x1

.field static final PREVIEW_TYPE_SHORT:I = 0x0

.field static final SCREEN_FLASH_NOTIFICATION_COLOR_APPS_ITEM_SEPARATOR:C = '#'

.field static final SCREEN_FLASH_NOTIFICATION_COLOR_APPS_LIST_SEPARATOR:C = ';'

.field static final SCREEN_FLASH_NOTIFICATION_MODE_ALL_APPS:I = 0x0

.field static final SCREEN_FLASH_NOTIFICATION_MODE_CUSTOM:I = 0x1

.field static final SCREEN_FLASH_NOTIFICATION_TYPE:I = 0x2

.field static final SETTING_KEY_CAMERA_FLASH_NOTIFICATION:Ljava/lang/String; = "camera_flash_notification"

.field static final SETTING_KEY_CAMERA_FLASH_NOTIFICATION_APP_LIST:Ljava/lang/String; = "camera_flash_notification_app_list"

.field static final SETTING_KEY_SCREEN_FLASH_NOTIFICATION:Ljava/lang/String; = "screen_flash_notification"

.field static final SETTING_KEY_SCREEN_FLASH_NOTIFICATION_COLOR:Ljava/lang/String; = "screen_flash_notification_color_global"

.field static final SETTING_KEY_SCREEN_FLASH_NOTIFICATION_COLOR_APPS:Ljava/lang/String; = "screen_flash_notification_color_apps"

.field static final SETTING_KEY_SCREEN_FLASH_NOTIFICATION_COLOR_MODE:Ljava/lang/String; = "screen_flash_notification_color_mode"


# instance fields
.field public final mCallbackHandler:Landroid/os/Handler;

.field public mCameraId:Ljava/lang/String;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mContext:Landroid/content/Context;

.field public mCoverScreenNotificationOverlayView:Landroid/view/View;

.field public mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayState:I

.field final mFlashBroadcastReceiver:Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;

.field public final mFlashNotificationHandler:Landroid/os/Handler;

.field public final mFlashNotifications:Ljava/util/LinkedList;

.field public mIsAlarming:Z

.field public mIsCameraFlashNotificationEnabled:Z

.field public mIsCameraFlashNotificationRunning:Z

.field public mIsCameraOpened:Z

.field public mIsScreenFlashNotificationEnabled:Z

.field public mIsTorchOn:Z

.field public mIsTorchTouched:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mScreenFlashNotificationOverlayView:Landroid/view/View;

.field public volatile mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

.field final mTorchAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public final mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$mdoCameraFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotification(Z)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "doCameraFlashNotificationOn: isCameraFlashNotificationEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTorchOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTorchTouched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z

    const-string v1, "FlashNotifController"

    invoke-static {v1, v0, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public static -$$Nest$mdoScreenFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;IZ)V
    .locals 3

    iget v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "doScreenFlashNotificationOn: isScreenFlashNotificationEnabled="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    const-string v1, ", isDozeMode="

    const-string v2, ", color="

    invoke-static {p2, p0, v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlashNotifController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlashNotificationThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FlashNotifController"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsAlarming:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayState:I

    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationRunning:Z

    new-instance v3, Lcom/android/server/accessibility/FlashNotificationsController$1;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/FlashNotificationsController$1;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

    new-instance v3, Lcom/android/server/accessibility/FlashNotificationsController$2;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/FlashNotificationsController$2;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    new-instance v3, Lcom/android/server/accessibility/FlashNotificationsController$3;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/FlashNotificationsController$3;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotificationHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCallbackHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;

    invoke-direct {p2, p0, v3}, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iget-object v3, p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mCameraFlashNotificationUri:Landroid/net/Uri;

    const/4 v4, -0x1

    invoke-virtual {p3, v3, v0, p2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v3, p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mScreenFlashNotificationUri:Landroid/net/Uri;

    invoke-virtual {p3, v3, v0, p2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p3, "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p3, "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance p3, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    iput-object p3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashBroadcastReceiver:Lcom/android/server/accessibility/FlashNotificationsController$FlashBroadcastReceiver;

    const/4 v0, 0x4

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const-string/jumbo p3, "a11y:FlashNotificationsController"

    invoke-virtual {p2, v1, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance p2, Lcom/android/server/accessibility/FlashNotificationsController$4;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/FlashNotificationsController$4;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public static fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V
    .locals 4

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v2, 0x0

    aput v3, p1, v2

    aput v1, p1, v0

    const-string/jumbo v1, "alpha"

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final doCameraFlashNotification(Z)V
    .locals 4

    const-string v0, "Failed to setTorchMode: "

    const-string/jumbo v1, "doCameraFlashNotification: "

    const-string v2, " mCameraId : "

    invoke-static {v1, v2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    const-string v3, "FlashNotifController"

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1, v2, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    const-string p0, "Can not use camera flash notification, please check CameraManager!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final doCameraFlashNotificationOff()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotification(Z)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "doCameraFlashNotificationOff: isCameraFlashNotificationEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTorchOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTorchTouched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchTouched:Z

    const-string v1, "FlashNotifController"

    invoke-static {v1, v0, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final doScreenFlashNotificationOff()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xd2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "doScreenFlashNotificationOff: isScreenFlashNotificationEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    const-string v1, "FlashNotifController"

    invoke-static {v1, v0, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final getCameraId()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string p0, "Found valid camera, cameraId="

    const-string v0, "FlashNotifController"

    invoke-static {p0, v3, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCoverDisplayWindowManager()Landroid/view/WindowManager;
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string/jumbo v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    const-string v0, "FlashNotifController"

    if-nez v4, :cond_2

    const-string/jumbo p0, "coverDisplay is not found."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const-string/jumbo p0, "coverDisplay is not STATE_ON"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public final getScreenFlashColorPreference$2()I
    .locals 3

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const v0, 0x66ffff00

    const/4 v1, -0x2

    const-string/jumbo v2, "screen_flash_notification_color_global"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final prepareForCameraFlashNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FlashNotifController"

    const-string v2, "CameraAccessException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mTorchCallback:Lcom/android/server/accessibility/FlashNotificationsController$1;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public final removeFlashNotificationLocked(Ljava/lang/String;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    iget-object p0, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    if-eqz p0, :cond_2

    iget-object p1, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    const-string/jumbo p0, "removeFlashNotificationLocked: tag="

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlashNotifController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget-object v0, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .locals 8

    const-string v0, "FlashNotifController"

    const-string/jumbo v1, "requestStartFlashNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "service.camera.running"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const-string/jumbo v1, "service.camera.running is 1. Delay startFlashNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "settings_flash_notifications"

    invoke-static {v1, v5}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v5, -0x2

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "camera_flash_notification"

    invoke-static {v6, v7, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    iput-boolean v6, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v6, "screen_flash_notification"

    invoke-static {v1, v6, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v4

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    iget v1, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    if-ne v1, v4, :cond_3

    if-eqz v2, :cond_3

    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x12c

    invoke-virtual {v3, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo p0, "give some delay for flash notification"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void
.end method

.method public final startFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .locals 6

    iget v0, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    const-string v2, "FlashNotifController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startFlashNotification: type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsScreenFlashNotificationEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    if-nez v2, :cond_0

    const-string p0, "FlashNotifController"

    const-string p1, "Flash notification is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "service.camera.running"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string p0, "FlashNotifController"

    const-string/jumbo p1, "service.camera.running is still 1. block notification"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    if-eqz v2, :cond_2

    const-string p0, "FlashNotifController"

    const-string/jumbo p1, "Since camera for torch is opened, block notification."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    if-nez v2, :cond_3

    iget v2, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->prepareForCameraFlashNotification()V

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;->removeFlashNotificationLocked(Ljava/lang/String;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotificationLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->startNextFlashNotificationLocked()V

    goto :goto_2

    :cond_6
    const-string p0, "FlashNotifController"

    const-string/jumbo p1, "Unavailable flash notification type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    if-eqz v0, :cond_8

    const-string p0, "FlashNotifController"

    const-string p1, "Default type of flash notification can not work because previous flash notification is working"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationLocked(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final startFlashNotificationLocked(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startFlashNotificationLocked: type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    const-string v2, "FlashNotifController"

    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    if-nez v0, :cond_0

    const-string/jumbo p0, "startFlashNotificationLocked: flash notification cannot be started."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationRunning:Z

    const-string/jumbo v0, "mIsCameraFlashNotificationRunning true in startFlashNotificationLocked"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotificationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startFlashNotificationSequence(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 8

    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference$2()I

    move-result v5

    new-instance v7, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, p2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Ljava/lang/String;)V

    const/4 v4, 0x2

    move-object v3, p2

    move-object v6, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V

    const/4 p1, 0x0

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6, v7, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p2, "FlashNotifController"

    const-string/jumbo v0, "RemoteException"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return p1
.end method

.method public final startNextFlashNotificationLocked()V
    .locals 2

    const-string v0, "FlashNotifController"

    const-string/jumbo v1, "startNextFlashNotificationLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotificationLocked(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void
.end method

.method public final stopFlashNotification(Ljava/lang/String;)V
    .locals 2

    const-string v0, "FlashNotifController"

    const-string/jumbo v1, "stopFlashNotification: tag="

    invoke-static {v1, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->removeFlashNotificationLocked(Ljava/lang/String;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    if-eqz v1, :cond_0

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotificationLocked()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->startNextFlashNotificationLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopFlashNotificationLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    if-eqz v0, :cond_0

    const-string v0, "FlashNotifController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopFlashNotificationLocked: tag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    iget-object v2, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget-object v2, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    const-string v1, "FlashNotifController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "run canceled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    iget-object v3, v3, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object v1, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    iget-object v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object v1, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOff()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOff()V

    return-void
.end method
