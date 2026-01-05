.class public final Lcom/android/server/input/debug/TouchpadSelectionView;
.super Landroid/widget/LinearLayout;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCurrentTouchpadId:I


# direct methods
.method public static $r8$lambda$Cgj4SGPa5QUH5PwFh27-vhrjlfM(Lcom/android/server/input/debug/TouchpadSelectionView;Landroid/content/Context;Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;Landroid/view/View;)V
    .locals 8

    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p1, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class p3, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object p3

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget v5, p3, v3

    invoke-virtual {p1, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x10200a

    invoke-virtual {v6, v7}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/android/server/input/debug/TouchpadSelectionView;->getTouchpadName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v5, v4, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/TouchpadSelectionView;Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public final getTouchpadName(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/view/InputDevice;

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
