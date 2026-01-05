.class public final synthetic Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;


# virtual methods
.method public final acceptTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .locals 0

    const/4 p0, 0x4

    iget p1, p1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
