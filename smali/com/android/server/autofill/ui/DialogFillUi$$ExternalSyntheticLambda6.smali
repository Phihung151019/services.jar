.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/ui/DialogFillUi;

.field public final synthetic f$1:Landroid/service/autofill/FillResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$1:Landroid/service/autofill/FillResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$1:Landroid/service/autofill/FillResponse;

    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;->f$1:Landroid/service/autofill/FillResponse;

    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
