.class public final Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public final synthetic val$actions:[Ljava/lang/String;

.field public final synthetic val$corner:I

.field public final synthetic val$displayId:I

.field public final synthetic val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;[Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    iput-object p3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$actions:[Ljava/lang/String;

    iput p4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$displayId:I

    iput p5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$corner:I

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$actions:[Ljava/lang/String;

    aget-object p1, v2, p1

    iget v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$displayId:I

    iget v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$corner:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->performCornerAction(IILjava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iget v0, p1, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    iput v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return v2
.end method
