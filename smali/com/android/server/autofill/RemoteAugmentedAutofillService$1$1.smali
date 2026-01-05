.class public final Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;
.super Landroid/service/autofill/augmented/IFillCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    invoke-direct {p0}, Landroid/service/autofill/augmented/IFillCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    return-void
.end method

.method public final isCompleted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;-><init>(Landroid/os/ICancellationSignal;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$cancellationRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSuccess(Ljava/util/List;Landroid/os/Bundle;Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    iget-object v1, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmCallbacks(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v2, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    iput-object v3, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    iget-object v4, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iget v5, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$sessionId:I

    iget-object v6, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget-object v9, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    iget-object v10, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedValue:Landroid/view/autofill/AutofillValue;

    iget-object v11, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsCallback:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    iget-object v12, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iget-object v13, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$onErrorCallback:Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

    iget-object v14, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$remoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iget v15, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$userId:I

    iget-object v2, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityComponent:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityToken:Landroid/os/IBinder;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    invoke-static/range {v4 .. v17}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$mmaybeRequestShowInlineSuggestions(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Landroid/view/autofill/IAutoFillManagerClient;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/content/ComponentName;Landroid/os/IBinder;)V

    if-nez p3, :cond_0

    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;->this$1:Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
