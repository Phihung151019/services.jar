.class public final synthetic Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    iget p0, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    return p0
.end method
