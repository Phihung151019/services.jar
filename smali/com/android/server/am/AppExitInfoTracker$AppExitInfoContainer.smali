.class public final Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mExitInfos:Ljava/util/ArrayList;

.field public final mMaxCapacity:I

.field public mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mMaxCapacity:I

    return-void
.end method


# virtual methods
.method public addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V
    .locals 7

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getProcessStateSummary()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    if-nez v2, :cond_1

    iget-object v2, v3, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$smfindAndRemoveFromSparse2dArray(IILandroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, v3, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$smfindAndRemoveFromSparse2dArray(IILandroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    :cond_2
    iget-object v0, v3, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mMaxCapacity:I

    if-gt p1, v0, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_6

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    :cond_4
    move-object v0, v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_7
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final appendTraceIfNecessaryLocked(Ljava/io/File;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfosLocked(IILjava/util/List;)V

    iget-object p0, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ApplicationExitInfo;

    :goto_0
    iget-object p2, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    iget-object p1, v0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-virtual {p0, p1}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final destroyLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getExitInfosLocked(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_6

    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    if-lez p1, :cond_1

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v3

    if-eq v3, p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-gtz p1, :cond_7

    iget-object p1, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_3
    if-ge v3, v2, :cond_9

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mExitInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v4}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v5

    if-ne v5, p1, :cond_8

    iget-object v5, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    iget-object p0, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-gtz p2, :cond_a

    iget-object p0, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    invoke-interface {p3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_a
    iget-object p0, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, p2

    :goto_5
    if-ge v0, p0, :cond_b

    iget-object p1, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->removeLast()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iget-object p0, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    invoke-interface {p3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
