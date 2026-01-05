.class public final synthetic Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AlertWindowNotification;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AlertWindowNotification;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AlertWindowNotification;

    iput-boolean p2, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AlertWindowNotification;

    iget-boolean p0, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean v1, v0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    iget-object v2, v0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v3, v0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
