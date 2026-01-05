.class public final Lcom/android/server/autofill/RemoteFillService$4;
.super Landroid/service/autofill/ISaveCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public val$save:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/RemoteFillService$4;->$r8$classId:I

    invoke-direct {p0}, Landroid/service/autofill/ISaveCallback$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/RemoteFillService$4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/service/autofill/ISaveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/CharSequence;)V
    .locals 1

    iget v0, p0, Lcom/android/server/autofill/RemoteFillService$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/ISaveCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/service/autofill/ISaveCallback;->onFailure(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Landroid/content/IntentSender;)V
    .locals 1

    iget v0, p0, Lcom/android/server/autofill/RemoteFillService$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/ISaveCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/service/autofill/ISaveCallback;->onSuccess(Landroid/content/IntentSender;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
