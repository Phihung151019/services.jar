.class public final Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final mFocusedId:Landroid/view/autofill/AutofillId;

.field public final mRequestAugmentedAutofill:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;

.field public final mSessionWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object p3, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mRequestAugmentedAutofill:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    const-string v1, "AugmentedAutofillInlineSuggestionRendererOnResultListener:"

    invoke-static {v0, v1}, Lcom/android/server/autofill/Session;->-$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v2, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mFocusedId:Landroid/view/autofill/AutofillId;

    iget-object p0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;->mRequestAugmentedAutofill:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;

    invoke-virtual {v0, v2, p0, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
