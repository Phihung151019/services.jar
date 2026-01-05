.class public final Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
.super Lcom/android/server/pm/PackageDexOptimizer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final adjustDexoptFlags(I)I
    .locals 0

    or-int/lit8 p0, p1, 0x40

    return p0
.end method

.method public final adjustDexoptNeeded(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    return p1
.end method
