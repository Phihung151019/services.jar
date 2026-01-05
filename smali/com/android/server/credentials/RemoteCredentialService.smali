.class public Lcom/android/server/credentials/RemoteCredentialService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/credentials/ICredentialProviderService;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.credentials.CredentialProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p0, v2, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, v2, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V
    .locals 2

    const-string v0, "CredentialManager"

    if-nez p0, :cond_0

    const-string p0, "Error dispatching a cancellation - Signal is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "Error dispatching a cancellation"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    const-string v0, "CredentialManager"

    const-string/jumbo v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    invoke-interface {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V

    :cond_0
    return-void
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final handleExecutionResponse(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of p1, p2, Ljava/util/concurrent/TimeoutException;

    const/4 v0, 0x0

    const-string v1, "CredentialManager"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Remote provider response timed tuo for: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ICancellationSignal;

    invoke-static {p1}, Lcom/android/server/credentials/RemoteCredentialService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    invoke-interface {p0, v0}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(Ljava/lang/Exception;)V

    return-void

    :cond_2
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cancellation exception for remote provider: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ICancellationSignal;

    invoke-static {p1}, Lcom/android/server/credentials/RemoteCredentialService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    invoke-interface {p0, v0}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(Ljava/lang/Exception;)V

    return-void

    :cond_4
    instance-of p1, p2, Landroid/credentials/GetCredentialException;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p0, :cond_7

    check-cast p2, Landroid/credentials/GetCredentialException;

    invoke-interface {p0, p2}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(Ljava/lang/Exception;)V

    return-void

    :cond_5
    instance-of p1, p2, Landroid/credentials/CreateCredentialException;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p0, :cond_7

    check-cast p2, Landroid/credentials/CreateCredentialException;

    invoke-interface {p0, p2}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(Ljava/lang/Exception;)V

    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p0, :cond_7

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p0, p2}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(Ljava/lang/Exception;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-nez v0, :cond_0

    const-string p0, "CredentialManager"

    const-string p1, "Callback is not set"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-nez v0, :cond_0

    const-string p0, "CredentialManager"

    const-string p1, "Callback is not set"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->onBindingDied(Landroid/content/ComponentName;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "binding died for: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-nez v0, :cond_0

    const-string p0, "CredentialManager"

    const-string p1, "Callback is not set"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/ClearCredentialStateRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final setCallback(Lcom/android/server/credentials/ProviderSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    return-void
.end method
