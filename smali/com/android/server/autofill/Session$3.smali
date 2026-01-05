.class public final Lcom/android/server/autofill/Session$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;

.field public val$focusedId:Ljava/lang/Object;

.field public val$response:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/Session$3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/Session$3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public autofill(Landroid/service/autofill/Dataset;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    check-cast v0, Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/autofill/Session;

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/android/server/autofill/Session;->fill(IILandroid/service/autofill/Dataset;I)V

    return-void
.end method

.method public onError()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/Session;

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/autofill/Session;

    iget-object v1, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    check-cast p0, Landroid/view/autofill/AutofillId;

    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v2, p0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    iput-object v2, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onInflate()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/autofill/Session;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/Session;->onShown(II)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/autofill/Session;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/autofill/Session$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatasetComputationContainer["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    const-string v1, ", autofillIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    const-string v1, ", mDatasets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    const-string v1, ", mAutofillIdToDatasetMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
