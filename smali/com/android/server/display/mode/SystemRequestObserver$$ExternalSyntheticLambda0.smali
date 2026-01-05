.class public final synthetic Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(I[ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$1:[Z

    iput-object p3, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$1:[Z

    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    check-cast p1, Landroid/os/IBinder;

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    aget-boolean v0, v1, p2

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    aput-boolean p0, v1, p2

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
