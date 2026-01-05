.class public final synthetic Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

.field public final synthetic f$1:Landroid/app/NotificationChannel;

.field public final synthetic f$2:Landroid/app/Notification$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateNotificationController;Landroid/app/NotificationChannel;Landroid/app/Notification$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationChannel;

    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$2:Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateNotificationController;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;->f$2:Landroid/app/Notification$Builder;

    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const-string v1, "DeviceStateManager"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
