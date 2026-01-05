.class public Lcom/android/server/display/notifications/DisplayNotificationManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mConnectedDisplayErrorHandlingEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field public final mInjector:Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;

.field public mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    iput-object p2, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mInjector:Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;

    check-cast p3, Lcom/android/server/display/notifications/DisplayNotificationManager$1;

    iget-object p1, p3, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$statsService:Lcom/android/server/display/ExternalDisplayStatsService;

    iput-object p1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    return-void
.end method


# virtual methods
.method public final createErrorNotification(II)Landroid/app/Notification;
    .locals 7

    const-string v0, "DisplayNotificationManager"

    iget-object v1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040408

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x1010543

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v3

    move v4, v1

    goto :goto_1

    :cond_0
    :goto_0
    throw v4
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "colorError attribute is not found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    const-string v5, "ALERTS"

    invoke-direct {v3, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p0

    const-wide/16 v5, 0x7530

    invoke-virtual {p0, v5, v6}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string/jumbo p1, "err"

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final onCableNotCapableDisplayPort()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "DisplayNotificationManager"

    const-string/jumbo v0, "onCableNotCapableDisplayPort: mConnectedDisplayErrorHandlingEnabled is false"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v1, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayError(I)V

    const v0, 0x1040407

    const v1, 0x1080d78

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(II)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public final onDisplayPortLinkTrainingFailure()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "DisplayNotificationManager"

    const-string/jumbo v0, "onDisplayPortLinkTrainingFailure: mConnectedDisplayErrorHandlingEnabled is false"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v1, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayError(I)V

    const v0, 0x1040407

    const v1, 0x1080d78

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(II)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public final onHotplugConnectionError()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "DisplayNotificationManager"

    const-string/jumbo v0, "onHotplugConnectionError: mConnectedDisplayErrorHandlingEnabled is false"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v1, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayError(I)V

    const v0, 0x1040407

    const v1, 0x1080d78

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(II)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public final sendErrorNotification(Landroid/app/Notification;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "DisplayNotificationManager"

    if-nez p0, :cond_0

    const-string p0, "Can\'t sendErrorNotification: NotificationManager is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method
