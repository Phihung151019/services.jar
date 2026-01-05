.class public final Lcom/android/server/wm/DisplayContent$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# virtual methods
.method public final onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    return-void
.end method
