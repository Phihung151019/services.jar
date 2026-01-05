.class public final Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;
.super Landroid/widget/Filter;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    iget-object v0, v0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    iget-object v0, v0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p2, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    iget-object p2, p2, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object p2, p1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    invoke-direct {p2, p1}, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    iput-object p2, p1, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    :cond_1
    iget-object p1, p1, Lcom/android/server/autofill/ui/DialogFillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

    iget-object p2, p1, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object p2, p2, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p1, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object p2, p2, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0, v1}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
