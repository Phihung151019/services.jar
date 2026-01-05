.class public final Lcom/android/server/accessibility/FlashNotificationsController$3;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget-boolean v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsAlarming:Z

    if-eq v0, p1, :cond_2

    const-string/jumbo v0, "alarm state changed: "

    const-string v1, "FlashNotifController"

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    new-instance v1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference$2()I

    move-result v4

    const-string/jumbo v2, "alarm"

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsAlarming:Z

    :cond_2
    return-void
.end method
