.class public final synthetic Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/Dataset;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/service/autofill/Dataset;

    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI$1;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/service/autofill/FillResponse;

    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    iget-object v0, p1, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v0, p1, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/Session;

    iget-object p1, p1, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    iget-object p1, p1, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/Session;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, v2, p0, v1}, Lcom/android/server/autofill/Session;->authenticate(ILandroid/content/IntentSender;Landroid/os/Bundle;I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
