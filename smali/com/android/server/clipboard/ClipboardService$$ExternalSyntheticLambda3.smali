.class public final synthetic Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/clipboard/ClipboardService;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Landroid/content/ClipData;

.field public final synthetic f$3:Landroid/view/textclassifier/TextClassifier;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/clipboard/ClipboardService;

    iput-object p2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$2:Landroid/content/ClipData;

    iput-object p4, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$3:Landroid/view/textclassifier/TextClassifier;

    iput p5, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$4:I

    iput p6, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/clipboard/ClipboardService;

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$2:Landroid/content/ClipData;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$3:Landroid/view/textclassifier/TextClassifier;

    iget v4, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$4:I

    iget p0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$5:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v5, v1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v5

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v5}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/textclassifier/TextLinks$TextLink;

    :goto_0
    invoke-virtual {v8}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    invoke-virtual {v8, v9}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/textclassifier/TextLinks$TextLink;->getConfidenceScore(Ljava/lang/String;)F

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v11, v12

    if-lez v12, :cond_1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, v0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {v0, v4, p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v8

    if-nez v8, :cond_3

    monitor-exit v7

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    iget-object v10, v8, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-ne v10, v2, :cond_5

    invoke-virtual {v0, v8, v6, v5, v3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    invoke-virtual {v0, v4}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_5

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    if-eq v11, v4, :cond_4

    const-string/jumbo v12, "no_sharing_into_profile"

    invoke-virtual {v0, v11, v12}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(ILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v0, v11, p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v12, v11, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/content/ClipData;->getItemCount()I

    move-result v12

    if-lez v12, :cond_4

    iget-object v12, v11, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v12, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v0, v11, v6, v5, v3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    monitor-exit v7

    return-void

    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
