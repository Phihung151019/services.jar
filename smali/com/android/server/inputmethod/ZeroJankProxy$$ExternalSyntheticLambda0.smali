.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/view/inputmethod/CursorAnchorInfo;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    iput p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$3:Landroid/view/inputmethod/CursorAnchorInfo;

    iput-object p5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$6:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object v2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    iget v5, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$2:I

    iget-object v1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$3:Landroid/view/inputmethod/CursorAnchorInfo;

    iget-object v6, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;->f$6:Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    iget-object p0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    move-object v4, p0

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-boolean v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const-string v0, "InputMethodManagerService"

    const-string v1, "Connectionless stylus handwriting mode unsupported by IME."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v8, v3}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "InputMethodManagerService"

    const-string v2, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_UNSUPPORTED"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit p0

    goto/16 :goto_6

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    :goto_1
    move p0, v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    const/4 v0, 0x2

    if-eqz p0, :cond_3

    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    :try_start_3
    iget-object v9, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v9, v2, v7}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$3;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService$3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    move-object v5, v1

    move-object v1, v4

    move-object v4, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_2
    :try_start_4
    const-string p0, "InputMethodManagerService"

    const-string/jumbo v1, "startConnectionlessStylusHandwriting() fail"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v8, v0}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    :try_start_6
    const-string v0, "InputMethodManagerService"

    const-string v1, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_OTHER"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Delegator doesn\'t match UID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :cond_3
    move-object v5, v1

    move-object v1, v4

    move-object v4, v8

    :goto_5
    const/4 v3, 0x0

    move v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    move-result p0

    if-nez p0, :cond_4

    :try_start_7
    invoke-interface {v8, v0}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object p0, v0

    const-string v0, "InputMethodManagerService"

    const-string v1, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_OTHER"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_4
    :goto_6
    return-void

    :goto_7
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method
