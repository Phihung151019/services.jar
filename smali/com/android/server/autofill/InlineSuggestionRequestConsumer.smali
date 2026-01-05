.class public final Lcom/android/server/autofill/InlineSuggestionRequestConsumer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

.field public final mViewStateWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mViewStateWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget-object v0, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mAssistDataReceiverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    iget-object p0, p0, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->mViewStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    if-nez v0, :cond_0

    const-string p0, "InlineSuggestionRequestConsumer"

    const-string/jumbo p1, "assistDataReceiver is null when accepting new inline suggestionrequests"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "InlineSuggestionRequestConsumer"

    const-string/jumbo p1, "view state is null when accepting new inline suggestion requests"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2

    const-string v1, "AutofillSession"

    const-string/jumbo v2, "handleInlineSuggestionRequest(): inline suggestion request received"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object v1, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    iput-object p1, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    const/high16 p1, 0x10000

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
