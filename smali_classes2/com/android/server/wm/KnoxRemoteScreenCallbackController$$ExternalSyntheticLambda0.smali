.class public final synthetic Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(I[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda0;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda0;->f$0:I

    iget-object p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda0;->f$1:[Z

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    aput-boolean p1, p0, v2

    return p1

    :cond_0
    return v2
.end method
