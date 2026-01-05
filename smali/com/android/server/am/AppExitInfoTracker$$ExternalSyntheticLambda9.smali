.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(IILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;->f$0:I

    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;->f$0:I

    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;->f$1:I

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;->f$2:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1, p2, p0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfosLocked(IILjava/util/List;)V

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
