.class public final Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;
.super Landroid/widget/ImageView;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public listener:Lcom/android/server/power/shutdown/AnimationPlayer;


# virtual methods
.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->listener:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method
