.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/Session;

    invoke-virtual {p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/Session;

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0}, Lcom/android/server/autofill/Session;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/Session;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->requestFallbackFromFillDialog()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
