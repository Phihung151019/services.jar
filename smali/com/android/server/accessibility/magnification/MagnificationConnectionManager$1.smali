.class public final Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    :goto_0
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationButton(I)V

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;->this$0:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    return-void
.end method
