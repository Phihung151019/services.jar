.class public final Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/DialogFillUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/DialogFillUi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object v0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object v0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    const v1, 0x1040218

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "count"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object v0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040219

    invoke-static {v0, v1, v2}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object p0, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
