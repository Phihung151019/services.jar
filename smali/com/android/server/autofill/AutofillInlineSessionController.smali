.class public final Lcom/android/server/autofill/AutofillInlineSessionController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mComponentName:Landroid/content/ComponentName;

.field public final mHandler:Landroid/os/Handler;

.field public mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

.field public final mUiCallback:Lcom/android/server/autofill/Session$2;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/autofill/Session$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput p2, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUserId:I

    iput-object p3, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mLock:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUiCallback:Lcom/android/server/autofill/Session$2;

    return-void
.end method


# virtual methods
.method public final hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    :cond_0
    return-void
.end method

.method public final isImeShowing()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-nez v2, :cond_0

    iget-boolean p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeShowing:Z

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return v0
.end method

.method public final onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->destroySessionLocked()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    new-instance v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    iget-object v4, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mComponentName:Landroid/content/ComponentName;

    iget-object v10, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUiCallback:Lcom/android/server/autofill/Session$2;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget v3, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUserId:I

    iget-object v6, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mLock:Ljava/lang/Object;

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;-><init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;Lcom/android/server/autofill/Session$2;)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "onCreateInlineSuggestionsRequestLocked called: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillInlineSuggestionsRequestSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    iget-object p1, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0, v4, p1, v9}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;-><init>(Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    invoke-direct {p1, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;-><init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V

    invoke-virtual {v2, v3, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;)V

    return-void
.end method

.method public final requestImeToShowInlineSuggestionsLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
