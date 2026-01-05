.class public final synthetic Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/FlashNotificationsController;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V

    return-void
.end method
