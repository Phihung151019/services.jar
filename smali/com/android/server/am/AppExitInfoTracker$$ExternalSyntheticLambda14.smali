.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[Z

.field public final synthetic f$4:Ljava/lang/Integer;

.field public final synthetic f$5:Ljava/lang/Integer;

.field public final synthetic f$6:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker;II[ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$1:I

    iput p3, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$3:[Z

    iput-object p5, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$4:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$5:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$6:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$1:I

    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$3:[Z

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$4:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$5:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$6:Ljava/lang/Long;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, p2, v7}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfosLocked(IILjava/util/List;)V

    iget-object p1, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, p2

    :goto_0
    if-ge v2, p1, :cond_3

    iget-object v7, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v7}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v8

    if-eq v8, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    aput-boolean p1, v3, p2

    invoke-virtual {v0, v7, v4, v5, p0}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v6
.end method
