.class public final Lcom/android/server/inputmethod/IInputMethodClientInvoker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mIsProxy:Z

.field public final mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;


# direct methods
.method public constructor <init>(Lcom/android/internal/inputmethod/IInputMethodClient;ZLandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    iput-boolean p2, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    iput-object p3, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static logRemoteException(Landroid/os/RemoteException;)V
    .locals 4

    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPC failed at IInputMethodClientInvoker#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    const-string v1, "<bottom of call stack>"

    goto :goto_0

    :cond_0
    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final onBindAccessibilityServiceInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    :cond_0
    return-void

    :goto_0
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    :cond_1
    throw p0
.end method

.method public final onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    :cond_0
    return-void

    :goto_0
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    :cond_1
    throw p0
.end method

.method public final onStartInputResultInternal(Lcom/android/internal/inputmethod/InputBindResult;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    :cond_0
    return-void

    :goto_0
    iget-object p1, p1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    :cond_1
    throw p0
.end method

.method public final setActive(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setActive(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZI)V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setImeTraceEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda8;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZI)V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibilityInternal(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setImeVisibilityInternal(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2

    const/16 v0, 0x4e

    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method
