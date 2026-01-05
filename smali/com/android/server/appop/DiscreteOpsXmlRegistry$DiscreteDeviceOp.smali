.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAttributedOps:Landroid/util/ArrayMap;


# virtual methods
.method public final getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
