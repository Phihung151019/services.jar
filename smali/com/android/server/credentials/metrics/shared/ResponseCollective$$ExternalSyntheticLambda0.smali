.class public final synthetic Lcom/android/server/credentials/metrics/shared/ResponseCollective$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method
