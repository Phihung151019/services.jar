.class public final Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;
.super Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

.field public final mImeDisplayId:I

.field public final mImePackageName:Ljava/lang/String;

.field public final mImeToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/inputmethod/AutofillSuggestionsController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/AutofillSuggestionsController;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->this$0:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    iput-object p3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeDisplayId:I

    iput-object p5, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeDisplayId:I

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->setHostDisplayId(I)V

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->this$0:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    iget-object v2, v1, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImeToken:Landroid/os/IBinder;

    if-ne v3, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostInputToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mCurHostInputToken:Landroid/os/IBinder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Host package name in the provide request=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "] doesn\'t match the IME package name=["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    const-string/jumbo p1, "]."

    invoke-static {v0, p0, p1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final onInlineSuggestionsSessionInvalidated()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInlineSuggestionsSessionInvalidated()V

    return-void
.end method

.method public final onInlineSuggestionsUnsupported()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInlineSuggestionsUnsupported()V

    return-void
.end method

.method public final onInputMethodFinishInput()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInputMethodFinishInput()V

    return-void
.end method

.method public final onInputMethodFinishInputView()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInputMethodFinishInputView()V

    return-void
.end method

.method public final onInputMethodShowInputRequested(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInputMethodShowInputRequested(Z)V

    return-void
.end method

.method public final onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public final onInputMethodStartInputView()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInputMethodStartInputView()V

    return-void
.end method
