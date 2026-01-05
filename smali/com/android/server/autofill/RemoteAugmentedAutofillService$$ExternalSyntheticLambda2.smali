.class public final synthetic Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public final synthetic f$1:Landroid/view/autofill/IAutoFillManagerClient;

.field public final synthetic f$10:Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

.field public final synthetic f$11:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field public final synthetic f$12:I

.field public final synthetic f$13:Landroid/os/IBinder;

.field public final synthetic f$14:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/ComponentName;

.field public final synthetic f$5:Landroid/view/autofill/AutofillId;

.field public final synthetic f$6:Landroid/view/autofill/AutofillValue;

.field public final synthetic f$7:J

.field public final synthetic f$8:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field public final synthetic f$9:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/IAutoFillManagerClient;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$1:Landroid/view/autofill/IAutoFillManagerClient;

    iput p3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$3:I

    iput-object p5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$4:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$5:Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$6:Landroid/view/autofill/AutofillValue;

    iput-wide p8, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$7:J

    iput-object p10, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$8:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iput-object p11, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$9:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    iput-object p12, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$10:Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

    iput-object p13, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$11:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iput p14, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$12:I

    iput-object p15, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$13:Landroid/os/IBinder;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$14:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iget-object v12, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$1:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$2:I

    iget v4, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$3:I

    iget-object v5, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$4:Landroid/content/ComponentName;

    iget-object v6, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$5:Landroid/view/autofill/AutofillId;

    iget-object v7, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$6:Landroid/view/autofill/AutofillValue;

    iget-wide v8, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$7:J

    iget-object v10, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$8:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget-object v11, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$9:Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    iget-object v13, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$10:Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

    iget-object v14, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$11:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iget v15, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$12:I

    iget-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$13:Landroid/os/IBinder;

    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;->f$14:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v16, p1

    check-cast v16, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    sget v17, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v17, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object/from16 v18, v0

    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    move-object/from16 v19, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v18}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/service/autofill/augmented/IAugmentedAutofillService;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Landroid/view/autofill/IAutoFillManagerClient;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v12, v0}, Landroid/view/autofill/IAutoFillManagerClient;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V

    return-object v17
.end method
