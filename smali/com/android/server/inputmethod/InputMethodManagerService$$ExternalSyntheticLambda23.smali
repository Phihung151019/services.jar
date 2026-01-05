.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;->f$1:Landroid/os/IBinder;

    iput-boolean p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;->f$2:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;->f$1:Landroid/os/IBinder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;->f$2:Z

    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "windowToken must not be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v5, v5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-ne v5, v1, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, p0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    monitor-exit v2

    return-void

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
