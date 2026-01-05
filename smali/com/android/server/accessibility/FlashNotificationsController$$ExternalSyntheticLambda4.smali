.class public final synthetic Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;->$r8$classId:I

    check-cast p1, Lcom/android/server/accessibility/FlashNotificationsController;

    packed-switch p0, :pswitch_data_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "FlashNotifController"

    const-string/jumbo v0, "showScreenNotificationOverlayViewMainThread"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x7df

    const/4 v2, -0x1

    const/16 v5, 0x138

    const/4 v6, -0x3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p2, 0x1

    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/2addr v0, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iput-object v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    iget-object v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    invoke-interface {v0, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->getCoverDisplayWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    if-nez v3, :cond_1

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    iput-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    invoke-interface {v0, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V

    :cond_1
    return-void

    :pswitch_0
    check-cast p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
