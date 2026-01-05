.class public final synthetic Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iput p2, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFilterComplete(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/FillUi;

    iget p0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v1, v0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    iget-object v3, v0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    const-string v4, "FillUi"

    if-gtz p1, :cond_3

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "No dataset matches filter with "

    const-string p1, " chars"

    invoke-static {v1, p0, p1, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/AutoFillUI$1;->requestHideFillUi()V

    return-void

    :cond_3
    iget p1, v0, Lcom/android/server/autofill/ui/FillUi;->mMaxInputLengthForAutofill:I

    if-le v1, p1, :cond_5

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_4

    const-string/jumbo p0, "Not showing fill UI because user entered more than "

    const-string v0, " characters"

    invoke-static {p1, p0, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/AutoFillUI$1;->requestHideFillUi()V

    return-void

    :cond_5
    const/4 p1, 0x1

    iget-object v1, v0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v1, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-boolean v3, v0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v3, :cond_7

    :goto_1
    move v2, p1

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_a

    iget v3, v0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v3, :cond_8

    iput v2, v0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    move v3, p1

    goto :goto_2

    :cond_8
    move v3, v2

    :goto_2
    iget v4, v0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v4, :cond_9

    iput v2, v0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    goto :goto_1

    :cond_9
    move v2, v3

    goto :goto_4

    :cond_a
    iget-object v3, v0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iput v2, v0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iput v2, v0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget v4, v3, Landroid/graphics/Point;->x:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v7, :cond_b

    invoke-virtual {v7, v4, v5}, Landroid/view/View;->measure(II)V

    iget-object v7, v0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v7, v3}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    iget-object v8, v0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v8, v3}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v8

    or-int/2addr v7, v8

    goto :goto_3

    :cond_b
    move v7, v2

    :goto_3
    if-ge v2, v6, :cond_d

    iget-object v8, v1, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    iget-object v8, v8, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v8, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v8, v3}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v9

    or-int/2addr v7, v9

    iget v9, v0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-ge v2, v9, :cond_c

    invoke-virtual {v0, v8, v3}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v8

    or-int/2addr v7, v8

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v2

    or-int/2addr v2, v7

    iget-object v4, v0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_4

    :cond_e
    move v2, v7

    :goto_4
    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    :cond_f
    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result p1

    if-eq p1, p0, :cond_10

    iget-object p0, v0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_10
    :goto_5
    return-void
.end method
