.class public final Lcom/android/server/autofill/ui/SaveUi$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/SaveUi;

.field public final synthetic val$info:Landroid/service/autofill/SaveInfo;

.field public final synthetic val$isUpdate:Z

.field public final synthetic val$yesButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/TextView;Landroid/service/autofill/SaveInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$info:Landroid/service/autofill/SaveInfo;

    iput-boolean p4, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$isUpdate:Z

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    const p2, 0x104021d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$info:Landroid/service/autofill/SaveInfo;

    new-instance v0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p2}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$isUpdate:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    const p2, 0x1040233

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    const p2, 0x104022c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    new-instance p2, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
