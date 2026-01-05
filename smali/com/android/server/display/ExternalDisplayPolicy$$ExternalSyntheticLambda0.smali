.class public final synthetic Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/notifications/DisplayNotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/notifications/DisplayNotificationManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/notifications/DisplayNotificationManager;

    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "DisplayNotificationManager"

    const-string/jumbo v0, "onHighTemperatureExternalDisplayNotAllowed: mConnectedDisplayErrorHandlingEnabled is false"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x1040406

    const v1, 0x1080639

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(II)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    return-void
.end method
