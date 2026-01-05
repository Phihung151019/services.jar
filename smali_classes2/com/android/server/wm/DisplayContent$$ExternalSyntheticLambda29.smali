.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$0:I

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$0:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;->f$1:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method
