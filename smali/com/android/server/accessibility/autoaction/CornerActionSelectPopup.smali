.class public final Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAnchorView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public final mPopup:Landroid/widget/PopupMenu;

.field public final mReceiver:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x33

    const/16 v1, 0x35

    const/16 v2, 0x53

    const/16 v3, 0x55

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mReceiver:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

    const-string v2, "CornerActionSelectPopup corner : "

    const-string/jumbo v3, "usibi"

    invoke-static {p2, v2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x7d9

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    aget p2, v0, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 p2, 0x120

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v0, 0x20000

    or-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 p2, 0x3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    if-ne p1, p2, :cond_0

    const p1, 0x1030128

    goto :goto_0

    :cond_0
    const p1, 0x103012b

    :goto_0
    new-instance p2, Landroid/widget/PopupMenu;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    invoke-direct {p2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    const-string/jumbo p1, "android.intent.action.SCREEN_OFF"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
