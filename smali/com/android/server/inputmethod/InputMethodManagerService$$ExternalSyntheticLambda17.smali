.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic f$1:Lcom/android/server/inputmethod/ClientState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;->f$1:Lcom/android/server/inputmethod/ClientState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;->f$1:Lcom/android/server/inputmethod/ClientState;

    check-cast p1, Lcom/android/server/inputmethod/UserData;

    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    const-string v1, "InputMethodManagerService"

    const-string/jumbo v2, "onClientRemovedInternalLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-ne v1, p0, :cond_1

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 v7, 0x0

    const/16 v5, 0x16

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z

    iget-boolean v0, p1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    if-eqz v0, :cond_0

    iput-boolean v7, p1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AccessibilityManagerInternal;->unbindInput()V

    :cond_0
    iput-boolean v7, p1, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-ne v1, p0, :cond_1

    new-instance p0, Lcom/android/server/inputmethod/ImeBindingState;

    invoke-direct {p0, v0, v7, v0, v0}, Lcom/android/server/inputmethod/ImeBindingState;-><init>(Landroid/os/IBinder;ILcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;)V

    iput-object p0, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    :cond_1
    return-void
.end method
