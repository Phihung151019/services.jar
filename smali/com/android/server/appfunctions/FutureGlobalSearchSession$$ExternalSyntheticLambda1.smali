.class public final synthetic Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    check-cast p2, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/appsearch/GlobalSearchSession;->close()V

    :cond_0
    return-void
.end method
