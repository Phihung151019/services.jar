.class public final synthetic Lcom/android/server/pm/pu/App$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/art/model/DexoptStatus$DexContainerFileDexoptStatus;

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptStatus$DexContainerFileDexoptStatus;->getDexContainerFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
