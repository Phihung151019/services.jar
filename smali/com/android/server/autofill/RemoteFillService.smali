.class final Lcom/android/server/autofill/RemoteFillService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/autofill/IAutoFillService;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConvertCredentialCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/service/autofill/IConvertCredentialCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFillCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/service/autofill/IFillCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsCredentialAutofillService:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFillRequestId:I

.field private mSaveCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/service/autofill/ISaveCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static $r8$lambda$0drfjd02UtjtR1pzZwZfvLOqncQ(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteFillService"

    const-string/jumbo v1, "calling onSaveRequest()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$4;

    invoke-direct {v1, v0}, Lcom/android/server/autofill/RemoteFillService$4;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mSaveCallback:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p0, Lcom/android/server/autofill/RemoteFillService$4;

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService$4;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    invoke-interface {p2, p1, p0}, Landroid/service/autofill/IAutoFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$1hw0FNOarmG_sgD3O92JoX9WtBE(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/content/IntentSender;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BpMSr5I3_9bplEhls6FgDTRLWpg(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    if-nez v0, :cond_0

    const-string/jumbo p0, "RemoteFillService"

    const-string p1, "Error calling RemoteFillService - service already unbound"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result p0

    invoke-interface {v0, p1, p3, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V

    return-void

    :cond_1
    const-string/jumbo p3, "RemoteFillService"

    const-string v0, "Error calling on fill request"

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of p3, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p3, :cond_2

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ICancellationSignal;

    invoke-static {p3}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    return-void

    :cond_2
    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p3, :cond_3

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ICancellationSignal;

    invoke-static {p0}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic $r8$lambda$PXtmzf6bY2FCvCgDzGBClXL04mI(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p4

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result p0

    invoke-interface {p1, p4, p3, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V

    return-void

    :cond_0
    const-string/jumbo p3, "RemoteFillService"

    const-string v0, "Error calling on fill request"

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of p3, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p3, :cond_1

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ICancellationSignal;

    invoke-static {p3}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    return-void

    :cond_1
    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p3, :cond_2

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ICancellationSignal;

    invoke-static {p0}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    if-eqz p5, :cond_0

    const/high16 p5, 0x400000

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    const/high16 v0, 0x100000

    or-int v5, p5, v0

    new-instance v7, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    const/high16 p0, -0x80000000

    iput p0, v2, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    iput-object p4, v2, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iput-object p2, v2, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v2, Lcom/android/server/autofill/RemoteFillService;->mIsCredentialAutofillService:Z

    return-void
.end method

.method public static dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "RemoteFillService"

    const-string v1, "Error requesting a cancellation"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelPendingJobs()V

    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final cancelCurrentRequest()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public final isCredentialAutofillService()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/autofill/RemoteFillService;->mIsCredentialAutofillService:Z

    return p0
.end method

.method public final maybeWrapWithWeakReference(Landroid/service/autofill/IFillCallback;)Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mFillCallback:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;

    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/os/IBinder;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFillRequest:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/IBinder;)V

    invoke-virtual {v3, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    const-wide/16 p1, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p0, v3, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v4}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    iput p2, v3, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;

    const/4 p2, 0x1

    invoke-direct {p1, v3, v4, v6, p2}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onFillRequest(Landroid/service/autofill/FillRequest;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFillRequest:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v0, v3}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "RemoteFillService"

    const-string/jumbo v0, "onNullBinding"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    check-cast p1, Landroid/service/autofill/IAutoFillService;

    :try_start_0
    invoke-interface {p1, p2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception calling onConnectedStateChanged("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "RemoteFillService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
