.class public interface abstract Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# virtual methods
.method public abstract onFillRequestFailure(ILjava/lang/Throwable;)V
.end method

.method public abstract onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V
.end method

.method public abstract onSaveRequestFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
.end method

.method public abstract onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
.end method
