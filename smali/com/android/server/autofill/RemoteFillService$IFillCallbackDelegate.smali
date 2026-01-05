.class public final Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCallbackWeakRef:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/IFillCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/service/autofill/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V

    :cond_0
    return-void
.end method

.method public final onFailure(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/IFillCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/service/autofill/IFillCallback;->onFailure(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/IFillCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/service/autofill/IFillCallback;->onSuccess(Landroid/service/autofill/FillResponse;)V

    :cond_0
    return-void
.end method
