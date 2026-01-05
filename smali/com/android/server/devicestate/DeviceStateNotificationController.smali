.class public Lcom/android/server/devicestate/DeviceStateNotificationController;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final CHANNEL_ID:Ljava/lang/String; = "DeviceStateManager"

.field static final INTENT_ACTION_CANCEL_STATE:Ljava/lang/String; = "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

.field static final NOTIFICATION_ID:I = 0x1

.field static final NOTIFICATION_TAG:Ljava/lang/String; = "DeviceStateManager"


# instance fields
.field public final mCancelStateRunnable:Ljava/lang/Runnable;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mNotificationInfoProvider:Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;Landroid/content/pm/PackageManager;Landroid/app/NotificationManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mCancelStateRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationInfoProvider:Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

    iput-object p5, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p6, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    move-object p4, p2

    new-instance p2, Landroid/content/IntentFilter;

    const-string/jumbo p3, "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "android.permission.CONTROL_DEVICE_STATE"

    const/4 p5, 0x4

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getNotificationInfos()Landroid/util/SparseArray;
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationInfoProvider:Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->refreshNotificationInfos(Ljava/util/Locale;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->mCachedNotificationInfos:Landroid/util/SparseArray;

    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    const-string/jumbo p1, "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mCancelStateRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "DeviceStateManager"

    const/4 v2, 0x4

    invoke-direct {v0, v1, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string/jumbo p2, "sys"

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    new-instance p2, Landroid/app/Notification$Action$Builder;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p7, p6}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_0
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0, p1}, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateNotificationController;Landroid/app/NotificationChannel;Landroid/app/Notification$Builder;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
