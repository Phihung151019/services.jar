.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/appop/AppOpsService;

    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    return-void
.end method
