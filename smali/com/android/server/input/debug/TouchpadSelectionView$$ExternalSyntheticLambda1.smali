.class public final synthetic Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/debug/TouchpadSelectionView;

.field public final synthetic f$1:Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/TouchpadSelectionView;Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/TouchpadSelectionView;

    iput-object p2, p0, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/TouchpadSelectionView;

    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget v0, v0, Lcom/android/server/input/debug/TouchpadSelectionView;->mCurrentTouchpadId:I

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
