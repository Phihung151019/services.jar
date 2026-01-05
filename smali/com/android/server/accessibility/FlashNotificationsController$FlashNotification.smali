.class public final Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mColor:I

.field public final mDeathRecipient:Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;

.field public final mForceStartScreenFlash:Z

.field public final mNotiType:I

.field public final mOffDuration:I

.field public final mOnDuration:I

.field public mRepeat:I

.field public final mTag:Ljava/lang/String;

.field public final mToken:Landroid/os/IBinder;

.field public final mType:I


# direct methods
.method public constructor <init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V

    const-string/jumbo p0, "alarm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x3

    if-nez p0, :cond_c

    const-string/jumbo p0, "preview"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p4, "screen_flash_notification_color_mode"

    const/4 p5, 0x0

    const/4 p6, -0x2

    invoke-static {p0, p4, p5, p6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo p7, "camera_flash_notification_app_list"

    invoke-static {p4, p7, p6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    const/4 v1, 0x1

    const/16 v2, 0x3b

    if-nez p7, :cond_1

    const-string/jumbo p7, "all"

    invoke-virtual {p7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p4, p7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    array-length p7, p4

    move v3, p5

    :goto_0
    if-ge v3, p7, :cond_3

    aget-object v4, p4, v3

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    move p4, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move p4, p5

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p7, "screen_flash_notification_color_apps"

    invoke-static {p1, p7, p6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    const/4 p7, 0x2

    if-nez p6, :cond_5

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p6, p1

    move v2, p5

    :goto_3
    if-ge v2, p6, :cond_5

    aget-object v3, p1, v2

    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, p5

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v3, p7

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz p0, :cond_7

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move p1, p5

    goto :goto_6

    :cond_7
    :goto_5
    move p1, v1

    :goto_6
    if-eqz p4, :cond_8

    if-eqz p1, :cond_8

    iput p2, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    goto :goto_7

    :cond_8
    if-eqz p4, :cond_9

    iput v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    goto :goto_7

    :cond_9
    if-eqz p1, :cond_a

    iput p7, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    goto :goto_7

    :cond_a
    iput p5, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    :goto_7
    if-ne p0, v1, :cond_b

    if-eqz p1, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, v3, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    :cond_b
    return-void

    :cond_c
    iput p2, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    iput-object p4, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;

    const/4 p1, 0x2

    const/4 p3, 0x0

    if-eq p2, p1, :cond_1

    const/4 p4, 0x3

    if-eq p2, p4, :cond_0

    const/16 p2, 0x15e

    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    const/16 p2, 0xfa

    iput p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    iput-boolean p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    return-void

    :cond_0
    const/16 p1, 0x1388

    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    return-void

    :cond_1
    const/16 p1, 0x2bc

    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    iput p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    iput-boolean p3, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    return-void
.end method
