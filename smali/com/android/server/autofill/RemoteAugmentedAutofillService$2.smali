.class public final Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public final synthetic val$client:Landroid/view/autofill/IAutoFillManagerClient;

.field public final synthetic val$clientState:Landroid/os/Bundle;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$inlineSuggestionsCallback:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

.field public final synthetic val$onErrorCallback:Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

.field public final synthetic val$sessionId:I

.field public final synthetic val$targetActivity:Landroid/content/ComponentName;

.field public final synthetic val$targetActivityToken:Landroid/os/IBinder;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/os/Bundle;Landroid/view/autofill/IAutoFillManagerClient;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Landroid/view/autofill/AutofillId;Landroid/content/ComponentName;Landroid/os/IBinder;ILcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iput p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    iput-object p3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iput-object p5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    iput-object p6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivity:Landroid/content/ComponentName;

    iput-object p8, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivityToken:Landroid/os/IBinder;

    iput p9, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$userId:I

    iput-object p10, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$onErrorCallback:Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

    return-void
.end method


# virtual methods
.method public final autofill(Landroid/service/autofill/Dataset;I)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "Calling client autofill(): ids="

    const-string v2, "Calling client autofillContent(): id="

    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmCallbacks(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    move-result-object v1

    iget v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v3, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v5, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v5

    if-eq v5, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v5, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v17}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v1, v5}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v7

    move/from16 v1, p2

    invoke-static {v4, v1}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v6

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.view.autofill.extra.CLIENT_STATE"

    iget-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_1
    iget-object v4, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iget v5, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    sget v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    const-string/jumbo v1, "RemoteAugmentedAutofillService"

    const-string v2, "Error starting auth flow"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v2, v0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    iget-object v3, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmCallbacks(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    move-result-object v3

    iget v5, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmUriGrantsManager(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/AutofillUriGrantsManager;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivity:Landroid/content/ComponentName;

    iget-object v7, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivityToken:Landroid/os/IBinder;

    iget v8, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$userId:I

    invoke-virtual {v1, v4, v7, v8, v5}, Lcom/android/server/autofill/AutofillUriGrantsManager;->grantUriPermissions(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/content/ClipData;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "RemoteAugmentedAutofillService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", content="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    invoke-interface {v2, v3, v1, v5}, Landroid/view/autofill/IAutoFillManagerClient;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    iget-object v5, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v5}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "RemoteAugmentedAutofillService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", values="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v1, v2, v3, v5, v4}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    :goto_4
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v2, v0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    sget v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    const-string/jumbo v0, "RemoteAugmentedAutofillService"

    const-string v1, "Encounter exception autofilling the values"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public final onError()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$onErrorCallback:Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;->run()V

    return-void
.end method

.method public final onInflate()V
    .locals 0

    return-void
.end method

.method public final startIntentSender(Landroid/content/IntentSender;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p0, p1, v0}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    const-string/jumbo p0, "RemoteAugmentedAutofillService"

    const-string/jumbo p1, "RemoteException starting intent sender"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
