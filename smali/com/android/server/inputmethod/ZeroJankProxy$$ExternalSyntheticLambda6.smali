.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    iput p3, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object v1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;->f$1:Lcom/android/internal/inputmethod/IInputMethodClient;

    iget v4, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;->f$2:I

    iget-object p0, v0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    move-object v3, p0

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodRestrictedByMDM()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_1

    const-string p0, "InputMethodManagerService"

    const-string/jumbo v0, "showInputMethodPickerFromClient is not enabled on automotive"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-class v8, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v6

    invoke-virtual {v3, v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v3, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p0, :cond_3

    iget p0, p0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    :goto_0
    move v5, p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    iget-object p0, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IIII)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v8

    :goto_2
    return-void

    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
