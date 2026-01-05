.class public final Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

.field public mDisplayId:I


# virtual methods
.method public final onRotationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->mDisplayId:I

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->onRotationChanged(II)V

    :cond_0
    return-void
.end method
