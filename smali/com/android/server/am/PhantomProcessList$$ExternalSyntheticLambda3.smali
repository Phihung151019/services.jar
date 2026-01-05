.class public final synthetic Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/server/am/PhantomProcessRecord;

    const-string/jumbo p0, "Trimming Orphan processes"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    return-void
.end method
