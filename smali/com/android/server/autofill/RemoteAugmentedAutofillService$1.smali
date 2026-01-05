.class public final Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public final synthetic val$activityComponent:Landroid/content/ComponentName;

.field public final synthetic val$activityToken:Landroid/os/IBinder;

.field public final synthetic val$cancellationRef:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$client:Landroid/view/autofill/IAutoFillManagerClient;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$focusedValue:Landroid/view/autofill/AutofillValue;

.field public final synthetic val$inlineSuggestionsCallback:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

.field public final synthetic val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field public final synthetic val$onErrorCallback:Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

.field public final synthetic val$remoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field public final synthetic val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$requestTime:J

.field public final synthetic val$service:Landroid/service/autofill/augmented/IAugmentedAutofillService;

.field public final synthetic val$sessionId:I

.field public final synthetic val$taskId:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/service/autofill/augmented/IAugmentedAutofillService;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Landroid/view/autofill/IAutoFillManagerClient;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$service:Landroid/service/autofill/augmented/IAugmentedAutofillService;

    iput p3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$sessionId:I

    iput p4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$taskId:I

    iput-object p5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityComponent:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedValue:Landroid/view/autofill/AutofillValue;

    iput-wide p8, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestTime:J

    iput-object p10, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iput-object p11, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsCallback:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    iput-object p12, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iput-object p13, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$onErrorCallback:Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

    iput-object p14, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$remoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iput p15, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$userId:I

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityToken:Landroid/os/IBinder;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$cancellationRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 11

    const-string/jumbo p1, "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$service:Landroid/service/autofill/augmented/IAugmentedAutofillService;

    iget v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$sessionId:I

    iget v3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$taskId:I

    iget-object v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityComponent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    iget-object v6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedValue:Landroid/view/autofill/AutofillValue;

    iget-wide v7, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestTime:J

    iget-object v9, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    new-instance v10, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;

    invoke-direct {v10, p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;)V

    invoke-interface/range {v0 .. v10}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    return-void
.end method
