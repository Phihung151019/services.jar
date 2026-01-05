.class public final Lcom/android/server/inputmethod/InputMethodBindingController$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodBindingController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    iget-object v0, v0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mInlineSuggestionsRequestCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInlineSuggestionsSessionInvalidated()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Lcom/android/server/inputmethod/InputMethodBindingController$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$1;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mInlineSuggestionsRequestCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInlineSuggestionsSessionInvalidated()V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
