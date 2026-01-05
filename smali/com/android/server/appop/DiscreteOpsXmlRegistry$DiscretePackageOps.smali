.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mPackageOps:Landroid/util/ArrayMap;


# virtual methods
.method public final getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
