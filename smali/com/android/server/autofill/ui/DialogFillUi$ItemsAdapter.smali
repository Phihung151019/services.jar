.class public final Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public final mAllItems:Ljava/util/List;

.field public final mFilteredItems:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/autofill/ui/DialogFillUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)V

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;->view:Landroid/view/View;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ItemsAdapter: [all="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mAllItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filtered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
