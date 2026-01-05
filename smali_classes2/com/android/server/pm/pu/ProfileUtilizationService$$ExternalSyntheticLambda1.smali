.class public final synthetic Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/pm/pu/App;

    check-cast p2, Lcom/android/server/pm/pu/App;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pu/App;->compareTo(Lcom/android/server/pm/pu/App;)I

    move-result p0

    return p0
.end method
