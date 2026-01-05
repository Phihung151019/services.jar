.class public final Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public final synthetic val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mReceiver:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    return-void
.end method
