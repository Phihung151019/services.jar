.class public interface abstract Lcom/android/server/wm/SurfaceAnimator$Animatable;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract commitPendingTransaction()V
.end method

.method public abstract getAnimationLeash()Landroid/view/SurfaceControl;
.end method

.method public abstract getAnimationLeashParent()Landroid/view/SurfaceControl;
.end method

.method public abstract getParentSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public abstract getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract getSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public abstract getSurfaceHeight()I
.end method

.method public abstract getSurfaceWidth()I
.end method

.method public abstract getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
.end method

.method public abstract onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public abstract onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    return-void
.end method
