.class public final synthetic Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/DialogFillUi;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iput p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFilterComplete(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;->f$1:I

    iget-boolean v1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-gtz p1, :cond_3

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const-string/jumbo p0, "No dataset matches filter with "

    const-string p1, " chars"

    const-string v2, "DialogFillUi"

    invoke-static {v1, p0, p1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->onCanceled()V

    return-void

    :cond_3
    iget-object p1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result v2

    iget v3, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    if-le v2, v3, :cond_4

    iget-object v1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result p1

    if-eq p1, p0, :cond_5

    iget-object p0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_5
    :goto_2
    return-void
.end method
