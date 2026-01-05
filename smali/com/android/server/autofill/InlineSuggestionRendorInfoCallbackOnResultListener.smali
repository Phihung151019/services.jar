.class public final Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final mFocusedId:Landroid/view/autofill/AutofillId;

.field public final mInlineSuggestionsRequestConsumer:Lcom/android/server/autofill/InlineSuggestionRequestConsumer;

.field public final mRequestIdCopy:I

.field public final mSessionWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;ILcom/android/server/autofill/InlineSuggestionRequestConsumer;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mRequestIdCopy:I

    iput-object p3, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mInlineSuggestionsRequestConsumer:Lcom/android/server/autofill/InlineSuggestionRequestConsumer;

    iput-object p1, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mSessionWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mFocusedId:Landroid/view/autofill/AutofillId;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mSessionWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    if-nez v0, :cond_0

    const-string p0, "InlineSuggestionRendorInfoCallbackOnResultListener"

    const-string/jumbo p1, "Session is null before trying to call onResult"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_1

    const-string p0, "InlineSuggestionRendorInfoCallbackOnResultListener"

    const-string/jumbo p1, "Session is destroyed before trying to call onResult"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v3, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mFocusedId:Landroid/view/autofill/AutofillId;

    iget-object v4, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mInlineSuggestionsRequestConsumer:Lcom/android/server/autofill/InlineSuggestionRequestConsumer;

    iget p0, p0, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;->mRequestIdCopy:I

    new-instance v5, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0, v4, p0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/InlineSuggestionRequestConsumer;I)V

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
