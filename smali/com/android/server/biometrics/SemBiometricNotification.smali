.class public final Lcom/android/server/biometrics/SemBiometricNotification;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAuthenticatorType:I

.field public final mContext:Landroid/content/Context;

.field public mIcon:I

.field public mMessage:Ljava/lang/String;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotificationTag:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mPackageName:Ljava/lang/String;

    const-string p1, "BackgroundBiometricsNotification_"

    const-string/jumbo v0, "_"

    invoke-static {p3, p1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final cancelNotification()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cancelNotification start, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    const-string/jumbo v2, "SemBiometricNotification"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final postNotification(Landroid/content/Intent;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "postNotification start, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    const-string/jumbo v2, "SemBiometricNotification"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v6, v4

    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v0, 0x2

    iget v6, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    if-ne v6, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const v7, 0x1040e8f

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const v7, 0x1040e8e

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    const v0, 0x1080b35

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mIcon:I

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    if-ne v6, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const v7, 0x1040e8b

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const v7, 0x1040e8a

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    const v0, 0x1080b34

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mIcon:I

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Unknown authenticator type, "

    invoke-static {v6, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const/high16 v3, 0x44000000    # 512.0f

    invoke-static {v0, v5, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "SECURITY"

    invoke-direct {v0, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mIcon:I

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v3, "sys"

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v6, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "postNotification: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string/jumbo p0, "postNotification: No content title or message"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
