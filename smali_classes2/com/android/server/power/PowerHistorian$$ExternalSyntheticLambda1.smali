.class public final synthetic Lcom/android/server/power/PowerHistorian$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-class p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;

    check-cast p1, Lcom/android/server/power/PowerHistorian$Record;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerHistorian$WakeUpRecord;

    return-object p0
.end method
