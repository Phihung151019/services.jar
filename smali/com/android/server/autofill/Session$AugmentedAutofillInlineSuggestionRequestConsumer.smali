.class public final Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mCurrentValue:Landroid/view/autofill/AutofillValue;

.field public final mFocusedId:Landroid/view/autofill/AutofillId;

.field public final mIsAllowlisted:Z

.field public final mMode:I

.field public final mSessionWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-boolean p3, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mIsAllowlisted:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mMode:I

    iput-object p4, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    move-object v8, p1

    check-cast v8, Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget-object p1, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/autofill/Session;

    const-string p1, "AugmentedAutofillInlineSuggestionRequestConsumer:"

    invoke-static {v0, p1}, Lcom/android/server/autofill/Session;->-$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mFocusedId:Landroid/view/autofill/AutofillId;

    iget-boolean v4, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mIsAllowlisted:Z

    iget v1, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mMode:I

    iget-object v7, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    iget-object p0, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v8, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    iget v1, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    move-object v4, v3

    iget v3, v0, Lcom/android/server/autofill/Session;->taskId:I

    move-object v5, v4

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    move-object v6, v5

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v6}, Landroid/view/autofill/AutofillId;->withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    move-result-object v6

    new-instance v9, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v9, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    new-instance v10, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v11, v10, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v11

    iget v12, v0, Lcom/android/server/autofill/Session;->userId:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
