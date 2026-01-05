.class public final Lcom/android/server/inputmethod/AutofillSuggestionsController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

.field public mCurHostInputToken:Landroid/os/IBinder;

.field public mInlineSuggestionsRequestCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

.field public mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    return-void
.end method


# virtual methods
.method public final performOnCreateInlineSuggestionsRequest()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;

    iget-object v3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    iget-object v4, v3, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    iget v6, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    iget-object v5, v3, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mPackageName:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/AutofillSuggestionsController$InlineSuggestionsRequestCallbackDecorator;-><init>(Lcom/android/server/inputmethod/AutofillSuggestionsController;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;Ljava/lang/String;ILandroid/os/IBinder;)V

    iget-object p0, v3, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    iget-object p0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v0, p0, v2}, Lcom/android/internal/inputmethod/IInputMethod;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    goto :goto_0

    :cond_1
    move-object v3, p0

    const-string p0, "AutofillSuggestionsController"

    const-string/jumbo v0, "No IME connected! Abandoning inline suggestions creation request."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    iput-object p0, v3, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    :goto_1
    return-void
.end method
